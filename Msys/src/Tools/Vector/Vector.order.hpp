#pragma once

#include "../Randomizer.hpp"
#include "../Types.hpp"
#include <algorithm>

namespace Tools::Vector {
    template <Numbers T>
    vec<T> Sort(const vec<T>& v){
        vec<T> out(v);
        std::ranges::sort(out);
        return out;
    }

    template <Numbers T>
    vec<T> Shuffle(const vec<T>& v){
        RdDevice rd;
        Twister32 gen(rd);

        vec<T> out(v);
        std::ranges::shuffle(out, gen);
        return out;
    };

    template <Numbers T>
    vec<T> Reverse(const vec<T>& v){
        vec<T> out(v);
        std::ranges::reverse(out);
        return out;
    }
}

template vec<i32> Tools::Vector::Sort<i32>(const vec<i32>& v);
template vec<i64> Tools::Vector::Sort<i64>(const vec<i64>& v);
template vec<f32> Tools::Vector::Sort<f32>(const vec<f32>& v);
template vec<f64> Tools::Vector::Sort<f64>(const vec<f64>& v);