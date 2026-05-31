#pragma once

#ifndef TOOLS_RANDOM_BUNDLE_HPP
#define TOOLS_RANDOM_BUNDLE_HPP

/* Budled vector with random elements of each sub-vector */

#include "Random.common.hpp"

// Integers
namespace Tools::Random {
    vec<vec<i32>> RandomNumsBI(const idx SubVectorCount = 64, const idx NCount = 256, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, NCount);

        vec<vec<i32>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice rd;
        cthread Twister32 Gen32(rd());
        DistInt<i32> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<i32>{});
            Result[i].reserve(NCount);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < NCount; ii++){
                Result[i].push_back(
                    NResult(Gen32)
                );
            }
        }

        return Result;
    }

    vec<vec<i64>> RandomNumsBL(const idx SubVectorCount = 64, const idx NCount = 256, i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, NCount);

        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());
        DistInt<i64> NResult(Min, Max);

        vec<vec<i64>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<i64>{});
            Result[i].reserve(NCount);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < NCount; ii++){
                Result[i].push_back(
                    NResult(Gen64)
                );
            }
        }

        return Result;
    }
}

// Float
namespace Tools::Random {
    vec<vec<f32>> RandomNumsBF(const idx SubVectorCount = 64, const idx NCount = 256, f32 Min = -2.71, f32 Max = 2.71) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, NCount);

        vec<vec<f32>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice rd;
        cthread Twister64 Gen32(rd());
        DistReal<f32> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<f32>{});
            Result[i].reserve(NCount);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < NCount; ii++){
                Result[i].push_back(NResult(Gen32));
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsBD(const idx SubVectorCount = 64, const idx NCount = 256, f64 Min = -3.14, f64 Max = 3.14) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, NCount);

        vec<vec<f64>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());
        DistReal<f64> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<f64>{});
            Result[i].reserve(NCount);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < NCount; ii++){
                Result[i].push_back(NResult(Gen64));
            }
        }

        return Result;
    }
}

// Float with rounding
namespace Tools::Random {
    vec<vec<f32>> RandomNumsBF(const idx SubVectorCount = 64, const idx NCount = 256, f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, NCount);

        vec<vec<f32>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice rd;
        cthread Twister64 Gen32(rd());
        DistReal<f32> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<f32>{});
            Result[i].reserve(NCount);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < NCount; ii++){
                Result[i].push_back(
                    Round(NResult(Gen32), Rounding)
                );
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsBD(const idx SubVectorCount = 64, const idx NCount = 256, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, NCount);

        vec<vec<f64>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice rd;
        cthread Twister64 Gen64(rd());
        DistReal<f64> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<f64>{});
            Result[i].reserve(NCount);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < NCount; ii++){
                Result[i].push_back(
                    Round(NResult(Gen64), Rounding)
                );
            }
        }

        return Result;
    }
}

#endif
