/* ---- Begin: TrueRandom/Bundle.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_BUNDLE
#define TOOLS_TRUE_RANDOM_BUNDLE 5a

#include "_Common.hpp"

/** Checkings **/
namespace rdt::TrueRandom {
    // for Bundle items
    /**
     * @brief Checks bundle dimensions and prints warning if exceeded.
     * @param SubVectorCount Number of sub-vectors.
     * @param NCount Number of elements per sub-vector.
     * @note Triggers if either value > INT32_MAX.
     */
    inline void WarningCount(const idx& SubVectorCount, const idx& NCount){
        if(SubVectorCount > INT32_MAX || NCount > INT32_MAX){
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
     * @brief Generate a bundle (vec<vec<T>>) of true random integers with fixed dimensions.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsBI/BL) for convenient defaults.
     *
     * @tparam Int Integer type (must satisfy Tools::Types::Integer). Default type: i32.
     * @param SubVectorCount Number of sub-vectors (rows).
     * @param ValueCountPerVec Elements per sub-vector (columns).
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @return Bundle<Int> 2D vector of cryptographically secure random integers.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsBI, RandomNumsBL for typed shortcuts with defaults.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsB(
        const idx SubVectorCount, const idx ValueCountPerVec,
        Int ValueMin, Int ValueMax
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(SubVectorCount, ValueCountPerVec);

        Bundle<Int> Out;
        Out.reserve(SubVectorCount);

        Generator Gen;
        DistInt<Int> NResult(ValueMin, ValueMax);

        for (idx i = 0; i < SubVectorCount; ++i) {
            Out.emplace_back();
            Out.back().reserve(ValueCountPerVec);
        }

        for (idx i = 0; i < SubVectorCount; ++i) {
            for (idx ii = 0; ii < ValueCountPerVec; ++ii) {
                Out[i].push_back(NResult(Gen));
            }
        }


        return Out;
    }

    /**
     * @brief Generate a bundle (vec<vec<T>>) of true random floats with fixed dimensions.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsBF/BD) for convenient defaults.
     *
     * @tparam Real Float type (must satisfy Tools::Types::Float). Default type: f32.
     * @param SubVectorCount Number of sub-vectors (rows).
     * @param ValueCountPerVec Elements per sub-vector (columns).
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @param Rounding Decimal places to round (0 = no rounding).
     * @return Bundle<Real> 2D vector of cryptographically secure random floats.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsBF, RandomNumsBD for typed shortcuts with defaults.
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsB(
        const idx SubVectorCount, const idx ValueCountPerVec,
        Real ValueMin, Real ValueMax, u32 Rounding
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(SubVectorCount, ValueCountPerVec);

        Bundle<Real> Out;
        Out.reserve(SubVectorCount);

        Generator Gen;
        DistReal<Real> NResult(ValueMin, ValueMax);

        for (idx i = 0; i < SubVectorCount; ++i) {
            Out.emplace_back();
            Out.back().reserve(ValueCountPerVec);
        }

        for (idx i = 0; i < SubVectorCount; ++i) {
            for (idx ii = 0; ii < ValueCountPerVec; ++ii) {
                Out[i].push_back(
                    Round(NResult(Gen), Rounding)
                );
            }
        }

        return Out;
    }
}

#endif

/* ---- End: TrueRandom/Bundle.hpp ---- */
