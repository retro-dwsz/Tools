/* ---- Begin: TrueRandom/SBundle.Impl.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_SBUNDLE_IMPL
#define TOOLS_TRUE_RANDOM_SBUNDLE_IMPL 6b

#include "SBundle.hpp"

/** Integers **/
namespace rdt::TrueRandom {
    /// @brief Scattered bundle of true random i32. Default: 4 sub-vecs, 10-30 each, [-10, 10].
    inline Bundle<i32> RandomNumsSBI(
        const idx SubVectorCount = 4, idx ValueCountMin = 10, idx ValueCountMax = 30, i32 ValueMin = -10, i32 ValueMax = 10
    ) {
        return RandomNumsSB<i32>(SubVectorCount, ValueCountMin, ValueCountMax, ValueMin, ValueMax);
    }

    /// @brief Scattered bundle of true random i64. Default: 4 sub-vecs, 10-30 each, [-10, 10].
    inline Bundle<i64> RandomNumsSBL(
        const idx SubVectorCount = 4, idx ValueCountMin = 10, idx ValueCountMax = 30, i64 ValueMin = -10, i64 ValueMax = 10
    ) {
        return RandomNumsSB<i64>(SubVectorCount, ValueCountMin, ValueCountMax, ValueMin, ValueMax);
    }
}

/** Floats **/
namespace rdt::TrueRandom {

    /// @brief Scattered bundle of true random f32. Default: 4 sub-vecs, 10-30 each, [-2.71, 2.71].
    inline Bundle<f32> RandomNumsSBF(
        const idx SubVectorCount = 4, idx ValueCountMin = 10, idx ValueCountMax = 30, f32 ValueMin = -2.71f, f32 ValueMax = 2.71f, const u32 Rounding = 0
    ) {
        return RandomNumsSB<f32>(SubVectorCount, ValueCountMin, ValueCountMax, ValueMin, ValueMax, Rounding);
    }

    /// @brief Scattered bundle of true random f64. Default: 4 sub-vecs, 10-30 each, [-3.14, 3.14].
    inline Bundle<f64> RandomNumsSBD(
        const idx SubVectorCount = 4, idx ValueCountMin = 10, idx ValueCountMax = 30, f64 ValueMin = -3.14, f64 ValueMax = 3.14, const u32 Rounding = 0
    ) {
        return RandomNumsSB<f64>(SubVectorCount, ValueCountMin, ValueCountMax, ValueMin, ValueMax, Rounding);
    }
}

#endif

/* ---- End: TrueRandom/SBundle.Impl.hpp ---- */
