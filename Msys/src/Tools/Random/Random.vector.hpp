#pragma once

/* Vector functions with fixed min/max value vectors */

#include "Random.common.hpp"

namespace Tools::Random {
    vec<i32> RandomNumsVI(idx Count, i32 Min, i32 Max) {
        if(Max < Min){ swap(Min, Max); }
        if(Count < 0){ Count = Count*(-1); }
        
        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<i32> result;
        result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister32 gen(rd());

        for (idx i = 0; i < Count; ++i) {
            result.push_back(DistInt<i32>(Min, Max)(gen));
        }
        return result;
    }

    vec<i64> RandomNumsVL(idx Count, i64 Min, i64 Max) {
        if(Max < Min){ swap(Min, Max); }
        if(Count < 0){ Count = Count*(-1); }
        
        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }
        
        vec<i64> result;
        result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister64 gen(rd());

        for (idx i = 0; i < Count; ++i) {
            result.push_back(DistInt<i64>(Min, Max)(gen));
        }
        return result;
    }

    vec<f32> RandomNumsVF(idx Count, f32 Min, f32 Max, const i32 Rounding) {
        if(Max < Min){ swap(Min, Max); }
        if(Count < 0){ Count = Count*(-1); }
        
        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }
        
        vec<f32> result;
        result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister32 gen(rd());

        for (idx i = 0; i < Count; ++i) {
            auto n = DistReal<f32>(Min, Max)(gen);
            result.push_back(Tools::Round::Round(n, Rounding));
        }
        return result;
    }

    vec<f64> RandomNumsVD(idx Count, f64 Min, f64 Max, const i32 Rounding) {
        if(Max < Min){ swap(Min, Max); }
        if(Count < 0){ Count = Count*(-1); }
        
        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }
        
        vec<f64> result;
        result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister64 gen(rd());

        for (idx i = 0; i < Count; ++i) {
            auto n = DistReal<f64>(Min, Max)(gen);
            result.push_back(Tools::Round::Round(n, Rounding));
        }
        return result;
    }

}