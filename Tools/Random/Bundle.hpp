#pragma once

#ifndef TOOLS_RANDOM_BUNDLE_HPP
#define TOOLS_RANDOM_BUNDLE_HPP

/* Budled vector with random elements of each sub-vector */

#include "_Common.hpp"

// Generic
namespace Tools::Random {
    template <typename Int>
    requires OneOf<Int, i32, i64>
    vec<vec<Int>> RandomNumsB(const idx SubVectorCount = 64, const idx Count = 256, Int Min = -100, Int Max = 100) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        sthread RdDevice Rd;
        sthread Twister64 Gen64(Rd());
        DistInt<Int> NResult(Min, Max);

        vec<vec<Int>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<Int>{});
            Result[i].reserve(Count);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < Count; ii++){
                Result[i].push_back(
                    NResult(Gen64)
                );
            }
        }

        return Result;
    }

    template <typename Real>
    requires OneOf<Real, f32, f64>
    vec<vec<Real>> RandomNumsB(const idx SubVectorCount = 64, const idx Count = 256, Real Min = -3.14, Real Max = 3.14, const u32 Rounding = 0) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        vec<vec<Real>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice Rd;
        sthread Twister64 Gen64(Rd());
        DistReal<Real> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<Real>{});
            Result[i].reserve(Count);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < Count; ii++){
                Result[i].push_back(
                    Round(NResult(Gen64), Rounding)
                );
            }
        }

        return Result;
    }
}

// Integers
namespace Tools::Random {
    vec<vec<i32>> RandomNumsBI(const idx SubVectorCount = 64, const idx Count = 256, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        vec<vec<i32>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice Rd;
        sthread Twister32 Gen32(Rd());
        DistInt<i32> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<i32>{});
            Result[i].reserve(Count);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < Count; ii++){
                Result[i].push_back(
                    NResult(Gen32)
                );
            }
        }

        return Result;
    }

    vec<vec<i64>> RandomNumsBL(const idx SubVectorCount = 64, const idx Count = 256, i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        sthread RdDevice Rd;
        sthread Twister64 Gen64(Rd());
        DistInt<i64> NResult(Min, Max);

        vec<vec<i64>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<i64>{});
            Result[i].reserve(Count);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < Count; ii++){
                Result[i].push_back(
                    NResult(Gen64)
                );
            }
        }

        return Result;
    }
}

// Floats
namespace Tools::Random {
    vec<vec<f32>> RandomNumsBF(const idx SubVectorCount = 64, const idx Count = 256, f32 Min = -2.71, f32 Max = 2.71, const u32 Rounding = 0) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        vec<vec<f32>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice Rd;
        sthread Twister64 Gen32(Rd());
        DistReal<f32> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<f32>{});
            Result[i].reserve(Count);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < Count; ii++){
                Result[i].push_back(
                    Round(NResult(Gen32), Rounding)
                );
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsBD(const idx SubVectorCount = 64, const idx Count = 256, f64 Min = -3.14, f64 Max = 3.14, const u32 Rounding = 0) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        vec<vec<f64>> Result;
        Result.reserve(SubVectorCount);

        sthread RdDevice Rd;
        sthread Twister64 Gen64(Rd());
        DistReal<f64> NResult(Min, Max);

        for(idx i = 0; i < SubVectorCount; i++){
            Result.emplace_back(vec<f64>{});
            Result[i].reserve(Count);
        }

        for(idx i = 0; i < SubVectorCount; i++) {
            for(idx ii = 0; ii < Count; ii++){
                Result[i].push_back(
                    Round(NResult(Gen64), Rounding)
                );
            }
        }

        return Result;
    }
}

#endif
