/* ---- Begin: Random/Bundle.Thread.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_BUNDLE_THREAD_HPP
#define TOOLS_RANDOM_BUNDLE_THREAD_HPP 10

/** Vector in vector functions with fixed min/max value with multithreading **/
/**
 * @file Bundle.Thread.hpp
 * @brief Provides multi-threaded functions for generating 2D vectors (bundles) with fixed dimensions.
 *
 * This header implements parallel bundle generation using std::jthread. Work is distributed
 * at the sub-vector level (row-level parallelism), where each thread processes specific
 * rows in a round-robin fashion to ensure balanced workload distribution.
 *
 * @section thread_safety Thread Safety & Generator Strategy
 * Each worker thread creates its own LOCAL generator seeded from the master generator.
 * This eliminates data races on the non-thread-safe Mersenne Twister engine while
 * maintaining deterministic reproducibility for the same seed.
 *
 * @warning For small bundles (e.g., < 4 sub-vectors or < 100 elements each), threading
 *          overhead may exceed benefits. Consider using Bundle.Base.hpp for small datasets.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * // Generate a 100x1000 matrix using 8 threads
 * auto grid = Random::RandomNumsTBI(100, 1000, 0, 255, 8);
 * @endcode
 */

#include "_Common.hpp"
#include <thread>

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for multi-threaded bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a 2D vector of random integers using multiple threads.
     *
     * Distributes sub-vectors across threads in round-robin fashion. Each thread
     * uses a locally-seeded Twister64 to avoid contention.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
     * @param ValueCountPerVec Elements per sub-vector. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @param Threads Number of worker threads. Default: 4.
     * @return Bundle<Int> A 2D vector with dimensions [SubVectorCount][Count].
     * @note If Min > Max, they are automatically swapped.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsTB(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        Int ValueMin = -10, Int ValueMax = 10,
        const idx Threads = 4
    ) {
        CheckRange(ValueMin, ValueMax);

        Bundle<Int> Result;
        Result.resize(SubVectorCount);
        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(ValueCountPerVec);
        }

        if (SubVectorCount == 0 || ValueCountPerVec == 0 || Threads == 0) return Result;

        RdDevice Rd;
        TwisterFor<Int> MasterGen(Rd());
        DistInt<Int> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(Threads);

        for(idx t = 0; t < Threads; t++) {
            auto LocalSeed = MasterGen();

            Workers.emplace_back(
                [&Result, t, Threads, SubVectorCount, ValueCountPerVec, NResult, LocalSeed](const std::stop_token& st) mutable {
                TwisterFor<Int> LocalGen(LocalSeed);
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < ValueCountPerVec; j++) {
                        Result[i][j] = NResult(LocalGen);
                    }
                }
            });
        }

        return Result;
    }

    /**
     * @brief Generates a 2D vector of random floating-point numbers using multiple threads.
     *
     * @tparam Real The floating-point type (must be f32, f64, or fld).
     * @param SubVectorCount Number of rows. Default: 4.
     * @param ValueCountPerVec Elements per row. Default: 10.
     * @param ValueMin Lower bound. Default: -10.
     * @param ValueMax Upper bound. Default: 10.
     * @param Threads Worker count. Default: 4.
     * @param Rounding Decimal precision. Default: 0.
     * @return Bundle<Real>
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsTB(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        Real ValueMin = -10, Real ValueMax = 10,
        const u32 Rounding = 0,
        const idx Threads = 4
    ) {
        CheckRange(ValueMin, ValueMax);

        Bundle<Real> Result;
        Result.resize(SubVectorCount);
        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(ValueCountPerVec);
        }

        if (SubVectorCount == 0 || ValueCountPerVec == 0 || Threads == 0) return Result;

        RdDevice Rd;
        TwisterFor<Real> MasterGen(Rd());
        DistReal<Real> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(Threads);

        for(idx t = 0; t < Threads; t++) {
            auto LocalSeed = MasterGen();

            Workers.emplace_back(
                [&Result, t, Threads, SubVectorCount, ValueCountPerVec, NResult, LocalSeed, Rounding](const std::stop_token& st) mutable {
                TwisterFor<Real> LocalGen(LocalSeed);
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < ValueCountPerVec; j++) {
                        Result[i][j] = Round(NResult(LocalGen), Rounding);
                    }
                }
            });
        }

        return Result;
    }
}

/** Integer **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded integer bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Multi-threaded generation of 2D i32 bundle.
     * Uses Twister32 per thread for optimal performance.
     */
    inline Bundle<i32> RandomNumsTBI(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        i32 ValueMin = -10, i32 ValueMax = 10,
        const idx Threads = 4
    ) {
        return RandomNumsTB<i32>(
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax,
            Threads
        );
    }

    /**
     * @brief Multi-threaded generation of 2D i64 bundle.
     * Uses Twister64 per thread.
     */
    inline Bundle<i64> RandomNumsTBL(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        i64 ValueMin = -10, i64 ValueMax = 10,
        const idx Threads = 4
    ) {
        return RandomNumsTB<i64>(
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax,
            Threads
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded float bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Multi-threaded generation of 2D f32 bundle.
     * Uses Twister32 per thread.
     */
    inline Bundle<f32> RandomNumsTBF(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        f32 ValueMin = -10, f32 ValueMax = 10,
        const u32 Rounding = 0,
        const idx Threads = 4
    ) {
        return RandomNumsTB<f32>(
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax, Rounding,
            Threads
        );
    }

    /**
     * @brief Multi-threaded generation of 2D f64 bundle.
     * Uses Twister64 per thread.
     */
    inline Bundle<f64> RandomNumsTBD(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        f64 ValueMin = -10, f64 ValueMax = 10,
        const u32 Rounding = 0,
        const idx Threads = 4
    ) {
        return RandomNumsTB<f64>(
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax, Rounding,
            Threads
        );
    }
}

#endif

/* ---- End: Random/Bundle.Thread.hpp ---- */
