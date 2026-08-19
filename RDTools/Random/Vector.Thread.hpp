/* ---- Begin: Random/Vector.Thread.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_VECTOR_THREAD_HPP
#define TOOLS_RANDOM_VECTOR_THREAD_HPP 6

/** Vector functions with fixed min/max value with multithreading **/
/**
 * @file Vector.Thread.hpp
 * @brief Provides multi-threaded functions for generating vectors of random numbers.
 *
 * This header implements parallel random number generation using std::jthread.
 * Unlike the single-threaded Base versions, these functions split the workload
 * across multiple threads to accelerate generation for large datasets.
 *
 * @section thread_safety Thread Safety & Generator Strategy
 * To avoid data races on the non-thread-safe Mersenne Twister engine, each worker
 * thread creates its own LOCAL generator instance. The local generators are seeded
 * deterministically from the master generator to ensure reproducibility while
 * maintaining parallel performance.
 *
 * @warning For small counts (<1000), the overhead of thread creation may exceed
 *          the benefit. Use single-threaded versions (Vector.Base.hpp) for small datasets.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * // Generate 1M integers using 8 threads
 * auto data = Random::RandomNumsTVI(1'000'000, -100, 100, 8);
 * @endcode
 */

#include "_Common.hpp"
#include <thread>

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for multi-threaded vector generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a vector of random integers using multiple threads.
     *
     * Splits the work into chunks and processes them in parallel. Each thread
     * uses a locally-seeded Twister64 to avoid contention.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param ValueCount Total number of elements to generate. Default: 10.
     * @param ValueMin Lower bound of the range (inclusive). Default: -10.
     * @param ValueMax Upper bound of the range (inclusive). Default: 10.
     * @param Threads Number of worker threads to use. Default: 4.
     * @return vec<Int> A vector containing 'Count' random integers.
     * @note If Min > Max, they are automatically swapped.
     */
    template <rdt::Types::Integer Int = i32>
    vec<Int> RandomNumsTV(
        const idx ValueCount = 10,
        Int ValueMin = -10, Int ValueMax = 10,
        const idx Threads = 4
    ) {
        CheckRange(ValueMin, ValueMax);

        vec<Int> Result;
        Result.resize(ValueCount);

        if (ValueCount == 0 || Threads == 0) return Result;

        // Master generator for seeding workers
        RdDevice Rd;
        Twister64 MasterGen(Rd());

        const idx ChunkSize = (ValueCount + Threads - 1) / Threads;
        DistInt<Int> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(Threads);

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, ValueCount);
            if(Start >= ValueCount) break;

            // Seed local generator deterministically from master
            auto LocalSeed = MasterGen();

            Workers.emplace_back([&Result, Start, End, &NResult, LocalSeed](const std::stop_token& st) {
                Twister64 LocalGen(LocalSeed);
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = NResult(LocalGen);
                }
            });
        }

        return Result;
    }

    /**
     * @brief Generates a vector of random floating-point numbers using multiple threads.
     *
     * @tparam Real The floating-point type (must be f32, f64, or fld).
     * @param ValueCount Total number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @param Threads Number of worker threads. Default: 4.
     * @param Rounding Decimal precision for rounding. Default: 0.
     * @return vec<Real> A vector containing 'Count' random floats/doubles.
     */
    template <rdt::Types::Float Real = f32>
    vec<Real> RandomNumsTV(
        const idx ValueCount = 10,
        Real ValueMin = -10, Real ValueMax = 10,
        const u32 Rounding = 0,
        const idx Threads = 4
    ) {
        CheckRange(ValueMin, ValueMax);

        vec<Real> Result;
        Result.resize(ValueCount);

        if (ValueCount == 0 || Threads == 0) return Result;

        // Master generator for seeding workers
        RdDevice Rd;
        Twister64 MasterGen(Rd());

        const idx ChunkSize = (ValueCount + Threads - 1) / Threads;
        DistReal<Real> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(Threads);

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, ValueCount);
            if(Start >= ValueCount) break;

            // Seed local generator deterministically from master
            auto LocalSeed = MasterGen();

            Workers.emplace_back([&Result, Start, End, &NResult, LocalSeed, &Rounding](const std::stop_token& st) {
                Twister64 LocalGen(LocalSeed);
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = Round(NResult(LocalGen), Rounding);
                }
            });
        }

        return Result;
    }
}

/** Integer **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded integer vector generation.
 */
namespace rdt::Random {
    /**
     * @brief Multi-threaded generation of 32-bit integer vector.
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound. Default: -10.
     * @param ValueMax Upper bound. Default: 10.
     * @param Threads Worker count. Default: 4.
     * @return vec<i32>
     */
    inline vec<i32> RandomNumsTVI(
        const idx ValueCount = 10,
        i32 ValueMin = -10, i32 ValueMax = 10,
        const idx Threads = 4
    ) {
        return RandomNumsTV<i32>(
            ValueCount, ValueMin, ValueMax, Threads
        );
    }

    /**
     * @brief Multi-threaded generation of 64-bit integer vector.
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound. Default: -10.
     * @param ValueMax Upper bound. Default: 10.
     * @param Threads Worker count. Default: 4.
     * @return vec<i64>
     */
    inline vec<i64> RandomNumsTVL(
        const idx ValueCount = 10,
        i64 ValueMin = -10, i64 ValueMax = 10,
        const idx Threads = 4
    ) {
        return RandomNumsTV<i64>(
            ValueCount, ValueMin, ValueMax, Threads
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded float vector generation.
 */
namespace rdt::Random {
    /**
     * @brief Multi-threaded generation of f32 vector.
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound. Default: -10.
     * @param ValueMax Upper bound. Default: 10.
     * @param Threads Worker count. Default: 4.
     * @param Rounding Decimal precision. Default: 0.
     * @return vec<f32>
     */
    inline vec<f32> RandomNumsTVF(
        const idx ValueCount = 10,
        f32 ValueMin = -10, f32 ValueMax = 10,
        const idx Threads = 4,
        const u32 Rounding = 0
    ) {
        return RandomNumsTV<f32>(
            ValueCount, ValueMin, ValueMax, Rounding, Threads
        );
    }

    /**
     * @brief Multi-threaded generation of f64 vector.
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound. Default: -10.
     * @param ValueMax Upper bound. Default: 10.
     * @param Threads Worker count. Default: 4.
     * @param Rounding Decimal precision. Default: 0.
     * @return vec<f64>
     */
    inline vec<f64> RandomNumsTVD(
        const idx ValueCount = 10,
        f64 ValueMin = -10, f64 ValueMax = 10,
        const idx Threads = 4,
        const u32 Rounding = 0
    ) {
        return RandomNumsTV<f64>(
            ValueCount, ValueMin, ValueMax, Rounding, Threads
        );
    }
}

#endif

/* ---- End: Random/Vector.Thread.hpp ---- */
