/* ---- Begin: Random/Bundle.Thread.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_BUNDLE_THREAD_CUSTOM_HPP
#define TOOLS_RANDOM_BUNDLE_THREAD_CUSTOM_HPP 11

/** Vector in vector functions with fixed min/max value with custom twister and multithreading **/
/**
 * @file Bundle.Thread.Custom.hpp
 * @brief Provides multi-threaded bundle generation using a user-provided custom generator.
 *
 * This header combines the flexibility of custom PRNG engines with parallel execution.
 * The user-provided generator is used ONLY for seeding worker threads. Each worker
 * then uses its own local Twister engine to avoid data races and contention.
 *
 * @section thread_safety Thread Safety Note
 * The input generator `Gen` is accessed sequentially in the main thread to derive
 * seeds for workers. It is NOT shared across threads during generation, ensuring
 * complete thread safety without mutexes.
 *
 * @warning Since this uses a custom generator, reproducibility depends entirely on
 *          the state of 'Gen' passed by the caller.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * Twister64 myGen(12345);
 * auto matrix = Random::RandomNumsTBI(myGen, 100, 1000, 0, 255, 8);
 * @endcode
 */

#include "_Common.hpp"
#include <thread>

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for multi-threaded bundle generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a 2D vector of random integers using multiple threads and a custom generator.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
     * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
     * @param ValueCountPerVec Elements per sub-vector. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @param Threads Number of worker threads. Default: 4.
     * @return Bundle<Int> A 2D vector with dimensions [SubVectorCount][Count].
     * @note If Min > Max, they are automatically swapped.
     */
    template <Tools::Types::Integer Int = i32>
    Bundle<Int> RandomNumsTB(
        TwisterAny<>& Gen,
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

        DistInt<Int> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(Threads);

        // Deduce worker twister type from master generator
        using WorkerTwister = std::decay_t<decltype(Gen)>;

        for(idx t = 0; t < Threads; t++) {
            auto LocalSeed = Gen();

            Workers.emplace_back(
                [&Result, t, Threads, SubVectorCount, ValueCountPerVec, NResult, LocalSeed](const std::stop_token& st) mutable {
                // Local random generator per thread to avoid contention
                WorkerTwister LocalGen(LocalSeed);
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
     * @brief Generates a 2D vector of random floating-point numbers using multiple threads and a custom generator.
     *
     * @tparam Real The floating-point type (must be f32, f64, or fld).
     * @param Gen Reference to custom engine (used for seeding).
     * @param SubVectorCount Number of rows. Default: 4.
     * @param ValueCountPerVec Elements per row. Default: 10.
     * @param ValueMin Lower bound. Default: -10.
     * @param ValueMax Upper bound. Default: 10.
     * @param Threads Worker count. Default: 4.
     * @param Rounding Decimal precision. Default: 0.
     * @return Bundle<Real>
     */
    template <Tools::Types::Float Real = f32>
    Bundle<Real> RandomNumsTB(
        TwisterAny<>& Gen,
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

        DistReal<Real> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(Threads);

        // Deduce worker twister type from master generator
        using WorkerTwister = std::decay_t<decltype(Gen)>;

        for(idx t = 0; t < Threads; t++) {
            auto LocalSeed = Gen();

            Workers.emplace_back(
                [&Result, t, Threads, SubVectorCount, ValueCountPerVec, NResult, LocalSeed, Rounding](const std::stop_token& st) mutable {
                    // Local random generator per thread to avoid contention
                    WorkerTwister LocalGen(LocalSeed);

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
 * @brief Type-specific overloads for multi-threaded integer bundle generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Multi-threaded 2D i32 bundle generation with custom engine.
     * Uses Twister32 per worker for optimal performance.
     */
    inline Bundle<i32> RandomNumsTBI(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        i32 ValueMin = -10, i32 ValueMax = 10,
        const idx Threads = 4
    ) {
        return RandomNumsTB<i32>(Gen,
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax,
            Threads
        );
    }

    /**
     * @brief Multi-threaded 2D i64 bundle generation with custom engine.
     * Uses Twister64 per worker.
     */
    inline Bundle<i64> RandomNumsTBL(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        i64 ValueMin = -10, i64 ValueMax = 10,
        const idx Threads = 4
    ) {
        return RandomNumsTB<i64>(Gen,
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax,
            Threads
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for multi-threaded float bundle generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Multi-threaded 2D f32 bundle generation with custom engine.
     * Uses Twister32 per worker.
     */
    inline Bundle<f32> RandomNumsTBF(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        f32 ValueMin = -10, f32 ValueMax = 10,
        const u32 Rounding = 0,
        const idx Threads = 4
    ) {
        return RandomNumsTB<f32>(
            Gen,
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax, Rounding,
            Threads
        );
    }

    /**
     * @brief Multi-threaded 2D f64 bundle generation with custom engine.
     * Uses Twister64 per worker.
     */
    inline Bundle<f64> RandomNumsTBD(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        f64 ValueMin = -10, f64 ValueMax = 10,
        const u32 Rounding = 0,
        const idx Threads = 4
    ) {
        return RandomNumsTB<f64>(
            Gen,
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax, Rounding,
            Threads
        );
    }
}

#endif

/* ---- End: Random/Bundle.Thread.Custom.hpp ---- */
