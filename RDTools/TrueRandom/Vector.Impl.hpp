/* ---- Begin: TrueRandom/Vector.Impl.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_VECTOR_IMPL
#define TOOLS_TRUE_RANDOM_VECTOR_IMPL 4b

#include "Vector.hpp"

/** Integers **/
namespace rdt::TrueRandom {
    /// @brief True random vector or i32 [ValueMin, ValueMax]. Default: 20 -> [-10, 10].
    inline vec<i32> RandomNumsVI(
        idx ValueCount = 20, i32 ValueMin = -10, i32 ValueMax = 10
    ) {
        return RandomNumsV<i32>(
            ValueCount, ValueMin, ValueMax
        );
    }

    /// @brief True random vector or i64 [ValueMin, ValueMax]. Default: 20 -> [-10, 10].
    inline vec<i64> RandomNumsVL(
        idx ValueCount = 20, i64 ValueMin = -10, i64 ValueMax = 10
    ) {
        return RandomNumsV<i64>(
            ValueCount, ValueMin, ValueMax
        );
    }
}

/** Floats **/
namespace rdt::TrueRandom {
    /// @brief True random vector or f32 [ValueMin, ValueMax]. Default: 20 -> [-2.71, 2.71] with no rounding.
    inline vec<f32> RandomNumsVF(
        idx ValueCount = 20, f32 ValueMin = -2.71, f32 ValueMax = 2.71, const u32 Rounding = 0
    ) {
        return RandomNumsV<f32>(
            ValueCount, ValueMin, ValueMax, Rounding
        );
    }

    /// @brief True random vector or f64 [ValueMin, ValueMax]. Default: 20 -> [-3.14, 3.14] with no rounding.
    inline vec<f64> RandomNumsVD(
        idx ValueCount = 20, f64 ValueMin = -3.14, f64 ValueMax = 3.14, const u32 Rounding = 0
    ) {
        return RandomNumsV<f64>(
            ValueCount, ValueMin, ValueMax, Rounding
        );
    }
}

#endif

/* ---- End: TrueRandom/Vector.Impl.hpp ---- */
