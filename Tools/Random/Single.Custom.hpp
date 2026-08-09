/* ---- Begin: Random/Single.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_SINGLE_CUSTOM_HPP
#define TOOLS_RANDOM_SINGLE_CUSTOM_HPP 3

/** Singly functions with fixed min/max value and with custom twister **/
/**
 * @file Single.Custom.hpp
 * @brief Provides functions for generating single random numbers using a user-provided generator.
 *
 * This header implements the "Custom" variant of single number generation. Unlike the Base
 * versions which use internal thread-local generators, these functions accept a reference
 * to a `TwisterAny<>` engine. This allows for:
 * - Deterministic reproduction of results by seeding the generator externally.
 * - Usage of custom PRNG configurations.
 * - Better control over generator state in complex applications.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * // Create a custom 64-bit twister
 * Twister64 myGen(12345);
 *
 * auto i = Random::RandomNumI(myGen, -50, 50);
 * auto d = Random::RandomNumD(myGen, 0.0, 1.0);
 * @endcode
 */

#include "_Common.hpp"

/** Generic with custom twister **/
/**
 * @namespace Tools::Random
 * @brief Generic template functions for single random number generation with custom engines.
 */
namespace Tools::Random {
    /**
     * @brief Generates a single random integer using a custom generator.
     *
     * @tparam Int The integer type (must be i32 or i64).
     * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
     * @param ValueMin The lower bound of the range (inclusive). Default: -100.
     * @param ValueMax The upper bound of the range (inclusive). Default: 100.
     * @return Int A random integer between Min and Max.
     * @note auto swap if Min > Max.
     */
    template <Tools::Types::Integer Int = i32>
    Int RandomNum(
        TwisterAny<>& Gen,
        Int ValueMin = -100,
        Int ValueMax = 100
    ) {
        CheckRange(ValueMin, ValueMax);
        sthread RdDevice Rd;

        return DistInt<Int>(ValueMin, ValueMax)(Gen);
    }

    /**
     * @brief Generates a single random floating-point number using a custom generator.
     *
     * @tparam Real The floating-point type (must be f32, f64, or fld).
     * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
     * @param ValueMin The lower bound of the range (inclusive). Default: -2.71.
     * @param ValueMax The upper bound of the range (inclusive). Default: 2.71.
     * @param Rounding The number of decimal places to round the result to. Default: 0.
     * @return Real A random floating-point number between Min and Max.
     * @note auto swap if Min > Max.
     */
    template <Tools::Types::Float Real = f32>
    Real RandomNum(
        TwisterAny<>& Gen,
        Real ValueMin = -2.71,
        Real ValueMax = 2.71,
        const u32 Rounding = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        sthread RdDevice Rd;

        return Round(DistReal<Real>(ValueMin, ValueMax)(Gen), Rounding);
    }
}

/** Integer with custom twister **/
namespace Tools::Random {
    /**
     * @brief Generates a single 32-bit random integer using a custom generator.
     *
     * @param Gen A reference to a Mersenne Twister engine.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @return i32 A random 32-bit integer.
     */
    inline i32 RandomNumI(
        TwisterAny<>& Gen,
        i32 ValueMin = -10,
        i32 ValueMax = 10
    ) {
        CheckRange(ValueMin, ValueMax);
        return RandomNum<i32>(Gen, ValueMin, ValueMax);
    }

    /**
     * @brief Generates a single 64-bit random integer using a custom generator.
     *
     * @param Gen A reference to a Mersenne Twister engine.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @return i64 A random 64-bit integer.
     */
    inline i64 RandomNumL(
        TwisterAny<>& Gen,
        i64 ValueMin = -10,
        i64 ValueMax = 10
    ) {
        CheckRange(ValueMin, ValueMax);
        return RandomNum<i64>(Gen, ValueMin, ValueMax);
    }
}

/** Float with custom twister **/
namespace Tools::Random {
    /**
     * @brief Generates a single 32-bit floating-point number using a custom generator.
     *
     * @param Gen A reference to a Mersenne Twister engine.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @return f32 A random 32-bit float.
     */
    inline f32 RandomNumF(
        TwisterAny<>& Gen,
        f32 ValueMin = -10,
        f32 ValueMax = 10,
        const u32 Rounding = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        return RandomNum<f32>(Gen, ValueMin, ValueMax, Rounding);
    }

    /**
     * @brief Generates a single 64-bit floating-point number (double) using a custom generator.
     *
     * @param Gen A reference to a Mersenne Twister engine.
     * @param ValueMin Lower bound (inclusive). Default: -10.
     * @param ValueMax Upper bound (inclusive). Default: 10.
     * @return f64 A random 64-bit double.
     */
    inline f64 RandomNumD(
        TwisterAny<>& Gen,
        f64 ValueMin = -10,
        f64 ValueMax = 10,
        const u32 Rounding = 0
    ) {
        CheckRange(ValueMin, ValueMax);
        return RandomNum<f64>(Gen, ValueMin, ValueMax, Rounding);
    }
}


#endif

/* ---- End: Random/Single.Custom.hpp ---- */
