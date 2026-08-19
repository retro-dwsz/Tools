/* ---- Begin: Random/Single.Base.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_SINGLE_HPP
#define TOOLS_RANDOM_SINGLE_HPP 2

/** Singly functions with fixed min/max value **/
/**
 * @file Single.Base.hpp
 * @brief Provides functions for generating single random numbers using preset thread-local generators.
 *
 * This header implements the core "Single" functionality of rdt.Random. It offers
 * both generic template functions and type-specific overloads for integers and floating-point
 * numbers. All functions in this file utilize `static thread_local` (sthread) generators,
 * ensuring high performance and thread-safety without the overhead of mutexes or explicit
 * generator management by the user.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * auto i = Random::RandomNumI(-50, 50);   // Integer [-50, 50]
 * auto d = Random::RandomNumD(0.0, 1.0);  // Double [0.0, 1.0]
 * @endcode
 */

#include "_Common.hpp"

/** Generic **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for single random number generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a single random integer within the specified range.
     *
     * Uses a 64-bit Mersenne Twister generator stored in thread-local storage.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param Min The lower bound of the range (inclusive). Default: -100.
     * @param Max The upper bound of the range (inclusive). Default: 100.
     * @return Int A random integer between Min and Max.
     * @note auto swap if Min > Max.
     */
    template <rdt::Types::Integer Int = i32>
    Int RandomNum(
        Int Min = -100,
        Int Max = 100
    ) {
        CheckRange(Min, Max);

        sthread RdDevice Rd;
        sthread TwisterFor<Int> Gen(Rd());

        return DistInt<Int>(Min, Max)(Gen);
    }

    /**
     * @brief Generates a single random floating-point number within the specified range.
     *
     * Uses a 64-bit Mersenne Twister generator and applies optional rounding.
     *
     * @tparam Real The floating-point type (must be f32, f64, or fld).
     * @param Min The lower bound of the range (inclusive). Default: -2.71.
     * @param Max The upper bound of the range (inclusive). Default: 2.71.
     * @param Rounding The number of decimal places to round the result to. Default: 0.
     * @return Real A random floating-point number between Min and Max.
     * @note auto swap if Min > Max.
     */
    template <rdt::Types::Float Real = f32>
    Real RandomNum(
        Real Min = -2.71,
        Real Max = 2.71,
        const u32 Rounding = 0
    ) {
        CheckRange(Min, Max);
        sthread RdDevice Rd;
        sthread TwisterFor<Real> Gen(Rd());

        return Round(DistReal<Real>(Min, Max)(Gen), Rounding);
    }
}

/** Integer **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for integer random number generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a single 32-bit random integer.
     *
     * Optimized with a 32-bit Mersenne Twister generator.
     *
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @return i32 A random 32-bit integer.
     */
    inline i32 RandomNumI(
        i32 ValueMin = -10,
        i32 ValueMax = 10
    ) {
        return RandomNum<i32>(ValueMin, ValueMax);
    }

    /**
     * @brief Generates a single 64-bit random integer.
     *
     * Optimized with a 64-bit Mersenne Twister generator.
     *
     * @param ValueMin Lower bound (inclusive). Default: -100.
     * @param ValueMax Upper bound (inclusive). Default: 100.
     * @return i64 A random 64-bit integer.
     */
    inline i64 RandomNumL(
        i64 ValueMin = -100,
        i64 ValueMax = 100
    ) {
        return RandomNum<i64>(ValueMin, ValueMax);
    }
}

/** Floats **/
/**
 * @namespace Tools::Random
 * @brief Type-specific overloads for floating-point random number generation.
 */
namespace rdt::Random {
    /**
     * @brief Generates a single 32-bit floating-point number.
     *
     * @param ValueMin Lower bound (inclusive). Default: -2.71.
     * @param ValueMax Upper bound (inclusive). Default: 2.71.
     * @param Rounding Decimal precision for rounding. Default: 2.
     * @return f32 A random 32-bit float.
     */
    inline f32 RandomNumF(
        f32 ValueMin = -2.71,
        f32 ValueMax = 2.71,
        const u32 Rounding = 0
    ) {
        return RandomNum<f32>(ValueMin, ValueMax, Rounding);
    }

    /**
     * @brief Generates a single 64-bit floating-point number (double).
     *
     * @param ValueMin Lower bound (inclusive). Default: -3.14.
     * @param ValueMax Upper bound (inclusive). Default: 3.14.
     * @param Rounding Decimal precision for rounding. Default: 2.
     * @return f64 A random 64-bit double.
     */
    inline f64 RandomNumD(
        f64 ValueMin = -3.14,
        f64 ValueMax = 3.14,
        const u32 Rounding = 0
    ) {
        return RandomNum<f64>(ValueMin, ValueMax, Rounding);
    }
}

#endif

/* ---- End: Random/Single.Base.hpp ---- */
