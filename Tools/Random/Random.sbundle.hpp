#pragma once

#ifndef TOOLS_RANDOM_SBUNDLE_HPP
#define TOOLS_RANDOM_SBUNDLE_HPP

/* Budled vector with randomized elements of each sub-vector */

#include "Random.common.hpp"

namespace Tools::Random {
    using Tools::Round::Round;

    void WarningCount(const idx& SubVectorCount, const idx& CountMin, const idx& CountMax){
        if(SubVectorCount > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::println("{}", "!!");
            #else
            std::println("{}", Warning);
            #endif
        }
    }
}

// Integer
namespace Tools::Random {
    vec<vec<i32>> RandomNumsSBI(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMin, CountMax);

        vec<vec<i32>> Result;
        Result.reserve(SubVectorCount);

        RdDevice rd;
        Twister32 Gen32(rd());

        DistInt<idx>  DistCount(CountMin, CountMax);
        DistInt<i32>  NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen32);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(NResult(Gen32));
            }
        }

        return Result;
    }

    vec<vec<i64>> RandomNumsSBL(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMin, CountMax);

        vec<vec<i64>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());

        DistInt<idx>  DistCount(CountMin, CountMax);
        DistInt<i64>  NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen64);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(NResult(Gen64));
            }
        }

        return Result;
    }
}

// Floats
namespace Tools::Random {
    vec<vec<f32>> RandomNumsSBF(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f32 Min = -2.71, f32 Max = 2.71) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMin, CountMax);

        vec<vec<f32>> Result;
        Result.reserve(SubVectorCount);

        RdDevice rd;
        Twister32 Gen32(rd());

        DistInt<idx>  DistCount(CountMin, CountMax);
        DistReal<f32> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen32);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(NResult(Gen32));
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsSBD(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f64 Min = -3.14, f64 Max = 3.14) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMin, CountMax);

        vec<vec<f64>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());

        DistInt<idx>  DistCount(CountMin, CountMax);
        DistReal<f64> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen64);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(NResult(Gen64));
            }
        }

        return Result;
    }
}

// Floats with rounding
namespace Tools::Random {
    vec<vec<f32>> RandomNumsSBF(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMin, CountMax);

        vec<vec<f32>> Result;
        Result.reserve(SubVectorCount);

        RdDevice rd;
        Twister32 Gen32(rd());

        DistInt<idx>  DistCount(CountMin, CountMax);
        DistReal<f32> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen32);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(
                    Round(NResult(Gen32), Rounding)
                );
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsSBD(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMin, CountMax);

        vec<vec<f64>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());

        DistInt<idx>  DistCount(CountMin, CountMax);
        DistReal<f64> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; ++i) {
            idx NCount = DistCount(Gen64);

            auto& v = Result.emplace_back();
            v.reserve(NCount);

            for(idx j = 0; j < NCount; ++j) {
                v.push_back(
                    Round(NResult(Gen64), Rounding)
                );
            }
        }

        return Result;
    }
}

#endif
