#pragma once

#ifndef TOOLS_RANDOM_BASIC_SBUNDLE_HPP
#define TOOLS_RANDOM_BASIC_SBUNDLE_HPP

#include "Tools/Types.hpp"
#include "Random.basic.common.hpp"
#include "Random.basic.vector.hpp"
#include "Random.basic.single.hpp"

/* Bundled vector with randomized elements of each sub-vector */
namespace Tools::Random::Bundle {
    vec<vec<i32>> RandomNumsSBL(const idx sub = 64, const idx CountMin = 25, const idx CountMax = 50, const i32 Min = 0, const i32 Max = 10) {
        vec<vec<i32>> result;
        result.reserve(sub);
        for(idx i = 0; i < sub; i++) {
            const auto c = static_cast<idx>(Single::RandomNumL(CountMin, CountMax));
            result.push_back(
                Multi::RandomNumsVI(c, Min, Max)
            );
        }

        return result;
    }

    vec<vec<i64>> RandomNumsSBL(const idx sub = 64, const idx CountMin = 25, const idx CountMax = 50, const i64 Min = 0, const i64 Max = 10) {
        vec<vec<i64>> result;
        result.reserve(sub);
        for(idx i = 0; i < sub; i++) {
            const auto c = static_cast<idx>(Single::RandomNumL(CountMin, CountMax));
            result.push_back(
                Multi::RandomNumsVL(c, Min, Max)
            );
        }

        return result;
    }

    vec<vec<f64>> RandomNumsSBL(const idx sub = 64, const idx CountMin = 25, const idx CountMax = 50, const f64 Min = 0.01, const f64 Max = 10.0, const int Round = 2) {
        vec<vec<f64>> result;
        result.reserve(sub);
        for(idx i = 0; i < sub; i++) {
            const auto c = static_cast<idx>(Single::RandomNumL(CountMin, CountMax));
            result.push_back(
                Multi::RandomNumsVD(c, Min, Max, Round)
            );
        }

        return result;
    }

    vec<vec<f64>> RandomNumsSBD(const idx sub = 64, const idx CountMin = 25, const idx CountMax = 50, const f64 Min = 0.01, const f64 Max = 10.0, const int Round = 2) {
        vec<vec<f64>> result;
        result.reserve(sub);
        for(idx i = 0; i < sub; i++) {
            const auto c = static_cast<idx>(Single::RandomNumI(CountMin, CountMax));
            result.push_back(
                Multi::RandomNumsVD(c, Min, Max, Round)
            );
        }

        return result;
    }
}

#endif
