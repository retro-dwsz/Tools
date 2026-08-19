/* ---- Begin: Random/Vector.Base.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_VECTOR_HPP
#define TOOLS_RANDOM_VECTOR_HPP 4

/** Vector functions with fixed min/max value **/
/**
 * @file Vector.Base.hpp
 * @brief Provides functions for generating vectors of random numbers using preset thread-local generators.
 *
 * This header implements the core "Vector" functionality of rdt.Random. It generates
 * a `vec<T>` containing random values within a specified range. Like the Single module,
 * it uses `static thread_local` generators for high performance and implicit thread safety.
 *
 * @section perf Performance Note
 * All vector generation functions pre-allocate memory using `reserve()` to avoid
 * reallocations during the generation loop. For very large counts (>32,767),
 * a warning will be triggered via `WarningCount()`.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * auto ints = Random::RandomNumsVI(100, 0, 50);    // 100 integers [0, 50]
 * auto dbls = Random::RandomNumsVD(1000, -1.0, 1.0); // 1000 doubles [-1.0, 1.0]
 * @endcode
 */

#include "_Common.hpp"

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for vector random number generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a vector of random integers.
     *
     * Uses a 64-bit Mersenne Twister generator stored in thread-local storage.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param ValueCount Number of elements to generate. Default: 10.
     * @param ValueMin Lower bound of the range (inclusive). Default: -10.
     * @param ValueMax Upper bound of the range (inclusive). Default: 10.
     * @return vec<Int> A vector containing 'Count' random integers.
     * @note auto swap if Min > Max.
     */
    template <rdt::Types::Integer Int = i32>
    vec<Int> RandomNumsV(
        const idx ValueCount = 10,
        Int ValueMin = -10, Int ValueMax = 10
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(ValueCount);

        vec<Int> Result;
        Result.reserve(ValueCount);

        sthread RdDevice rd;
        sthread TwisterFor<Int> Gen64(rd());
        DistInt<Int> NResult(ValueMin, ValueMax);

        for (idx i = 0; i < ValueCount; ++i) {
            Result.push_back(
                NResult(Gen64)
            );
        }
        return Result;
    }

    /**
     * @brief Generates a vector of random floating-point numbers.
     *
     * Uses a 64-bit Mersenne Twister generator and applies optional rounding to each element.
     *
     * @tparam Real The floating-point type (must be f32 or f64).
     * @param ValueCount Number of elements to generate. Default: 10.
     * @param ValueMin Lower bound of the range (inclusive). Default: -2.71.
     * @param ValueMax Upper bound of the range (inclusive). Default: 2.71.
     * @param Rounding Decimal precision for rounding each element. Default: 0.
     * @return vec<Real> A vector containing 'Count' random floats/doubles.
     * @note auto swap if Min > Max.
     */
    template <rdt::Types::Float Real = f32>
    vec<Real> RandomNumsV(
        const idx ValueCount = 10,
        Real ValueMin = -2.71, Real ValueMax = 2.71,
        const u32 Rounding = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(ValueCount);

        vec<Real> Result;
        Result.reserve(ValueCount);

        sthread RdDevice rd;
        sthread TwisterFor<Real> Gen64(rd());
        DistReal<Real> NResult(ValueMin, ValueMax);

        for (idx i = 0; i < ValueCount; ++i) {
            Result.push_back(
                Round(NResult(Gen64), Rounding)
            );
        }

        return Result;
    }
}

/** Integer **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for integer vector generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a vector of 32-bit random integers.
     *
     * Optimized with a 32-bit Mersenne Twister generator.
     *
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @return vec<i32> Vector of random i32 values.
     */
    inline vec<i32> RandomNumsVI(
        const idx ValueCount = 10,
        i32 ValueMin = -10, i32 ValueMax = 10
    ) {
        return RandomNumsV<i32>(
            ValueCount, ValueMin, ValueMax
        );
    }

    /**
     * @brief Generates a vector of 64-bit random integers.
     *
     * Optimized with a 64-bit Mersenne Twister generator.
     *
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -100.
     * @param ValueMax Upper bound (inclusive). Default: 100.
     * @return vec<i64> Vector of random i64 values.
     */
    inline vec<i64> RandomNumsVL(
        const idx ValueCount = 10,
        i64 ValueMin = -100, i64 ValueMax = 100
    ) {
        return RandomNumsV<i64>(
            ValueCount, ValueMin, ValueMax
        );
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for floating-point vector generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a vector of 32-bit floating-point numbers.
     *
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -2.71.
     * @param ValueMax Upper bound (inclusive). Default: 2.71.
     * @param Rounding Decimal precision. Default: 0.
     * @return vec<f32> Vector of random f32 values.
     */
    inline vec<f32> RandomNumsVF(
        const idx ValueCount = 10,
        f32 ValueMin = -2.71, f32 ValueMax = 2.71,
        const u32 Rounding = 0
    ) {
        return RandomNumsV<f32>(
            ValueCount, ValueMin, ValueMax, Rounding
        );
    }

    /**
     * @brief Generates a vector of 64-bit floating-point numbers (doubles).
     *
     * @param ValueCount Number of elements. Default: 10.
     * @param ValueMin Lower bound (inclusive). Default: -3.14.
     * @param ValueMax Upper bound (inclusive). Default: 3.14.
     * @param Rounding Decimal precision. Default: 0.
     * @return vec<f64> Vector of random f64 values.
     */
    inline vec<f64> RandomNumsVD(
        const idx ValueCount = 10,
        f64 ValueMin = -3.14, f64 ValueMax = 3.14,
        const u32 Rounding = 0
    ) {
        return RandomNumsV<f64>(
            ValueCount, ValueMin, ValueMax, Rounding
        );
    }
}

#endif

/* ---- End: Random/Vector.Base.hpp ---- */
