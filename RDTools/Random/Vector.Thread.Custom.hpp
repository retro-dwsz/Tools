/* ---- Begin: Random/Vector.Thread.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_VECTOR_THREAD_CUSTOM_HPP
#define TOOLS_RANDOM_VECTOR_THREAD_CUSTOM_HPP 7

/** Vector functions with fixed min/max value with custom twister and multithreading **/
/**
 * @file Vector.Thread.Custom.hpp
 * @brief Provides multi-threaded vector generation using a user-provided custom generator.
 *
 * This header combines the flexibility of custom PRNG engines with parallel execution.
 * The user-provided generator is used ONLY for seeding worker threads sequentially.
 * Each worker then creates its own LOCAL Twister engine (matching the master's type)
 * to avoid data races and contention during generation.
 *
 * @section thread_safety Thread Safety & Generator Strategy
 * - Master generator (`Gen`) is accessed ONLY in the calling thread for seeding.
 * - Each worker creates a local `WorkerTwister` seeded deterministically from master.
 * - No mutexes needed; zero contention during the generation phase.
 * - Worker twister type is automatically deduced from the master via `std::decay_t<decltype(Gen)>`.
 *
 * @warning For small counts (<1000), the overhead of thread creation may exceed
 *          the benefit. Use single-threaded versions (Vector.Custom.hpp) for small datasets.
 *
 * @note Reproducibility depends entirely on the state of 'Gen' passed by the caller.
 *       The same seed + same thread count will always produce identical results.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * // Generate 1M integers using 8 threads with custom 32-bit twister
 * Twister32 gen(123123);
 * auto data = Random::RandomNumsTVI(gen, 1'000'000, -100, 100, 8);
 *
 * // Generate 500K doubles with rounding using custom 64-bit twister
 * Twister64 gen64(42);
 * auto dbls = Random::RandomNumsTVD(gen64, 500'000, -3.14, 3.14, 4, 8);
 * @endcode
 */

#include "_Common.hpp"
#include <thread>

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for multi-threaded vector generation with custom engines.
 */
namespace rdt::Random {
    template <rdt::Types::Integer Int = i32>
    vec<Int> RandomNumsTV(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        Int ValueMin = -10, Int ValueMax = 10,
        const idx Threads = 4
    ) {
        CheckRange(ValueMin, ValueMax);

        // Early return guard
        if (ValueCount == 0 || Threads == 0) return {};

        vec<Int> Result;
        Result.resize(ValueCount); // Initialize with zeros

        vec<std::jthread> Workers;
        const idx ChunkSize = (ValueCount + Threads - 1) / Threads; // Ceiling division
        auto NResult = DistInt(ValueMin, ValueMax);

        // Deduce worker twister type from master generator
        using WorkerTwister = std::decay_t<decltype(Gen)>;

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, ValueCount);

            if(Start >= ValueCount) break;

            // Seed local generator SEQUENTIALLY from master (thread-safe)
            auto LocalSeed = Gen();

            Workers.emplace_back([&Result, Start, End, NResult, LocalSeed](const std::stop_token &st) mutable {
                // Local random generator per thread to avoid contention
                WorkerTwister LocalGen(LocalSeed);
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = NResult(LocalGen);
                }
            });
        }

        // Wait for all threads to complete
        for(auto& worker : Workers) {
            if(worker.joinable()) {
                worker.join();
            }
        }

        return Result;
    }

    template <rdt::Types::Float Real = f32>
    vec<Real> RandomNumsTV(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        Real ValueMin = -10, Real ValueMax = 10,
        const u32 Rounding = 0,
        const idx Threads = 4
    ) {
        CheckRange(ValueMin, ValueMax);

        vec<Real> Result;
        Result.resize(ValueCount); // Initialize with zeros

        vec<std::jthread> Workers;
        const idx ChunkSize = (ValueCount + Threads - 1) / Threads; // Ceiling division
        auto NResult = DistReal(ValueMin, ValueMax);

        // Deduce worker twister type from master generator
        using WorkerTwister = std::decay_t<decltype(Gen)>;

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, ValueCount);

            if(Start >= ValueCount) break;

            // Seed local generator SEQUENTIALLY from master (thread-safe)
            auto LocalSeed = Gen();

            Workers.emplace_back([&Result, Start, End, NResult, LocalSeed, Rounding](const std::stop_token &st) mutable {
                // Local random generator per thread to avoid contention
                WorkerTwister LocalGen(LocalSeed);
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = Round(NResult(LocalGen), Rounding);
                }
            });
        }

        // Wait for all threads to complete
        for(auto& worker : Workers) {
            if(worker.joinable()) {
                worker.join();
            }
        }

        return Result;
    }
}

/** Integer **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded integer vector generation with custom engines.
 */
namespace rdt::Random {
    /**
     * @brief Multi-threaded generation of i32 vector with custom engine.
     * @return vec<i32>
     */
    inline vec<i32> RandomNumsTVI(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        i32 ValueMin = -10, i32 ValueMax = 10,
        const idx Threads = 4
    ) {
        return RandomNumsTV<i32>(
            Gen, ValueCount, ValueMin, ValueMax, Threads
        );
    }

    /**
     * @brief Multi-threaded generation of i64 vector with custom engine.
     * @return vec<i64>
     */
    inline vec<i64> RandomNumsTVL(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        i64 ValueMin = -10, i64 ValueMax = 10,
        const idx Threads = 4
    ) {
        return RandomNumsTV<i64>(
            Gen, ValueCount, ValueMin, ValueMax, Threads
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded float vector generation with custom engines.
 */
namespace rdt::Random {
    /**
     * @brief Multi-threaded generation of f32 vector with custom engine.
     * @return vec<f32>
     */
    inline vec<f32> RandomNumsTVF(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        f32 ValueMin = -10, f32 ValueMax = 10,
        const idx Threads = 4,
        const u32 Rounding = 0
    ) {
        return RandomNumsTV<f32>(
            Gen, ValueCount, ValueMin, ValueMax, Rounding, Threads
        );
    }

    /**
     * @brief Multi-threaded generation of f64 vector with custom engine.
     * @return vec<f64>
     */
    inline vec<f64> RandomNumsTVD(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        f64 ValueMin = -10, f64 ValueMax = 10,
        const idx Threads = 4,
        const u32 Rounding = 0
    ) {
        return RandomNumsTV<f64>(
            Gen, ValueCount, ValueMin, ValueMax, Rounding, Threads
        );
    }
}

#endif

/* ---- End: Random/Vector.Thread.Custom.hpp ---- */
