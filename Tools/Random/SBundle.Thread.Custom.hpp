/* ---- Begin: Random/SBundle.Thread.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_SBUNDLE_THREAD_CUSTOM_HPP
#define TOOLS_RANDOM_SBUNDLE_THREAD_CUSTOM_HPP 14

/** Vector in vector functions with fixed min/max value vectors and random sub-vector element count with custom twister and multithreading **/
/**
 * @file SBundle.Thread.Custom.hpp
 * @brief Provides multi-threaded scattered bundle generation using a user-provided custom generator.
 *
 * This header combines ragged array generation with parallel execution and external
 * PRNG control. Each sub-vector has a randomly determined size within [ValueCountMin, ValueCountMax].
 * Work distribution uses an atomic work-stealing approach: each worker thread grabs the next
 * available sub-vector index dynamically, ensuring balanced load even when sub-vector sizes
 * vary significantly.
 *
 * @section thread_safety Thread Safety & Generator Strategy
 * - The user-provided generator (`Gen`) is accessed ONLY sequentially in the calling thread
 *   to derive seeds for workers. It is NOT shared across threads during generation.
 * - Each worker creates its own LOCAL Twister engine (type deduced from master via
 *   `std::decay_t<decltype(Gen)>`) seeded deterministically from the master.
 * - No mutexes needed; zero contention during the generation phase.
 *
 * @note Sub-vector sizes are pre-calculated sequentially before spawning workers to ensure
 *       deterministic size distribution regardless of thread count.
 *
 * @warning Reproducibility depends entirely on the state of 'Gen' passed by the caller.
 *          The same seed + same thread count will always produce identical results.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace ToolsExperimental;
 *
 * // Generate 100 ragged sub-vectors (size 10-50 each) using 8 threads with custom generator
 * Twister64 myGen(42);
 * auto data = Random::RandomNumsTSBI(myGen, 100, 10, 50, -100, 100, 8);
 *
 * // Auto-detect hardware concurrency (Thread = 0)
 * Twister32 gen32(12345);
 * auto ragged = Random::RandomNumsTSBF(gen32, 50, 5, 20, -1.0f, 1.0f, 2, 0);
 * @endcode
 */

#include "_Common.hpp"
#include <thread>
#include <atomic>

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for multi-threaded scattered bundle generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a ragged 2D vector of random integers using multiple threads and a custom generator.
     *
     * Uses atomic work-stealing for load balancing. Each worker gets a locally-seeded
     * Twister engine matching the type of the provided master generator.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector (inclusive). Default: 10.
     * @param ValueCountMax Max elements per sub-vector (inclusive). Default: 30.
     * @param ValueMin Lower bound of value range (inclusive). Default: -10.
     * @param ValueMax Upper bound of value range (inclusive). Default: 10.
     * @param Thread Number of worker threads. 0 = hardware_concurrency(). Default: 0.
     * @return Bundle<Int> A ragged 2D vector with varying sub-vector sizes.
     * @note If Min > Max or CountMin > CountMax, they are automatically swapped.
     */
    template <Tools::Types::Integer Int = i32>
    Bundle<Int> RandomNumsTSB(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        Int ValueMin = -10, Int ValueMax = 10,
        const idx Thread = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMax);

        Bundle<Int> Result;
        Result.resize(SubVectorCount);

        if (SubVectorCount == 0) return Result;

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if (NumThreads == 0) {
            NumThreads = std::max<idx>(1, std::thread::hardware_concurrency());
        }

        DistInt<Int> NResult(ValueMin, ValueMax);

        // Pre-calculate all counts first (sequential, deterministic sizing)
        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(ValueCountMin, ValueCountMax);
            for (idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Workers;
        Workers.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        // Deduce worker twister type from master generator
        using WorkerTwister = std::decay_t<decltype(Gen)>;

        for (idx t = 0; t < NumThreads; ++t) {
            // Derive seed sequentially from master generator
            auto LocalSeed = Gen();

            Workers.emplace_back(
                [&Result, &CurrentIdx, &Counts, SubVectorCount, NResult, LocalSeed](const std::stop_token& st) mutable {
                // Local random generator per thread to avoid contention
                WorkerTwister LocalGen(LocalSeed);

                while (!st.stop_requested()) {
                    const idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if (i >= SubVectorCount) break;

                    for (idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(NResult(LocalGen));
                    }
                }
            });
        }

        return Result;
    }

    /**
     * @brief Generates a ragged 2D vector of random floating-point numbers using multiple threads and a custom generator.
     *
     * @tparam Real The floating-point type (must be f32, f64, or fld).
     * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector. Default: 10.
     * @param ValueCountMax Max elements per sub-vector. Default: 30.
     * @param ValueMin Lower bound of value range. Default: -10.
     * @param ValueMax Upper bound of value range. Default: 10.
     * @param Thread Worker count. 0 = hardware_concurrency(). Default: 0.
     * @param Rounding Decimal precision for rounding. Default: 0.
     * @return Bundle<Real> A ragged 2D vector.
     */
    template <Tools::Types::Float Real = f32>
    Bundle<Real> RandomNumsTSB(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        Real ValueMin = -10, Real ValueMax = 10,
        const u32 Rounding = 0,
        const idx Thread = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMax);

        Bundle<Real> Result;
        Result.resize(SubVectorCount);

        if (SubVectorCount == 0) return Result;

        idx NumThreads = Thread;
        if (NumThreads == 0) {
            NumThreads = std::max<idx>(1, std::thread::hardware_concurrency());
        }

        DistReal<Real> NResult(ValueMin, ValueMax);

        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(ValueCountMin, ValueCountMax);
            for (idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Workers;
        Workers.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        // Deduce worker twister type from master generator
        using WorkerTwister = std::decay_t<decltype(Gen)>;

        for (idx t = 0; t < NumThreads; ++t) {
            auto LocalSeed = Gen();

            Workers.emplace_back(
                [&Result, &CurrentIdx, &Counts, SubVectorCount, NResult, LocalSeed, Rounding](const std::stop_token& st) mutable {
                // Local random generator per thread to avoid contention
                WorkerTwister LocalGen(LocalSeed);

                while (!st.stop_requested()) {
                    const idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if (i >= SubVectorCount) break;

                    for (idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Round(NResult(LocalGen), Rounding));
                    }
                }
            });
        }

        return Result;
    }
}

namespace Tools::Random {
    inline Bundle<i32> RandomNumsTSBI(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        i32 ValueMin = -10, i32 ValueMax = 10,
        const idx Thread = 0
    ) {
        return RandomNumsTSB<i32>(
            Gen,
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Thread
        );
    }

    inline Bundle<i64> RandomNumsTSBL(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        i64 ValueMin = -10, i64 ValueMax = 10,
        const idx Thread = 0
    ) {
        return RandomNumsTSB<i64>(
            Gen,
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Thread
        );
    }
}

namespace Tools::Random {
    inline Bundle<f32> RandomNumsTSBF(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        f32 ValueMin = -10, f32 ValueMax = 10,
        const u32 Rounding = 0,
        const idx Thread = 0
    ) {
        return RandomNumsTSB<f32>(
            Gen,
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Rounding,
            Thread
        );
    }

    inline Bundle<f64> RandomNumsTSBD(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        f64 ValueMin = -10, f64 ValueMax = 10,
        const u32 Rounding = 0,
        const idx Thread = 0
    ) {
        return RandomNumsTSB<f64>(
            Gen,
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Rounding,
            Thread
        );
    }
}

#endif

/* ---- End: Random/SBundle.Thread.Custom.hpp ---- */
