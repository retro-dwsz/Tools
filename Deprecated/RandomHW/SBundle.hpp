#pragma once

#ifndef TOOLS_RANDOM_HW_SBUNDLE_HPP
#define TOOLS_RANDOM_HW_SBUNDLE_HPP

#include "Common.hpp"

// Integer
namespace Tools::RandomHW {
    using Tools::Round::Round;
    using Tools::Cast::scast;

    vec<vec<i32>> RandomNumsSBI(Random::Twister32& Gen32, const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        Random::DistInt<i32> Dist32(Min, Max);
        vec<vec<i32>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++) {
            Result.push_back(vec<i32>{});
            Random::DistInt<idx> NDist(CountMin, CountMax);

            const auto c = scast<idx>(NDist(Gen32));
            for(idx ii = 0; ii < c; ii++){
                Result[i].reserve(c);
                Result[i].push_back(Dist32(Gen32));
            }
        }

        return Result;
    }

    vec<vec<i64>> RandomNumsSBL(Random::Twister64& Gen64, const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        Random::DistInt<i64> Dist64(Min, Max);
        vec<vec<i64>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++) {
            Result.push_back(vec<i64>{});
            Random::DistInt<idx> NDist(CountMin, CountMax);

            const auto c = scast<idx>(NDist(Gen64));
            for(idx ii = 0; ii < c; ii++){
                Result[i].reserve(c);
                Result[i].push_back(Dist64(Gen64));
            }
        }

        return Result;
    }
}

// Float
namespace Tools::RandomHW {
    vec<vec<f32>> RandomNumsSBF(Random::Twister32& Gen32, const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f32 Min = -2.71, f32 Max = 2.71) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        Random::DistReal<f32> Dist32(Min, Max);
        vec<vec<f32>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++) {
            Result.push_back(vec<f32>{});
            Random::DistInt<idx> NDist(CountMin, CountMax);

            const auto c = scast<idx>(NDist(Gen32));
            for(idx ii = 0; ii < c; ii++){
                Result[i].reserve(c);
                Result[i].push_back(Dist32(Gen32));
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsSBD(Random::Twister64& Gen64, const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f64 Min = -3.14, f64 Max = 3.14) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        Random::DistReal<f64> Dist64(Min, Max);
        vec<vec<f64>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++) {
            Result.push_back(vec<f64>{});
            Random::DistInt<idx> NDist(CountMin, CountMax);

            const auto c = scast<idx>(NDist(Gen64));
            for(idx ii = 0; ii < c; ii++){
                Result[i].reserve(c);
                Result[i].push_back(Dist64(Gen64));
            }
        }

        return Result;
    }
}

// Float with round
namespace Tools::RandomHW {
    vec<vec<f32>> RandomNumsSBF(Random::Twister32& Gen32, const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f32 Min = -2.71, f32 Max = 2.71, i32 Rounding = 2) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        Random::DistReal<f32> Dist32(Min, Max);
        vec<vec<f32>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++) {
            Result.push_back(vec<f32>{});
            Random::DistInt<idx> NDist(CountMin, CountMax);

            const auto c = scast<idx>(NDist(Gen32));
            for(idx ii = 0; ii < c; ii++){
                Result[i].reserve(c);
                Result[i].push_back(Round(Dist32(Gen32), Rounding));
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsSBD(Random::Twister64& Gen64, const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f64 Min = 3.14, f64 Max = 3.14, i32 Rounding = 2) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);

        Random::DistReal<f64> Dist64(Min, Max);
        vec<vec<f64>> Result;
        Result.reserve(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++) {
            Result.push_back(vec<f64>{});
            Random::DistInt<idx> NDist(CountMin, CountMax);

            const auto c = scast<idx>(NDist(Gen64));
            for(idx ii = 0; ii < c; ii++){
                Result[i].reserve(c);
                Result[i].push_back(Round(Dist64(Gen64), Rounding));
            }
        }

        return Result;
    }
}
#endif
