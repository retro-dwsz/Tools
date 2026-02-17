#pragma once

#include "RandomHW.common.hpp"

namespace Tools::RandomHW {
    i32 RandomNumI(Twister32& gen, i32 min, i32 max) {
        CheckRange(min, max);
        DistInt<i32> dist(min, max);
        return dist(gen);
    }
    
    i64 RandomNumL(Twister64& gen, i64 min, i64 max) {
        CheckRange(min, max);
        DistInt<i64> dist(min, max);
        return dist(gen);
    }

    f32 RandomNumF(Twister32& gen, f32 min, f32 max) {
        CheckRange(min, max);
        DistReal<f32> dist(min, max);
        return dist(gen);
    }
    f64 RandomNumD(Twister64& gen, f64 min, f64 max) {
        CheckRange(min, max);
        DistReal<f64> dist(min, max);
        return dist(gen);
    }
}