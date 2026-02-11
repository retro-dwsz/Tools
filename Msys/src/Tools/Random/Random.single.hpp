#pragma once

/* Singly functions with fixed min/max value */

#include "Random.common.hpp"

// --- SINGLE FUNCTIONS (Integer ranges) ---
namespace Tools::Random {
    // Single random number function returning a variant
    // This example returns an int. You could make it more complex to choose the type randomly.

    // Always returns an int for the integer range
    i32 RandomNumI(i32 Min, i32 Max) {
        return RandomInt(Min, Max);
    }
    
    i64 RandomNumL(i64 Min, i64 Max) {
        return RandomInt(Min, Max);
    }
    
    // Always returns an float for the float range
    f32 RandomNumF(f32 Min, f32 Max) {
        return RandomReal(Min, Max);
    }

    f64 RandomNumD(f64 Min, f64 Max) {
        return RandomReal(Min, Max);
    }
}
