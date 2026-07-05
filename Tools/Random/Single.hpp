#pragma once

#ifndef TOOLS_RANDOM_SINGLE_HPP
#define TOOLS_RANDOM_SINGLE_HPP

/* Singly functions with fixed min/max value */

#include "_Common.hpp"

/* Generic */
namespace Tools::Random {
    template <typename Int>
    requires OneOf<Int, i32, i64>
    inline Int RandomNum(Int Min = -100, Int Max = 100) {
        CheckRange(Min, Max);
        sthread RdDevice Rd;
        sthread Twister64 Gen64(Rd());

        return DistInt<Int>(Min, Max)(Gen64);
    }

    template <typename Real>
    requires OneOf<Real, f32, f64>
    inline Real RandomNum(Real Min = -2.71, Real Max = 2.71, const u32 Rounding = 0) {
        CheckRange(Min, Max);
        sthread RdDevice Rd;
        sthread Twister64 Gen64(Rd());

        return Round(DistReal<Real>(Min, Max)(Gen64), Rounding);
    }
}

// Integer
namespace Tools::Random {
    using Tools::Round::Round;

    // Always returns an int for the integer range
    inline i32 RandomNumI(i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        sthread RdDevice Rd;
        sthread Twister32 Gen32(Rd());

        return DistInt<i32>(Min, Max)(Gen32);
    }

    inline i64 RandomNumL(i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        sthread RdDevice Rd;
        sthread Twister64 Gen64(Rd());

        return DistInt<i64>(Min, Max)(Gen64);
    }
}

// Floats
namespace Tools::Random {
    inline f32 RandomNumF(f32 Min = -2.71, f32 Max = 2.71, const u32 Rounding = 2) {
        CheckRange(Min, Max);
        sthread RdDevice Rd;
        sthread Twister32 Gen32(Rd());

        return Round(DistReal<f32>(Min, Max)(Gen32), Rounding);
    }

    inline f64 RandomNumD(f64 Min = -3.14, f64 Max = 3.14, const u32 Rounding = 2) {
        CheckRange(Min, Max);
        sthread RdDevice Rd;
        sthread Twister64 Gen64(Rd());

        return Round(DistReal<f64>(Min, Max)(Gen64), Rounding);
    }
}

#endif
