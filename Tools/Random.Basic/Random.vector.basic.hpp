#pragma once

#include "../Types.hpp"
#include "Random.common.hpp"

/* Fixed min/max value vectors */
namespace Tools::Random::Multi {
    vec<i32> RandomNumsVI(size_t count, i32 min, i32 max) {
        if(max < min){ swap(min, max); }
        if(count < 0){ count = count*(-1); }
        
        vec<i32> result;
        result.reserve(count);
        for (size_t i = 0; i < count; ++i) {
            result.push_back(RandomInt(min, max));
        }
        return result;
    }

    vec<i64> RandomNumsVL(size_t count, i64 min, i64 max) {
        if(max < min){ swap(min, max); }
        if(count < 0){ count = count*(-1); }
        
        vec<i64> result;
        result.reserve(count);
        for (size_t i = 0; i < count; ++i) {
            result.push_back(RandomInt(min, max));
        }
        return result;
    }

    vec<f32> RandomNumsVF(size_t count, f32 min, f32 max, int Rounding) {
        if(max < min){ swap(min, max); }
        if(count < 0){ count = count*(-1); }
        
        vec<f32> result;
        result.reserve(count);
        for (size_t i = 0; i < count; ++i) {
            f32 n = RandomReal(min, max);
            result.push_back(Tools::Round::Round(n, Rounding));
        }
        return result;
    }

    vec<f64> RandomNumsVD(size_t count, f64 min, f64 max, int Rounding) {
        if(max < min){ swap(min, max); }
        if(count < 0){ count = count*(-1); }
        
        vec<f64> result;
        result.reserve(count);
        for (size_t i = 0; i < count; ++i) {
            f64 n = RandomReal(min, max);
            result.push_back(Tools::Round::Round(n, Rounding));
        }
        return result;
    }

}