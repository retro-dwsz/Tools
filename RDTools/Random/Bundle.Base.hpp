/* ---- Begin: Random/Bundle.Base.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_BUNDLE_HPP
#define TOOLS_RANDOM_BUNDLE_HPP 8

/** Vector in vector functions with fixed min/max value **/
/**
 * @file Bundle.Base.hpp
 * @brief Provides functions for generating 2D vectors (bundles) with fixed sub-vector sizes.
 *
 * This header implements the "Bundle" functionality, generating a `Bundle<T>` where
 * every inner vector has exactly the same length ('Count'). This is ideal for representing
 * matrices, grids, or batched datasets with uniform dimensions.
 *
 * @note For bundles with varying sub-vector sizes, see SBundle.Base.hpp.
 * @note All functions use preset thread-local generators for implicit thread safety.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * // Create a 4x10 matrix of integers
 * auto grid = Random::RandomNumsBI(4, 10, 0, 100);
 * @endcode
 */

#include "_Common.hpp"

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a 2D vector of random integers with fixed dimensions.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param ValueCountPerVec Number of elements per sub-vector (columns). Default: 10.
     * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
     * @param ValueMin Lower bound of the range (inclusive). Default: -100.
     * @param ValueMax Upper bound of the range (inclusive). Default: 100.
     * @return Bundle<Int> A 2D vector with dimensions [SubVectorCount][Count].
     * @note If Min > Max, they are automatically swapped.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsB(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        Int ValueMin = -100, Int ValueMax = 100
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(SubVectorCount, ValueCountPerVec);

        sthread RdDevice Rd;
        sthread TwisterFor<Int> Gen64(Rd());
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
                    NResult(Gen64)
                );
            }
        }

        return Result;
    }

    /**
     * @brief Generates a 2D vector of random floating-point numbers with fixed dimensions.
     *
     * @tparam Real The floating-point type (must be f32 or f64).
     * @param ValueCountPerVec Number of elements per sub-vector. Default: 10.
     * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
     * @param ValueMin Lower bound (inclusive). Default: -3.14.
     * @param ValueMax Upper bound (inclusive). Default: 3.14.
     * @param Rounding Decimal precision for rounding. Default: 0.
     * @return Bundle<Real> A 2D vector with dimensions [SubVectorCount][Count].
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsB(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        Real ValueMin = -3.14, Real ValueMax = 3.14, const u32 Rounding = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(SubVectorCount, ValueCountPerVec);

        Bundle<Real> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice Rd;
        sthread TwisterFor<Real> Gen64(Rd());
        DistReal<Real> NResult(ValueMin, ValueMax);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back();
            Result.back().reserve(ValueCountPerVec);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < ValueCountPerVec; ii++){
                Result[i].push_back(
                    Round(NResult(Gen64), Rounding)
                );
            }
        }

        return Result;
    }
}

/** Integers **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for integer bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a 2D vector of i32 with fixed dimensions.
     * Uses optimized Twister32 generator.
     */
    inline Bundle<i32> RandomNumsBI(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        i32 ValueMin = -10, i32 ValueMax = 10
    ) {
        return RandomNumsB<i32>(
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax
        );
    }

    /**
     * @brief Generates a 2D vector of i64 with fixed dimensions.
     * Uses optimized Twister64 generator.
     */
    inline Bundle<i64> RandomNumsBL(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        i64 ValueMin = -100, i64 ValueMax = 100
    ) {
        return RandomNumsB<i64>(
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for floating-point bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a 2D vector of f32 with fixed dimensions.
     * Uses optimized Twister32 generator.
     */
    inline Bundle<f32> RandomNumsBF(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        f32 ValueMin = -2.71, f32 ValueMax = 2.71,
        const u32 Rounding = 0
    ) {
        return RandomNumsB<f32>(
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax, Rounding
        );
    }

    /**
     * @brief Generates a 2D vector of f64 with fixed dimensions.
     * Uses optimized Twister64 generator.
     */
    inline Bundle<f64> RandomNumsBD(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
        f64 ValueMin = -3.14, f64 ValueMax = 3.14,
        const u32 Rounding = 0
    ) {
        return RandomNumsB<f64>(
            SubVectorCount, ValueCountPerVec,
            ValueMin, ValueMax, Rounding
        );
    }
}

#endif

/* ---- End: Random/Bundle.Base.hpp ---- */
