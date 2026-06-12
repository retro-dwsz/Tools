#pragma once

#ifndef TOOLS_RANDOM_VECTOR_HPP
#define TOOLS_RANDOM_VECTOR_HPP

/* Vector functions with fixed min/max value vectors */

#include "Random.common.hpp"

namespace Tools::Random {
    using Tools::Round::Round;

    void WarningCount(const idx& Count){
        if(Count > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            std::println("{}", "!!");
            #else
            std::println("{}", Warning);
            #endif
        }
    }
}

// Integers
namespace Tools::Random {
    vec<i32> RandomNumsVI(const idx Count = 10, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        WarningCount(Count);

        vec<i32> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister32 Gen32(rd());
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
        WarningCount(Count);

        vec<i64> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister64 Gen64(rd());
        DistInt<i64> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            Result.push_back(
                NResult(Gen64)
            );
        }
        return Result;
    }
}

// Floats
namespace Tools::Random {
    vec<f32> RandomNumsVF(const idx Count = 10, f32 Min = -2.71, f32 Max = 2.71) {
        CheckRange(Min, Max);
        WarningCount(Count);

        vec<f32> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister32 Gen32(rd());
        DistReal<f32> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            Result.push_back(
                NResult(Gen32)
            );
        }

        return Result;
    }

    vec<f64> RandomNumsVD(const idx Count = 10, f64 Min = -3.14, f64 Max = 3.14) {
        CheckRange(Min, Max);
        WarningCount(Count);

        vec<f64> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister64 Gen64(rd());
        DistReal<f64> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            Result.push_back(
                NResult(Gen64)
            );
        }

        return Result;
    }
}

// Floats with rounding
namespace Tools::Random {
    vec<f32> RandomNumsVF(const idx Count = 10, f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        WarningCount(Count);

        vec<f32> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister32 Gen32(rd());
        DistReal<f32> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            Result.push_back(
                Round(NResult(Gen32), Rounding)
            );
        }

        return Result;
    }

    vec<f64> RandomNumsVD(const idx Count = 10, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        WarningCount(Count);

        vec<f64> Result;
        Result.reserve(Count);

        sthread RdDevice rd;
        sthread Twister64 Gen64(rd());
        DistReal<f64> NResult(Min, Max);

        for (idx i = 0; i < Count; ++i) {
            Result.push_back(
                Round(NResult(Gen64), Rounding)
            );
        }

        return Result;
    }
}
#endif
