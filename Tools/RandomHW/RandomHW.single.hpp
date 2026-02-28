#pragma once

#ifndef TOOLS_RANDOM_HW_SINGLE_HPP
#define TOOLS_RANDOM_HW_SINGLE_HPP

#include "RandomHW.common.hpp"

namespace Tools::RandomHW {
    i32 RandomNumI(Twister32& gen, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        DistInt<i32> dist(Min, Max);
        return dist(gen);
    }
    
    i64 RandomNumL(Twister64& gen, i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        DistInt<i64> dist(Min, Max);
        return dist(gen);
    }

    f32 RandomNumF(Twister32& gen, f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        DistReal<f32> dist(Min, Max);
        // if(Rounding > 0){
            return Tools::Round::Round(dist(gen), Rounding);
        // } else {
        //     return dist(gen);
        // }
    }

    f64 RandomNumD(Twister64& gen, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        DistReal<f64> dist(Min, Max);
        // if(Rounding > 0){
            return Tools::Round::Round(dist(gen), Rounding);
        // } else {
        //     return dist(gen);
        // }
    }
}

#endif
