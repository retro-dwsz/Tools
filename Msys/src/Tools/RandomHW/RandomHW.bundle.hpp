#pragma once

#include "RandomHW.common.hpp"

namespace Tools::RandomHW {
    vec<vec<i32>> RandomNumsBI(Twister32& gen, const idx Sub, const idx Count, i32 min, i32 max) {
        CheckRange(min, max);
        
        DistInt<i32> dist(min, max);
        vec<vec<i32>> result;

        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<i32>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }

    vec<vec<i64>> RandomNumsBL(Twister64& gen, const idx Sub, const idx Count, i64 min, i64 max) {
        CheckRange(min, max);
        
        DistInt<i64> dist(min, max);
        vec<vec<i64>> result;

        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<i64>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }

    vec<vec<f32>> RandomNumsBF(Twister32& gen, const idx Sub, const idx Count, f32 min, f32 max) {
        CheckRange(min, max);
        
        DistReal<f32> dist(min, max);
        vec<vec<f32>> result;

        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<f32>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }
    
    vec<vec<f32>> RandomNumsBF(Twister32& gen, const idx Sub, const idx Count, f32 min, f32 max, const i32 Rounding) {
        CheckRange(min, max);
        
        DistReal dist(min, max);
        vec<vec<f32>> result;

        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<f32>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(Tools::Round::Round(dist(gen), Rounding));
            }
        }

        return result;
    }

    vec<vec<f64>> RandomNumsBD(Twister64& gen, const idx Sub, const idx Count, f64 min, f64 max) {
        CheckRange(min, max);
        
        DistReal<f64> dist(min, max);
        vec<vec<f64>> result;

        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<f64>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }

    vec<vec<f64>> RandomNumsBD(Twister64& gen, const idx Sub, const idx Count, f64 min, f64 max, const i32 Rounding) {
        CheckRange(min, max);
        
        DistReal dist(min, max);
        vec<vec<f64>> result;

        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<f64>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(Tools::Round::Round(dist(gen), Rounding));
            }
        }

        return result;
    }

}