#pragma once

#include "RandomHW.common.hpp"

namespace Tools::RandomHW {
    vec<vec<i32>> RandomNumsSBI(Twister32& gen, idx Sub = 64, idx CountMin = 25, idx CountMax = 50, i32 Min = 0, i32 Max = 10) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        WARNING_B

        DistInt<i32> dist(Min, Max);
        vec<vec<i32>> result;
        result.reserve(Sub);
        
        for(idx i = 0; i < Sub; i++) {
            result.push_back(vec<i32>{});

            const auto c = static_cast<idx>(DistInt<idx>(CountMin, CountMax)(gen));
            for(idx ii = 0; ii < c; ii++){
                result[i].reserve(c);
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }

    vec<vec<i64>> RandomNumsSBL(Twister64& gen, idx Sub = 64, idx CountMin = 25, idx CountMax = 50, i64 Min = 0, i64 Max = 10) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        WARNING_B

        DistInt<i64> dist(Min, Max);
        vec<vec<i64>> result;
        result.reserve(Sub);
        
        for(idx i = 0; i < Sub; i++) {
            result.push_back(vec<i64>{});

            const auto c = static_cast<idx>(DistInt<idx>(CountMin, CountMax)(gen));
            for(idx ii = 0; ii < c; ii++){
                result[i].reserve(c);
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }

    vec<vec<f32>> RandomNumsSBF(Twister32& gen, idx Sub = 64, idx CountMin = 25, idx CountMax = 50, f32 Min = 0.01, f32 Max = 10.0, int Rounding = 2) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        WARNING_B

        DistReal<f32> dist(Min, Max);
        vec<vec<f32>> result;
        result.reserve(Sub);
        
        for(idx i = 0; i < Sub; i++) {
            result.push_back(vec<f32>{});

            const auto c = static_cast<idx>(DistInt<idx>(CountMin, CountMax)(gen));
            for(idx ii = 0; ii < c; ii++){
                result[i].reserve(c);
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }

    vec<vec<f64>> RandomNumsSBD(Twister64& gen, idx Sub = 64, idx CountMin = 25, idx CountMax = 50, f64 Min = 0.01, f64 Max = 10.0, int Rounding = 2) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        WARNING_B

        DistReal<f64> dist(Min, Max);
        vec<vec<f64>> result;
        result.reserve(Sub);

        for(idx i = 0; i < Sub; i++) {
            result.push_back(vec<f64>{});

            const auto c = static_cast<idx>(DistInt<idx>(CountMin, CountMax)(gen));
            for(idx ii = 0; ii < c; ii++){
                result[i].reserve(c);
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }
}