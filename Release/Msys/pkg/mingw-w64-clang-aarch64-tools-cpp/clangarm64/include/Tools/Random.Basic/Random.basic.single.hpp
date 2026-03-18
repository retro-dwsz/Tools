#pragma once

#ifndef TOOLS_RANDOM_BASIC_SINGLE_HPP
#define TOOLS_RANDOM_BASIC_SINGLE_HPP

#include "../Types.hpp"
#include "Random.basic.common.hpp"

// --- SINGLE FUNCTIONS (Integer ranges) ---
namespace Tools::Random::Single {
    // Single random number function returning a variant
    // This example returns an int. You could make it more complex to choose the type randomly.

    // Always returns an int for the integer range
    i32 RandomNumI(i32 min, i32 max) {
        return RandomInt(min, max);
    }
    
    i64 RandomNumL(i64 min, i64 max) {
        return RandomInt(min, max);
    }
    
    // Always returns an float for the float range
    f32 RandomNumF(f32 min, f32 max) {
        return RandomReal(min, max);
    }

    f64 RandomNumD(f64 min, f64 max) {
        return RandomReal(min, max);
    }
}

#endif
