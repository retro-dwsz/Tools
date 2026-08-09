/* ---- Begin: Random/Vector.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_VECTOR_CUSTOM_HPP
#define TOOLS_RANDOM_VECTOR_CUSTOM_HPP 5

/** Vector functions with fixed min/max value with custom twister **/
/**
 * @file Vector.Custom.hpp
 * @brief Provides functions for generating vectors of random numbers using a user-provided generator.
 *
 * This header implements the "Custom" variant of vector generation. Unlike the Base
 * versions which use internal thread-local generators, these functions accept a reference
 * to a `TwisterAny<>` engine. This is useful for:
 * - Reproducible batch generation with a specific seed.
 * - Using non-standard PRNG configurations.
 * - Sharing a single generator state across multiple generation calls.
 *
 * @note Range Safety: If Min > Max, the values are automatically swapped internally.
 *       No exception is thrown for inverted ranges.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * Twister64 myGen(42);
 * auto data = Random::RandomNumsVI(myGen, 1000, 0, 100);
 * @endcode
 */

#include "_Common.hpp"

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for vector generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a vector of random integers using a custom generator.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
     * @param ValueCount Number of elements to generate. Default: 10.
     * @param ValueMin Lower bound of the range (inclusive). Default: -10.
     * @param ValueMax Upper bound of the range (inclusive). Default: 10.
     * @return vec<Int> A vector containing 'Count' random integers.
     * @note If Min > Max, they are automatically swapped.
     */
    template <Tools::Types::Integer Int = i32>
    vec<Int> RandomNumsV(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        Int ValueMin = -10, Int ValueMax = 10
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(ValueCount);

        vec<Int> Result;
        Result.reserve(ValueCount);

        DistInt<Int> NResult(ValueMin, ValueMax);

        for (idx i = 0; i < ValueCount; ++i) {
            Result.push_back(
                NResult(Gen)
            );
        }
        return Result;
    }

    /**
     * @brief Generates a vector of random floating-point numbers using a custom generator.
     *
     * @tparam Real The floating-point type (must be f32 or f64).
     * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
     * @param ValueCount Number of elements to generate. Default: 10.
     * @param ValueMin Lower bound of the range (inclusive). Default: -2.71.
     * @param ValueMax Upper bound of the range (inclusive). Default: 2.71.
     * @param Rounding Decimal precision for rounding each element. Default: 0.
     * @return vec<Real> A vector containing 'Count' random floats/doubles.
     * @note If Min > Max, they are automatically swapped.
     */
    template <Tools::Types::Float Real = f32>
    vec<Real> RandomNumsV(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        Real ValueMin = -2.71, Real ValueMax = 2.71,
        const u32 Rounding = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(ValueCount);

        vec<Real> Result;
        Result.reserve(ValueCount);

        DistReal<Real> NResult(ValueMin, ValueMax);

        for (idx i = 0; i < ValueCount; ++i) {
            Result.push_back(
                Round(NResult(Gen), Rounding)
            );
        }

        return Result;
    }
}

/** Integer **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for integer vector generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a vector of 32-bit random integers using a custom generator.
     *
     * @param Gen A reference to a Mersenne Twister engine.
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @return vec<i32> Vector of random i32 values.
     */
    inline vec<i32> RandomNumsVI(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        i32 ValueMin = -10, i32 ValueMax = 10
    ) {
        return RandomNumsV<i32>(
            Gen, ValueCount, ValueMin, ValueMax
        );
    }

    /**
     * @brief Generates a vector of 64-bit random integers using a custom generator.
     *
     * @param Gen A reference to a Mersenne Twister engine.
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -100.
     * @param ValueMax Upper bound (inclusive). Default: 100.
     * @return vec<i64> Vector of random i64 values.
     */
    inline vec<i64> RandomNumsVL(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        i64 ValueMin = -100, i64 ValueMax = 100
    ) {
        return RandomNumsV<i64>(
            Gen, ValueCount, ValueMin, ValueMax
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for floating-point vector generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a vector of 32-bit floating-point numbers using a custom generator.
     *
     * @param Gen A reference to a Mersenne Twister engine.
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -2.71.
     * @param ValueMax Upper bound (inclusive). Default: 2.71.
     * @param Rounding Decimal precision. Default: 0.
     * @return vec<f32> Vector of random f32 values.
     */
    inline vec<f32> RandomNumsVF(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        f32 ValueMin = -2.71, f32 ValueMax = 2.71,
        const u32 Rounding = 0
    ) {
        return RandomNumsV<f32>(
            Gen, ValueCount, ValueMin, ValueMax, Rounding
        );
    }

    /**
     * @brief Generates a vector of 64-bit floating-point numbers (doubles) using a custom generator.
     *
     * @param Gen A reference to a Mersenne Twister engine.
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -3.14.
     * @param ValueMax Upper bound (inclusive). Default: 3.14.
     * @param Rounding Decimal precision. Default: 0.
     * @return vec<f64> Vector of random f64 values.
     */
    inline vec<f64> RandomNumsVD(
        TwisterAny<>& Gen,
        const idx ValueCount = 10,
        f64 ValueMin = -3.14, f64 ValueMax = 3.14,
        const u32 Rounding = 0
    ) {
        return RandomNumsV<f64>(
            Gen, ValueCount, ValueMin, ValueMax, Rounding
        );
    }
}

#endif

/* ---- End: Random/Vector.Custom.hpp ---- */
