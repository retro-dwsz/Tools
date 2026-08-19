/* ---- Begin: Random/SBundle.Thread.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_SBUNDLE_THREAD_HPP
#define TOOLS_RANDOM_SBUNDLE_THREAD_HPP 13

/** Vector in vector functions with fixed min/max value vectors and random sub-vector element count with multithreading **/
/**
 * @file SBundle.Thread.hpp
 * @brief Provides multi-threaded functions for generating scattered bundles (ragged 2D vectors).
 *
 * This header implements parallel generation of ragged arrays where each sub-vector has
 * a randomly determined size within [CountMin, CountMax]. Work distribution uses an
 * atomic work-stealing approach: each worker thread grabs the next available sub-vector
 * index dynamically, ensuring balanced load even when sub-vector sizes vary significantly.
 *
 * @section thread_safety Thread Safety & Generator Strategy
 * Each worker thread creates its own LOCAL Twister engine seeded from the master generator.
 * This eliminates data races on the non-thread-safe Mersenne Twister while maintaining
 * deterministic reproducibility for the same initial seed.
 *
 * @note Sub-vector sizes are pre-calculated sequentially before spawning workers to ensure
 *       deterministic size distribution regardless of thread count.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * // Generate 100 ragged sub-vectors (size 10-50 each) using all hardware threads
 * auto data = Random::RandomNumsTSBI(100, 10, 50, -100, 100, 0);
 * @endcode
 */

#include "_Common.hpp"
#include <thread>
#include <atomic>

/**
 * @namespace Tools::Random
 * @brief Generic template functions for multi-threaded scattered bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a ragged 2D vector of random integers using multiple threads.
     *
     * Uses atomic work-stealing for load balancing across threads. Each worker gets
     * a locally-seeded Twister64 to avoid contention.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector (inclusive). Default: 10.
     * @param ValueCountMax Max elements per sub-vector (inclusive). Default: 30.
     * @param ValueMin Lower bound of value range (inclusive). Default: -10.
     * @param ValueMax Upper bound of value range (inclusive). Default: 10.
     * @param Thread Number of worker threads. 0 = hardware_concurrency(). Default: 0.
     * @return Bundle<Int> A ragged 2D vector with varying sub-vector sizes.
     * @note If Min > Max or CountMin > CountMax, they are automatically swapped.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsTSB(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        Int ValueMin = -10, Int ValueMax = 10,
        const idx Thread = 4
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMax);

        Bundle<Int> Result;
        Result.resize(SubVectorCount);

        if (SubVectorCount == 0) return Result;

        RdDevice Rd;
        TwisterFor<Int> MasterGen(Rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max<idx>(1, std::thread::hardware_concurrency());
        }

        DistInt<Int> NResult(ValueMin, ValueMax);

        // Pre-calculate all counts first (sequential, deterministic sizing)
        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(ValueCountMin, ValueCountMax);
            for(idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(MasterGen);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Workers;
        Workers.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        for(idx t = 0; t < NumThreads; ++t) {
            auto LocalSeed = MasterGen();

            Workers.emplace_back(
                [&Result, &CurrentIdx, &Counts, SubVectorCount, NResult, LocalSeed](const std::stop_token& st) mutable {
                TwisterFor<Int> LocalGen(LocalSeed);
                while(!st.stop_requested()) {
                    const idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(NResult(LocalGen));
                    }
                }
            });
        }

        return Result;
    }

    /**
     * @brief Generates a ragged 2D vector of random floating-point numbers using multiple threads.
     *
     * @tparam Real The floating-point type (must be f32, f64, or fld).
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector. Default: 10.
     * @param ValueCountMax Max elements per sub-vector. Default: 30.
     * @param ValueMin Lower bound of value range. Default: -10.
     * @param ValueMax Upper bound of value range. Default: 10.
     * @param Thread Worker count. 0 = hardware_concurrency(). Default: 0.
     * @param Rounding Decimal precision for rounding. Default: 0.
     * @return Bundle<Real> A ragged 2D vector.
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsTSB(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        Real ValueMin = -10, Real ValueMax = 10,
        const u32 Rounding = 0,
        const idx Thread = 4
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMax);

        Bundle<Real> Result;
        Result.resize(SubVectorCount);

        if (SubVectorCount == 0) return Result;

        RdDevice Rd;
        TwisterFor<Real> MasterGen(Rd());

        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max<idx>(1, std::thread::hardware_concurrency());
        }

        DistReal<Real> NResult(ValueMin, ValueMax);

        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(ValueCountMin, ValueCountMax);
            for(idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(MasterGen);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Workers;
        Workers.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        for(idx t = 0; t < NumThreads; ++t) {
            auto LocalSeed = MasterGen();

            Workers.emplace_back(
                [&Result, &CurrentIdx, &Counts, SubVectorCount, NResult, LocalSeed, Rounding](const std::stop_token& st) mutable {
                TwisterFor<Real> LocalGen(LocalSeed);
                while(!st.stop_requested()) {
                    const idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Round(NResult(LocalGen), Rounding));
                    }
                }
            });
        }

        return Result;
    }
}

/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded integer scattered bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Multi-threaded ragged 2D i32 bundle generation.
     * Uses Twister32 per worker for optimal performance.
     */
    inline Bundle<i32> RandomNumsTSBI(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        i32 ValueMin = -10, i32 ValueMax = 10,
        const idx Thread = 0
    ) {
        return RandomNumsTSB<i32>(
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Thread
        );
    }

    /**
     * @brief Multi-threaded ragged 2D i64 bundle generation.
     * Uses Twister64 per worker.
     */
    inline Bundle<i64> RandomNumsTSBL(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        i64 ValueMin = -10, i64 ValueMax = 10,
        const idx Thread = 0
    ) {
        return RandomNumsTSB<i64>(
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Thread
        );
    }
}

/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded float scattered bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Multi-threaded ragged 2D f32 bundle generation.
     * Uses Twister32 per worker.
     */
    inline Bundle<f32> RandomNumsTSBF(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        f32 ValueMin = -10, f32 ValueMax = 10,
        const u32 Rounding = 0,
        const idx Thread = 0
    ) {
        return RandomNumsTSB<f32>(
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax, Rounding,
            Thread
        );
    }

    /**
     * @brief Multi-threaded ragged 2D f64 bundle generation.
     * Uses Twister64 per worker.
     */
    inline Bundle<f64> RandomNumsTSBD(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        f64 ValueMin = -10, f64 ValueMax = 10,
        const u32 Rounding = 0,
        const idx Thread = 0
    ) {
        return RandomNumsTSB<f64>(
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax, Rounding,
            Thread
        );
    }
}

#endif

/* ---- End: Random/SBundle.Thread.hpp ---- */
