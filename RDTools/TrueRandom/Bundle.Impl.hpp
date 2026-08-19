/* ---- Begin: TrueRandom/Bundle.Impl.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_BUNDLE_IMPL
#define TOOLS_TRUE_RANDOM_BUNDLE_IMPL 5b

#include "Bundle.hpp"

/** Integers **/
namespace rdt::TrueRandom {
    /// @brief Bundle of true random i32. Default: 4 sub-vecs, 10 each, [-10, 10].
    inline Bundle<i32> RandomNumsBI(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10, i32 ValueMin = -100, i32 ValueMax = 100
    ) {
        return RandomNumsB<i32>(
            SubVectorCount, ValueCountPerVec, ValueMin, ValueMax
        );
    }

    /// @brief Bundle of true random i64. Default: 4 sub-vecs, 10 each, [-10, 10].
    inline Bundle<i64> RandomNumsBL(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10, i64 ValueMin = -100, i64 ValueMax = 100
    ) {
        return RandomNumsB<i64>(
            SubVectorCount, ValueCountPerVec, ValueMin, ValueMax
        );
    }
}

/** Floats **/
namespace rdt::TrueRandom {
    /// @brief Bundle of true random f32. Default: 4 sub-vecs, 10 each, [-2.71, 2.71].
    inline Bundle<f32> RandomNumsBF(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10, f32 ValueMin = -2.71, f32 ValueMax = 2.71, u32 Rounding = 0
    ) {
        return RandomNumsB<f32>(
            SubVectorCount, ValueCountPerVec, ValueMin, ValueMax, Rounding
        );
    }

    /// @brief Bundle of true random f64. Default: 4 sub-vecs, 10 each, [-3.14, 3.14].
    inline Bundle<f64> RandomNumsBD(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10, f64 ValueMin = -3.14, f64 ValueMax = 3.14, u32 Rounding = 0
    ) {
        return RandomNumsB<f64>(
            SubVectorCount, ValueCountPerVec, ValueMin, ValueMax, Rounding
        );
    }
}

#endif

/* ---- End: TrueRandom/Bundle.Impl.hpp ---- */
