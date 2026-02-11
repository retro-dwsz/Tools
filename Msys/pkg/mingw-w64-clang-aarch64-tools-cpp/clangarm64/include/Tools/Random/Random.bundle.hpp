#pragma once

/* Budled vector with random elements of each sub-vector */

#include "Random.common.hpp"

namespace Tools::Random {
    vec<vec<i32>> RandomNumsBI(idx Sub = 64, idx Count = 50'000, i32 Min = 0, i32 Max = 100) {
        if(Max < Min){ swap(Min, Max); }
        if(Sub > INT32_MAX || Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<vec<i32>> result;
        result.reserve(Sub);

        sthread RdDevice rd;
        sthread Twister32 gen(rd());
        
        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<i32>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Sub; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(DistInt<i32>(Min, Max)(gen));
            }
        }

        return result;
    }

    vec<vec<i64>> RandomNumsBL(idx Sub = 64, idx Count = 50'000, i64 Min = 0, i64 Max = 100) {
        vec<vec<i64>> result;
        result.reserve(Sub);

        sthread RdDevice rd;
        sthread Twister64 gen(rd());
        
        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<i64>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Sub; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(DistInt<i64>(Min, Max)(gen));
            }
        }

        return result;
    }

    vec<vec<f32>> RandomNumsBF(idx Sub = 64, idx Count = 50'000, f32 Min = 10.01, f32 Max = 50.99, const i32 Rounding = 2) {
        if(Max < Min){ swap(Min, Max); }
        if(Sub > INT32_MAX || Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<vec<f32>> result;
        result.reserve(Sub);
        
        sthread RdDevice rd;
        sthread Twister64 gen(rd());

        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<f32>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Sub; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(Tools::Round::Round( DistReal<f32>(Min, Max)(gen), Rounding));
            }
        }

        return result;
    }

    vec<vec<f64>> RandomNumsBD(idx Sub = 64, idx Count = 50'000, f64 Min = 10.01, f64 Max = 50.99, const i32 Rounding = 2) {
        if(Max < Min){ swap(Min, Max); }
        if(Sub > INT32_MAX || Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<vec<f64>> result;
        result.reserve(Sub);

        sthread RdDevice rd;
        sthread Twister64 gen(rd());
        
        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<f64>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Sub; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(Tools::Round::Round(DistReal<f64>(Min, Max)(gen), Rounding));
            }
        }

        return result;
    }
}
