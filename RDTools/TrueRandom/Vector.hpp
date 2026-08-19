/* ---- Begin: TrueRandom/Vector.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_VECTOR
#define TOOLS_TRUE_RANDOM_VECTOR 4a

#include "_Common.hpp"

/** Checkings **/
namespace rdt::TrueRandom {
    // for Vector items
    /**
     * @brief Checks vector count limits and prints warning if exceeded.
     * @param Count The number of elements to be generated.
     * @note Triggers if Count > INT16_MAX.
     */
    inline void WarningCount(const idx& Count) {
        if(Count > INT16_MAX) {
        #ifdef TOOLS_TRUE_RANDOM_SILENT
            printf("");
        #else
            printf("%s", Warning.data());
        #endif
        }
    }
}

/** Generics **/
namespace rdt::TrueRandom {
    /**
     * @brief Generate a vector of true random integers in [ValueMin, ValueMax].
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsVI/VL) for convenient defaults.
     *
     * @tparam Int Integer type (must satisfy Tools::Types::Integer). Default type: i32.
     * @param ValueCount Number of elements to generate.
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @return vec<Int> Vector of cryptographically secure random integers.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsVI, RandomNumsVL for typed shortcuts with defaults.
     */
    template <rdt::Types::Integer Int = i32>
    vec<Int> RandomNumsV(
        idx ValueCount,
        Int ValueMin, Int ValueMax
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(ValueCount);

        Generator Gen;
        DistInt<Int> NResult(ValueMin, ValueMax);

        vec<Int> Out;
        Out.reserve(ValueCount);

        for(idx i = 0; i < ValueCount; i++) {
            Out.push_back(
                NResult(Gen)
            );
        }

        return Out;
    }

    /**
     * @brief Generate a vector of true random floats in [ValueMin, ValueMax].
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsVF/VD) for convenient defaults.
     *
     * @tparam Real Float type (must satisfy Tools::Types::Float). Default type: f32.
     * @param ValueCount Number of elements to generate.
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @param Rounding Decimal places to round (0 = no rounding).
     * @return vec<Real> Vector of cryptographically secure random floats.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsVF, RandomNumsVD for typed shortcuts with defaults.
     */
    template <rdt::Types::Float Real = f32>
    vec<Real> RandomNumsV(
        idx ValueCount,
        Real ValueMin, Real ValueMax, u32 Rounding
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(ValueCount);

        Generator Gen;
        DistReal<Real> NResult(ValueMin, ValueMax);

        vec<Real> Out;
        Out.reserve(ValueCount);

        for(idx i = 0; i < ValueCount; i++) {
            Out.push_back(
                Round(NResult(Gen), Rounding)
            );
        }

        return Out;
    }
}

#endif

/* ---- End: TrueRandom/Vector.hpp ---- */
