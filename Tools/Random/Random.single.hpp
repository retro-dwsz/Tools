#pragma once

#ifndef TOOLS_RANDOM_SINGLE_HPP
#define TOOLS_RANDOM_SINGLE_HPP

/* Singly functions with fixed min/max value */

#include "Random.common.hpp"

// --- SINGLE FUNCTIONS (Integer ranges) ---
namespace Tools::Random {
    // Single random number function returning a variant
    // This example returns an int. You could make it more complex to choose the type randomly.
    using Tools::Round::Round;

    // Always returns an int for the integer range
    i32 RandomNumI(i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        cthread Twister32 Gen32(rd());

        return DistInt<i32>(Min, Max)(Gen32);
    }

    i64 RandomNumL(i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());

        return DistInt<i64>(Min, Max)(Gen64);
    }

    // Always returns an float for the float range
    f32 RandomNumF(f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        cthread Twister32 Gen32(rd());

        return DistReal<f32>(Min, Max)(Gen32);
    }

    f64 RandomNumD(f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());

        return DistReal<f64>(Min, Max)(Gen64);
    }
}

#endif
