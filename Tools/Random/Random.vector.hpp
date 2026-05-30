#pragma once

#ifndef TOOLS_RANDOM_VECTOR_HPP
#define TOOLS_RANDOM_VECTOR_HPP

/* Vector functions with fixed min/max value vectors */

#include "Random.common.hpp"

namespace Tools::Random {
    using Tools::Round::Round;

    vec<i32> RandomNumsVI(const idx Count = 10, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);

        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<i32> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        cthread Twister32 Gen32(rd());
        DistInt<i32> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            Result.push_back(
                NResult(Gen32)
            );
        }
        return Result;
    }

    vec<i64> RandomNumsVL(const idx Count = 10, i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);

        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<i64> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());
        DistInt<i64> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            Result.push_back(
                NResult(Gen64)
            );
        }
        return Result;
    }

    vec<f32> RandomNumsVF_A(const idx Count = 10, f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);

        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<f32> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        cthread Twister32 Gen32(rd());
        DistReal<f32> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            auto n = NResult(Gen32);
            Result.push_back(
                Round(n, Rounding)
            );
        }

        return Result;
    }

    vec<f64> RandomNumsVD(const idx Count = 10, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);

        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<f64> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());
        DistReal<f64> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            auto n = NResult(Gen64);
            Result.push_back(
                Round(n, Rounding)
            );
        }

        return Result;
    }

}

#endif
