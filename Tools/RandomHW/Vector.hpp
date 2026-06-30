#pragma once

#ifndef TOOLS_RANDOM_HW_VECTOR_HPP
#define TOOLS_RANDOM_HW_VECTOR_HPP

#include "Common.hpp"

// Integers
namespace Tools::RandomHW {
    void WarningCount(const idx& Count){
        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::println("{}", "!!");
            #else
            std::println("{}", Warning);
            #endif
        }
    }

    vec<i32> RandomNumsVI(Random::Twister32& Gen32, const idx Count = 10, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        WarningCount(Count);

        Random::DistInt<i32> Dist32(Min, Max);
        vec<i32> Result;
        for(idx i = 0; i < Count; i++) {
            Result.push_back(Dist32(Gen32));
        }

        return Result;
    }

    vec<i64> RandomNumsVL(Random::Twister64& Gen64, const idx Count = 10, i64 Min = -100, i64 Max = -100) {
        CheckRange(Min, Max);
        WarningCount(Count);

        Random::DistInt<i64> dist(Min, Max);
        vec<i64> Result;

        for(idx i = 0; i < Count; i++) {
            Result.push_back(dist(Gen64));
        }

        return Result;
    }
}

// Float
namespace Tools::RandomHW {
    vec<f32> RandomNumsVF(Random::Twister32& Gen32, const idx Count = 10, f32 Min = -2.71, f32 Max = 2.71) {
        CheckRange(Min, Max);
        WarningCount(Count);

        Random::DistReal<f32> Dist32(Min, Max);
        vec<f32> Result;
        for(idx i = 0; i < Count; i++) {
            Result.push_back(Dist32(Gen32));
        }

        return Result;
    }

    vec<f64> RandomNumsVD(Random::Twister64& Gen64, const idx Count = 10, f64 Min = -3.14, f64 Max = 3.14) {
        CheckRange(Min, Max);
        WarningCount(Count);

        Random::DistReal<f64> Dist(Min, Max);
        vec<f64> Result;
        for(idx i = 0; i < Count; i++) {
            Result.push_back(Dist(Gen64));
        }

        return Result;
    }
}

// Float with rounding
namespace Tools::RandomHW {
    vec<f32> RandomNumsVF(Random::Twister32& gen, const idx Count = 10, f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        WarningCount(Count);

        Random::DistReal<f32> dist(Min, Max);
        vec<f32> Result;
        for(idx i = 0; i < Count; i++) {
            Result.push_back(Round(dist(gen), Rounding));
        }

        return Result;
    }

    vec<f64> RandomNumsVD(Random::Twister64& gen, const idx Count = 10, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        WarningCount(Count);

        Random::DistReal<f64> dist(Min, Max);
        vec<f64> Result;
        for(idx i = 0; i < Count; i++) {
            Result.push_back(Round(dist(gen), Rounding));
        }

        return Result;
    }
}
#endif
