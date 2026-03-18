#pragma once

#ifndef TOOLS_SBUNDLE_HPP
#define TOOLS_SBUNDLE_HPP

/* Budled vector with randomized elements of each sub-vector */

#include "Random.common.hpp"

namespace Tools::Random {
    vec<vec<i32>> RandomNumsSBI(idx Sub = 64, idx CountMin = 25, idx CountMax = 50, i32 Min = -10, i32 Max = 10) {
        if(Max < Min) std::swap(Min, Max);
        if(CountMax < CountMin) std::swap(CountMin, CountMax);

        if(Sub > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<vec<i32>> result;
        result.reserve(Sub);

        RdDevice rd;
        Twister32 gen(rd());

        DistInt<idx>  dist_count(CountMin, CountMax);
        DistInt<i32>  dist_val(Min, Max);

        for(idx i = 0; i < Sub; ++i) {
            idx c = dist_count(gen);

            auto& v = result.emplace_back();
            v.reserve(c);

            for(idx j = 0; j < c; ++j) {
                v.push_back(dist_val(gen));
            }
        }

        return result;
    }

    vec<vec<i64>> RandomNumsSBL(idx Sub = 64, idx CountMin = 25, idx CountMax = 50, i64 Min = -100, i64 Max = 100) {
        if(Max < Min) std::swap(Min, Max);
        if(CountMax < CountMin) std::swap(CountMin, CountMax);

        if(Sub > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<vec<i64>> result;
        result.reserve(Sub);

        RdDevice rd;
        Twister32 gen(rd());

        DistInt<idx>  dist_count(CountMin, CountMax);
        DistInt<i64>  dist_val(Min, Max);

        for(idx i = 0; i < Sub; ++i) {
            idx c = dist_count(gen);

            auto& v = result.emplace_back();
            v.reserve(c);

            for(idx j = 0; j < c; ++j) {
                v.push_back(dist_val(gen));
            }
        }

        return result;
    }

    vec<vec<f32>> RandomNumsSBF(idx Sub = 64, idx CountMin = 25, idx CountMax = 50, f32 Min = -2.71, f32 Max = 2.71, int Rounding = 2) {
        if(Max < Min) std::swap(Min, Max);
        if(CountMax < CountMin) std::swap(CountMin, CountMax);

        if(Sub > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<vec<f32>> result;
        result.reserve(Sub);

        RdDevice rd;
        Twister32 gen(rd());

        DistInt<idx>  dist_count(CountMin, CountMax);
        DistReal<f32> dist_val(Min, Max);

        for(idx i = 0; i < Sub; ++i) {
            idx c = dist_count(gen);

            auto& v = result.emplace_back();
            v.reserve(c);

            for(idx j = 0; j < c; ++j) {
                v.push_back(
                    Tools::Round::Round(dist_val(gen), Rounding)
                );
            }
        }

        return result;
    }

    vec<vec<f64>> RandomNumsSBD(idx Sub = 64, idx CountMin = 25, idx CountMax = 50, f64 Min = -3.14, f64 Max = 3.14, int Rounding = 2) {
        if(Max < Min) std::swap(Min, Max);
        if(CountMax < CountMin) std::swap(CountMin, CountMax);

        if(Sub > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<vec<f64>> result;
        result.reserve(Sub);

        RdDevice rd;
        Twister32 gen(rd());

        DistInt<idx>  dist_count(CountMin, CountMax);
        DistReal<f64> dist_val(Min, Max);

        for(idx i = 0; i < Sub; ++i) {
            idx c = dist_count(gen);

            auto& v = result.emplace_back();
            v.reserve(c);

            for(idx j = 0; j < c; ++j) {
                v.push_back(
                    Tools::Round::Round(dist_val(gen), Rounding)
                );
            }
        }

        return result;
    }
}

#endif
