/* ---- Begin: TrueRandom/SBundle.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_SBUNDLE
#define TOOLS_TRUE_RANDOM_SBUNDLE 6a

#include "_Common.hpp"

/** Checkings **/
namespace rdt::TrueRandom {
    // for SBundle
    /**
     * @brief Checks scattered bundle dimensions and prints warning if exceeded.
     * @param SubVectorCount Number of sub-vectors.
     * @param CountMin Minimum elements per sub-vector.
     * @param CountMax Maximum elements per sub-vector.
     * @note Triggers if any value > INT32_MAX.
     */
    inline void WarningCount(const idx& SubVectorCount, const idx& CountMin, const idx& CountMax) {
        if(SubVectorCount > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX){
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
     * @brief Generate a scattered bundle (vec<vec<T>> with random sub-vector sizes).
     *
     * Each sub-vector has a random element count in [ValueCountMin, ValueCountMax].
     * Unlike Bundle (fixed dimensions), SBundle produces ragged/jagged arrays.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsSBI/SBL) for convenient defaults.
     *
     * @tparam Int Integer type (must satisfy Tools::Types::Integer). Default type: i32.
     * @param SubVectorCount Number of sub-vectors.
     * @param ValueCountMin Minimum elements per sub-vector.
     * @param ValueCountMax Maximum elements per sub-vector.
     * @param ValueMin Lower bound for values (inclusive).
     * @param ValueMax Upper bound for values (inclusive).
     * @return Bundle<Int> Jagged 2D vector of cryptographically secure random integers.
     * @note Auto-swaps both value range and count range if inverted.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsSBI, RandomNumsSBL for typed shortcuts with defaults.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsSB(
        const idx SubVectorCount,
        idx ValueCountMin, idx ValueCountMax,
        Int ValueMin, Int ValueMax
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMin, ValueCountMax);

        Bundle<Int> Result;
        Result.reserve(SubVectorCount);

        Generator Gen;

        DistInt<idx> DistCount(ValueCountMin, ValueCountMax);
        DistInt<Int> NResult(ValueMin, ValueMax);

        for (idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for (idx j = 0; j < NCount; ++j) {
                v.push_back(NResult(Gen));
            }
        }

        return Result;
    }

    /**
     * @brief Generate a scattered bundle of true random floats.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsSBF/SBD) for convenient defaults.
     *
     * @tparam Real Float type (must satisfy Tools::Types::Float). Default type: f32.
     * @param SubVectorCount Number of sub-vectors.
     * @param ValueCountMin Minimum elements per sub-vector.
     * @param ValueCountMax Maximum elements per sub-vector.
     * @param ValueMin Lower bound for values (inclusive).
     * @param ValueMax Upper bound for values (inclusive).
     * @param Rounding Decimal places to round (0 = no rounding).
     * @return Bundle<Real> Jagged 2D vector of cryptographically secure random floats.
     * @note Auto-swaps both value range and count range if inverted.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsSBF, RandomNumsSBD for typed shortcuts with defaults.
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsSB(
        const idx SubVectorCount,
        idx ValueCountMin, idx ValueCountMax,
        Real ValueMin, Real ValueMax,
        const u32 Rounding
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMin, ValueCountMax);

        Bundle<Real> Result;
        Result.reserve(SubVectorCount);

        Generator Gen;

        DistInt<idx> DistCount(ValueCountMin, ValueCountMax);
        DistReal<Real> NResult(ValueMin, ValueMax);

        for (idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for (idx j = 0; j < NCount; ++j) {
                v.push_back(
                    Round(NResult(Gen), Rounding)
                );
            }
        }

        return Result;
    }
}

#endif

/* ---- End: TrueRandom/SBundle.hpp ---- */
