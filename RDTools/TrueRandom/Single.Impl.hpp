/* ---- Begin: TrueRandom/Single.Impl.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_SINGLE_IMPL
#define TOOLS_TRUE_RANDOM_SINGLE_IMPL 3b

#include "Single.hpp"

/** Integers **/
namespace rdt::TrueRandom {
    /// @brief True random i32 in [ValueMin, ValueMax]. Default: [-10, 10].
    inline i32 RandomNumI(i32 ValueMin = -10, i32 ValueMax = 10) {
        return RandomNum<i32>(ValueMin, ValueMax);
    }

    /// @brief True random i64 in [ValueMin, ValueMax]. Default: [-10, 10].
    inline i64 RandomNumL(i64 ValueMin = -10, i64 ValueMax = 10) {
        return RandomNum<i64>(ValueMin, ValueMax);
    }
}

/** Floats **/
namespace rdt::TrueRandom {
    /// @brief True random f32 in [ValueMin, ValueMax]. Default: [-2.71, 2.71] with no rounding.
    inline f32 RandomNumF(f32 ValueMin = -2.71f, f32 ValueMax = 2.71f, const u32 Rounding = 0) {
        return RandomNum<f32>(ValueMin, ValueMax, Rounding);
    }

    /// @brief True random f64 in [ValueMin, ValueMax]. Default: [-3.14, 3.14] with no rounding.
    inline f64 RandomNumD(f64 ValueMin = -3.14, f64 ValueMax = 3.14, const u32 Rounding = 0) {
        return RandomNum<f64>(ValueMin, ValueMax, Rounding);
    }
}

#endif

/* ---- End: TrueRandom/Single.Impl.hpp ---- */
