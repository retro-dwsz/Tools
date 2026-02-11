#pragma once

#include "../Types.hpp"
#include "Random.common.hpp"
#include "Random.vector.basic.hpp"

/* Budled vector with random elements of each sub-vector */
namespace Tools::Random::Bundle {
    vec<vec<i32>> RandomNumsBI(const idx sub = 64, const idx Count = 50'000, const i32 Min = 0, const i32 Max = 100) {
        vec<vec<i32>> result;
        result.reserve(sub);
        for(idx i = 0; i < sub; i++) {
            result.push_back(
                Multi::RandomNumsVI(Count, Min, Max)
            );
        }

        return result;
    }

    vec<vec<i64>> RandomNumsBL(const idx sub = 64, const idx Count = 50'000, const i64 Min = 0, const i64 Max = 100) {
        vec<vec<i64>> result;
        result.reserve(sub);
        for(idx i = 0; i < sub; i++) {
            result.push_back(
                Multi::RandomNumsVL(Count, Min, Max)
            );
        }

        return result;
    }

    vec<vec<f32>> RandomNumsBF(const idx sub = 64, const idx Count = 50'000, const f32 Min = 10.01, const f32 Max = 50.99, const int Round = 2) {
        vec<vec<f32>> result;
        result.reserve(sub);
        for(idx i = 0; i < sub; i++) {
            result.push_back(
                Multi::RandomNumsVF(Count, Min, Max, Round)
            );
        }

        return result;
    }

    vec<vec<f64>> RandomNumsBD(const idx sub = 64, const idx Count = 50'000, const f64 Min = 10.01, const f64 Max = 50.99, const int Round = 2) {
        vec<vec<f64>> result;
        result.reserve(sub);
        for(idx i = 0; i < sub; i++) {
            result.push_back(
                Multi::RandomNumsVD(Count, Min, Max, Round)
            );
        }

        return result;
    }
}