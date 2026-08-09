/* ---- Begin: Random/SBundle.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_SBUNDLE_CUSTOM_HPP
#define TOOLS_RANDOM_SBUNDLE_CUSTOM_HPP 12

/** Vector in vector functions with fixed min/max value vectors and random sub-vector element count with custom twister **/
/**
 * @file SBundle.Custom.hpp
 * @brief Provides functions for generating scattered bundles (ragged 2D vectors) using a user-provided generator.
 *
 * This header implements the "Custom" variant of scattered bundle generation. Each sub-vector
 * has a randomly determined size within [ItemCountMin, ItemCountMax], and values are generated using
 * the caller-supplied TwisterAny<> engine.
 *
 * @note Unlike Base versions, these functions do NOT use internal thread-local generators.
 *       The caller is responsible for thread safety if sharing the generator across threads.
 * @note If Min > Max or ItemCountMin > ItemCountMax, values are automatically swapped internally.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * Twister64 myGen(42);
 * auto ragged = Random::RandomNumsSBI(myGen, 5, 10, 30, -100, 100);
 * @endcode
 */

#include "_Common.hpp"

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for scattered bundle generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a ragged 2D vector of random integers using a custom generator.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Minimum elements per sub-vector (inclusive). Default: 10.
     * @param ValueCountMax Maximum elements per sub-vector (inclusive). Default: 30.
     * @param ValueMin Lower bound of value range (inclusive). Default: -100.
     * @param ValueMax Upper bound of value range (inclusive). Default: 100.
     * @return Bundle<Int> A ragged 2D vector with varying sub-vector sizes.
     * @note If Min > Max or ItemCountMin > ItemCountMax, they are automatically swapped.
     */
    template <Tools::Types::Integer Int = i32>
    Bundle<Int> RandomNumsSB(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        Int ValueMin = -100, Int ValueMax = 100
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMin, ValueCountMax);

        Bundle<Int> Result;
        Result.reserve(SubVectorCount);

        DistInt<idx>  DistCount(ValueCountMin, ValueCountMax);
        DistInt<Int>  NResult(ValueMin, ValueMax);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(NResult(Gen));
            }
        }

        return Result;
    }

    /**
     * @brief Generates a ragged 2D vector of random floating-point numbers using a custom generator.
     *
     * @tparam Real The floating-point type (must be f32 or f64).
     * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector. Default: 10.
     * @param ValueCountMax Max elements per sub-vector. Default: 30.
     * @param ValueMin Lower bound of value range. Default: -3.14.
     * @param ValueMax Upper bound of value range. Default: 3.14.
     * @param Rounding Decimal precision for rounding. Default: 0.
     * @return Bundle<Real> A ragged 2D vector.
     */
    template <Tools::Types::Float Real = f32>
    Bundle<Real> RandomNumsSB(
        TwisterAny<>& Gen,
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

        DistInt<idx>  DistCount(ValueCountMin, ValueCountMax);
        DistReal<Real> NResult(ValueMin, ValueMax);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(
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
 * @brief Type-specific overloads for integer scattered bundle generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a ragged 2D vector of i32 using a custom generator.
     *
     * @param Gen Reference to a Mersenne Twister engine.
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector. Default: 10.
     * @param ValueCountMax Max elements per sub-vector. Default: 30.
     * @param ValueMin Lower bound. Default: -10.
     * @param ValueMax Upper bound. Default: 10.
     * @return Bundle<i32>
     */
    inline Bundle<i32> RandomNumsSBI(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        i32 ValueMin = -10, i32 ValueMax = 10
    ) {
        return RandomNumsSB<i32>(
            Gen,
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax
        );
    }

    /**
     * @brief Generates a ragged 2D vector of i64 using a custom generator.
     *
     * @param Gen Reference to a Mersenne Twister engine.
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector. Default: 10.
     * @param ValueCountMax Max elements per sub-vector. Default: 30.
     * @param ValueMin Lower bound. Default: -100.
     * @param ValueMax Upper bound. Default: 100.
     * @return Bundle<i64>
     */
    inline Bundle<i64> RandomNumsSBL(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        i64 ValueMin = -100, i64 ValueMax = 100
    ) {
        return RandomNumsSB<i64>(
            Gen,
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for floating-point scattered bundle generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a ragged 2D vector of f32 using a custom generator.
     *
     * @param Gen Reference to a Mersenne Twister engine.
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector. Default: 10.
     * @param ValueCountMax Max elements per sub-vector. Default: 30.
     * @param ValueMin Lower bound. Default: -2.71.
     * @param ValueMax Upper bound. Default: 2.71.
     * @param Rounding Decimal precision. Default: 0.
     * @return Bundle<f32>
     */
    inline Bundle<f32> RandomNumsSBF(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        f32 ValueMin = -2.71, f32 ValueMax = 2.71,
        const i32 Rounding = 0
    ) {
        return RandomNumsSB<f32>(
            Gen,
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Rounding
        );
    }

    /**
     * @brief Generates a ragged 2D vector of f64 using a custom generator.
     *
     * @param Gen Reference to a Mersenne Twister engine.
     * @param SubVectorCount Number of sub-vectors. Default: 4.
     * @param ValueCountMin Min elements per sub-vector. Default: 10.
     * @param ValueCountMax Max elements per sub-vector. Default: 30.
     * @param ValueMin Lower bound. Default: -3.14.
     * @param ValueMax Upper bound. Default: 3.14.
     * @param Rounding Decimal precision. Default: 0.
     * @return Bundle<f64>
     */
    inline Bundle<f64> RandomNumsSBD(
        TwisterAny<>& Gen,
        const idx SubVectorCount = 4,
        idx ValueCountMin = 10, idx ValueCountMax = 30,
        f64 ValueMin = -3.14, f64 ValueMax = 3.14,
        const i32 Rounding = 0
    ) {
        return RandomNumsSB<f64>(
            Gen,
            SubVectorCount,
            ValueCountMin, ValueCountMax,
            ValueMin, ValueMax,
            Rounding
        );
    }
}

#endif

/* ---- End: Random/SBundle.Custom.hpp ---- */
