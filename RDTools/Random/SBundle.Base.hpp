/* ---- Begin: Random/SBundle.Base.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_SBUNDLE_HPP
#define TOOLS_RANDOM_SBUNDLE_HPP 11

/** Vector in vector functions with fixed min/max value vectors and random sub-vector element count **/
/**
 * @file SBundle.Base.hpp
 * @brief Provides functions for generating 2D vectors (scattered bundles) with RANDOM sub-vector sizes.
 *
 * Unlike Bundle.Base.hpp where every sub-vector has the same length, SBundle generates
 * a `Bundle<T>` where each inner vector has a size randomly chosen between [CountMin, CountMax].
 * This is useful for simulating ragged arrays, variable-length sequences, or testing
 * algorithms with non-uniform data structures.
 *
 * @note All functions use preset thread-local generators for implicit thread safety.
 * @note For fixed-size bundles, see Bundle.Base.hpp.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * // Create 5 sub-vectors, each with random size between 10 and 30
 * auto ragged = Random::RandomNumsSBI(5, 10, 30, -100, 100);
 * @endcode
 */

#include "_Common.hpp"

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for scattered bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a 2D vector of random integers with varying sub-vector sizes.
     *
     * Each sub-vector's length is independently randomized within [CountMin, CountMax].
     * Uses a 64-bit Mersenne Twister generator stored in thread-local storage.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param SubVectorCount Number of sub-vectors to generate. Default: 4.
     * @param ValueCountMin Minimum elements per sub-vector (inclusive). Default: 10.
     * @param ValueCountMax Maximum elements per sub-vector (inclusive). Default: 30.
     * @param ValueMin Lower bound of value range (inclusive). Default: -100.
     * @param ValueMax Upper bound of value range (inclusive). Default: 100.
     * @return Bundle<Int> A ragged 2D vector.
     * @note If Min > Max or CountMin > CountMax, they are automatically swapped.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsSB(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        Int ValueMin = -100, Int ValueMax = 100
    ) {
       CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMin, ValueCountMax);

        Bundle<Int> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice Rd;
        sthread TwisterFor<Int> Gen64(Rd());

        DistInt<idx>  DistCount(ValueCountMin, ValueCountMax);
        DistInt<Int>  NResult(ValueMin, ValueMax);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen64);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(NResult(Gen64));
            }
        }

        return Result;
    }

    /**
     * @brief Generates a 2D vector of random floating-point numbers with varying sub-vector sizes.
     *
     * @tparam Real The floating-point type (must be f32 or f64).
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector. Default: 10.
     * @param ValueCountMax Max elements per sub-vector. Default: 30.
     * @param ValueMin Lower bound of value range. Default: -3.14.
     * @param ValueMax Upper bound of value range. Default: 3.14.
     * @param Rounding Decimal precision for rounding. Default: 0.
     * @return Bundle<Real> A ragged 2D vector.
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsSB(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        Real ValueMin = -3.14, Real ValueMax = 3.14,
        const i32 Rounding = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMin, ValueCountMax);

        Bundle<Real> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice Rd;
        sthread TwisterFor<Real> Gen64(Rd());

        DistInt<idx>   DistCount(ValueCountMin, ValueCountMax);
        DistReal<Real> NResult(ValueMin, ValueMax);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen64);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(
                    Round(NResult(Gen64), Rounding)
                );
            }
        }

        return Result;
    }
}

/** Integer **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for integer scattered bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a ragged 2D vector of i32.
     * Uses optimized Twister32 generator.
     */
    inline Bundle<i32> RandomNumsSBI(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        i32 ValueMin = -10, i32 ValueMax = 10
    ) {
        return RandomNumsSB<i32>(
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax
        );
    }

    /**
     * @brief Generates a ragged 2D vector of i64.
     * Uses optimized Twister64 generator.
     */
    inline Bundle<i64> RandomNumsSBL(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        i64 ValueMin = -100, i64 ValueMax = 100
    ) {
        return RandomNumsSB<i64>(
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for floating-point scattered bundle generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a ragged 2D vector of f32.
     * Uses optimized Twister32 generator.
     */
    inline Bundle<f32> RandomNumsSBF(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        f32 ValueMin = -2.71, f32 ValueMax = 2.71,
        const i32 Rounding = 0
    ) {
        return RandomNumsSB<f32>(
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Rounding
        );
    }

    /**
     * @brief Generates a ragged 2D vector of f64.
     * Uses optimized Twister64 generator.
     */
    inline Bundle<f64> RandomNumsSBD(
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        f64 ValueMin = -3.14, f64 ValueMax = 3.14,
        const i32 Rounding = 0
    ) {
        return RandomNumsSB<f64>(
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Rounding
        );
    }
}

#endif

/* ---- End: Random/SBundle.Base.hpp ---- */
