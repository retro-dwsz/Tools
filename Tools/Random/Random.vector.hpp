#pragma once

#ifndef TOOLS_RANDOM_VECTOR_HPP
#define TOOLS_RANDOM_VECTOR_HPP

/* Vector functions with fixed min/max value vectors */

#include "Random.common.hpp"

namespace Tools::Random {
    vec<i32> RandomNumsVI(idx Count = 10, i32 Min = -10, i32 Max = 10) {
        if(Max < Min){ std::swap(Min, Max); }

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

    vec<i64> RandomNumsVL(idx Count = 10, i64 Min = -100, i64 Max = 100) {
        if(Max < Min){ std::swap(Min, Max); }

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

    vec<f32> RandomNumsVF(idx Count = 10, f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        if(Max < Min){ std::swap(Min, Max); }

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

    vec<f64> RandomNumsVD(idx Count = 10, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        if(Max < Min){ std::swap(Min, Max); }

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

#endif
