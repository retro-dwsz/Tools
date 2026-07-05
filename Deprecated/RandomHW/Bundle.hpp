#pragma once

#ifndef TOOLS_RANDOM_HW_BUNDLE_HPP
#define TOOLS_RANDOM_HW_BUNDLE_HPP

#include "Vector.hpp"
#include "Common.hpp"

namespace Tools::RandomHW {
    void WarningCount(const idx& SubVectorCount, const idx& NCount){
        if(SubVectorCount > INT32_MAX || NCount > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::println("{}", "!!");
            #else
            std::println("{}", Warning);
            #endif
        }
    }
}

// Integers
namespace Tools::RandomHW {
    vec<vec<i32>> RandomNumsBI(Random::Twister32& Gen32, const idx SubVectorCount = 5, const idx Count = 10, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        Random::DistInt<i32> Dist32(Min, Max);
        vec<vec<i32>> Result;

        for(idx i = 0; i < SubVectorCount; i++){
            Result.push_back(vec<i32>{});
            Result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                Result[i].push_back(Dist32(Gen32));
            }
        }

        return Result;
    }

    vec<vec<i64>> RandomNumsBL(Random::Twister64& Gen64, const idx SubVectorCount = 5, const idx Count = 10, i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        Random::DistInt<i64> Dist64(Min, Max);
        vec<vec<i64>> Result;

        for(idx i = 0; i < SubVectorCount; i++){
            Result.push_back(vec<i64>{});
            Result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                Result[i].push_back(Dist64(Gen64));
            }
        }

        return Result;
    }
}

// Float
namespace Tools::RandomHW {
    vec<vec<f32>> RandomNumsBF(Random::Twister32& Gen32, const idx SubVectorCount = 5, const idx Count = 10, f32 Min = -2.71, f32 Max = 3.14) {
        CheckRange(Min, Max);
        WarningCount(SubVectorCount, Count);

        Random::DistReal<f32> dist(Min, Max);
        vec<vec<f32>> result;

        for(idx i = 0; i < SubVectorCount; i++){
            result.push_back(vec<f32>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(dist(Gen32));
            }
        }

        return result;
    }

    vec<vec<f64>> RandomNumsBD(Random::Twister64& gen, const idx Sub, const idx Count, f64 min, f64 max) {
        CheckRange(min, max);

        Random::DistReal<f64> dist(min, max);
        vec<vec<f64>> result;

        for(idx i = 0; i < Sub; i++){
            result.push_back(vec<f64>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(dist(gen));
            }
        }

        return result;
    }
}

// Float with rounding
namespace Tools::RandomHW {
    vec<vec<f32>> RandomNumsBF(Random::Twister32& Gen32, const idx SubVectorCount = 5, const idx Count  = 10, f32 Min = -2.17, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);

        Random::DistReal dist(Min, Max);
        vec<vec<f32>> result;

        for(idx i = 0; i < SubVectorCount; i++){
            result.push_back(vec<f32>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(Round(dist(Gen32), Rounding));
            }
        }

        return result;
    }

    vec<vec<f64>> RandomNumsBD(Random::Twister64& Gen64, const idx SubvectorCount = 5, const idx Count = 10, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);

        Random::DistReal dist(Min, Max);
        vec<vec<f64>> result;

        for(idx i = 0; i < SubvectorCount; i++){
            result.push_back(vec<f64>{});
            result[i].reserve(Count);
        }

        for(idx i = 0; i < Count; i++) {
            for(idx ii = 0; ii < Count; ii++){
                result[i].push_back(Round(dist(Gen64), Rounding));
            }
        }

        return result;
    }
}

#endif
