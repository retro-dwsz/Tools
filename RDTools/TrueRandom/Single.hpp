/* ---- Begin: TrueRandom/Single.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_SINGLE
#define TOOLS_TRUE_RANDOM_SINGLE 3a

#include "_Common.hpp"

/** Generics **/
namespace rdt::TrueRandom {
    /**
     * @brief Generate a single true random integer in [ValueMin, ValueMax].
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumI/L) for convenient defaults.
     *
     * @tparam Int Integer type (must satisfy Tools::Types::Integer). Default type: i32.
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @return Int Cryptographically secure random integer.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumI, RandomNumL for typed shortcuts with defaults.
     */
    template <rdt::Types::Integer Int = i32>
    Int RandomNum(Int ValueMin, Int ValueMax) {
        CheckRange(ValueMin, ValueMax);
        Generator Gen;

        return DistInt<Int>(ValueMin, ValueMax)(Gen);
    }

    /**
     * @brief Generate a single true random float in [ValueMin, ValueMax].
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumF/D) for convenient defaults.
     *
     * @tparam Real Float type (must satisfy Tools::Types::Float). Default type: f32.
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @param Rounding Decimal places to round (0 = no rounding).
     * @return Real Cryptographically secure random float.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumF, RandomNumD for typed shortcuts with defaults.
     */
    template <rdt::Types::Float Real = f32>
    Real RandomNum(Real ValueMin, Real ValueMax, const u32 Rounding) {
        CheckRange(ValueMin, ValueMax);
        Generator Gen;

        return Round(DistReal<Real>(ValueMin, ValueMax)(Gen), Rounding);
    }
}

#endif

/* ---- End: TrueRandom/Single.hpp ---- */
