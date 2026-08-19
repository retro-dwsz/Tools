/* ---- Begin: Random/Bundle.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_BUNDLE_CUSTOM_HPP
#define TOOLS_RANDOM_BUNDLE_CUSTOM_HPP 9

/** Vector in vector functions with fixed min/max value with custom twister **/
/**
 * @file Bundle.Custom.hpp
 * @brief Provides functions for generating 2D vectors (bundles) with fixed dimensions using a user-provided generator.
 *
 * This header implements the "Custom" variant of bundle generation. It accepts a reference
 * to a `TwisterAny<>` engine, allowing for deterministic matrix generation or integration
 * with external PRNG state management.
 *
 * @note Unlike Base versions, these functions do NOT use internal thread-local generators.
 *       The caller is responsible for ensuring thread safety if the same generator is
 *       shared across multiple threads.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * Twister64 myGen(12345);
 * auto matrix = Random::RandomNumsBI(myGen, 4, 10, 0, 100);
 * @endcode
 */

#include "_Common.hpp"

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for bundle generation with custom engines.
 */
namespace rdt::Random {
    /**
     * @brief Generates a 2D vector of random integers with fixed dimensions using a custom generator.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
     * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
     * @param ValueCountPerVec Number of elements per sub-vector. Default: 10.
     * @param ValueMin Lower bound of the range (inclusive). Default: -100.
     * @param ValueMax Upper bound of the range (inclusive). Default: 100.
     * @return Bundle<Int> A 2D vector with dimensions [SubVectorCount][Count].
     * @note If Min > Max, they are automatically swapped.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsB(
        TwisterAny<>& Gen,
        const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
        Int ValueMin = -100, Int ValueMax = 100
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(SubVectorCount, ValueCountPerVec);

        DistInt<Int> NResult(ValueMin, ValueMax);

        Bundle<Int> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back();
            Result.back().reserve(ValueCountPerVec);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < ValueCountPerVec; ii++){
                Result[i].push_back(
                    NResult(Gen)
                );
            }
        }

        return Result;
    }

    /**
     * @brief Generates a 2D vector of random floating-point numbers with fixed dimensions using a custom generator.
     *
     * @tparam Real The floating-point type (must be f32 or f64).
     * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
     * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
     * @param ValueCountPerVec Number of elements per sub-vector. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -3.14.
     * @param ValueMax Upper bound (inclusive). Default: 3.14.
     * @param Rounding Decimal precision for rounding. Default: 0.
     * @return Bundle<Real> A 2D vector with dimensions [SubVectorCount][Count].
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsB(
        TwisterAny<>& Gen,
        const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
        Real ValueMin = -3.14, Real ValueMax = 3.14, const u32 Rounding = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(SubVectorCount, ValueCountPerVec);

        Bundle<Real> Result;
        Result.reserve(SubVectorCount);

        DistReal<Real> NResult(ValueMin, ValueMax);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back();
            Result.back().reserve(ValueCountPerVec);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < ValueCountPerVec; ii++){
                Result[i].push_back(
                    Round(NResult(Gen), Rounding)
                );
            }
        }

        return Result;
    }
}

/** Integer **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for integer bundle generation with custom engines.
 */
namespace rdt::Random {
    /**
     * @brief Generates a 2D vector of i32 with fixed dimensions using a custom generator.
     */
    inline Bundle<i32> RandomNumsBI(
        TwisterAny<>& Gen,
        const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
        i32 ValueMin = -10, i32 ValueMax = 10
    ) {
        return RandomNumsB<i32>(
            Gen,
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax
        );
    }

    /**
     * @brief Generates a 2D vector of i64 with fixed dimensions using a custom generator.
     */
    inline Bundle<i64> RandomNumsBL(
        TwisterAny<>& Gen,
        const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
        i64 ValueMin = -100,i64  ValueMax = 100
    ) {
        return RandomNumsB<i64>(
            Gen,
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for floating-point bundle generation with custom engines.
 */
namespace rdt::Random {
    /**
     * @brief Generates a 2D vector of f32 with fixed dimensions using a custom generator.
     */
    inline Bundle<f32> RandomNumsBF(
        TwisterAny<>& Gen,
        const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
        f32 ValueMin = -2.71, f32 ValueMax = 2.71,
        const u32 Rounding = 0
    ) {
        return RandomNumsB<f32>(
            Gen,
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax, Rounding
        );
    }

    /**
     * @brief Generates a 2D vector of f64 with fixed dimensions using a custom generator.
     */
    inline Bundle<f64> RandomNumsBD(
        TwisterAny<>& Gen,
        const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
        f64 ValueMin = -3.14, f64 ValueMax = 3.14,
        const u32 Rounding = 0
    ) {
        return RandomNumsB<f64>(
            Gen,
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax, Rounding
        );
    }
}

#endif

/* ---- End: Random/Bundle.Custom.hpp ---- */
