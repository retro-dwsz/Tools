#pragma once

#ifndef TOOLS_RANDOM_SINGLE_HPP
#define TOOLS_RANDOM_SINGLE_HPP

/* Singly functions with fixed min/max value */

#include "Random.common.hpp"

// Integer
namespace Tools::Random {
    using Tools::Round::Round;

    // Always returns an int for the integer range
    inline i32 RandomNumI(i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        sthread Twister32 Gen32(rd());

        return DistInt<i32>(Min, Max)(Gen32);
    }

    inline i64 RandomNumL(i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        sthread Twister64 Gen64(rd());

        return DistInt<i64>(Min, Max)(Gen64);
    }
}

// Floats
namespace Tools::Random {
    inline f32 RandomNumF(f32 Min = -2.71, f32 Max = 2.71) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        sthread Twister32 Gen32(rd());

        return DistReal<f32>(Min, Max)(Gen32);
    }

    inline f64 RandomNumD(f64 Min = -3.14, f64 Max = 3.14) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        sthread Twister64 Gen64(rd());

        return DistReal<f64>(Min, Max)(Gen64);
    }
}

// Floats with rounding
namespace Tools::Random {
    inline f32 RandomNumF(f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        sthread Twister32 Gen32(rd());

        return Round(DistReal<f32>(Min, Max)(Gen32), Rounding);
    }

    inline f64 RandomNumD(f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        sthread Twister64 Gen64(rd());

        return Round(DistReal<f64>(Min, Max)(Gen64), Rounding);
    }
}

#endif
