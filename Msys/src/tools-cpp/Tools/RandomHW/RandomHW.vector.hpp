#pragma once

#include "RandomHW.common.hpp"

namespace Tools::RandomHW {
    vec<i32> RandomNumsVI(Twister32& gen, const idx Count, i32 Min, i32 Max) {
        CheckRange(Min, Max);
        WARNING_A

        DistInt<i32> dist(Min, Max);
        vec<i32> result;
        for(idx i = 0; i < Count; i++) {
            result.push_back(dist(gen));
        }

        return result;
    }
    vec<i64> RandomNumsVL(Twister64& gen, const idx Count, i64 Min, i64 Max) {
        CheckRange(Min, Max);
        WARNING_A

        DistInt<i64> dist(Min, Max);
        vec<i64> result;

        for(idx i = 0; i < Count; i++) {
            result.push_back(dist(gen));
        }

        return result;
    }

    vec<f32> RandomNumsVI(Twister32& gen, const idx Count, f32 Min, f32 Max) {
        CheckRange(Min, Max);
        WARNING_A

        DistReal<f32> dist(Min, Max);
        vec<f32> result;
        for(idx i = 0; i < Count; i++) {
            result.push_back(dist(gen));
        }

        return result;
    }
    vec<f64> RandomNumsVD(Twister64& gen, const idx Count, f64 Min, f64 Max) {
        CheckRange(Min, Max);
        WARNING_A

        DistReal<f64> dist(Min, Max);
        vec<f64> result;
        for(idx i = 0; i < Count; i++) {
            result.push_back(dist(gen));
        }

        return result;
    }
}