#pragma once

#ifndef TOOLS_VECTOR_ORDER_HPP
#define TOOLS_VECTOR_ORDER_HPP

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

    template <typename T>
    vec<T> Shuffle(const vec<T>& v){
        RdDevice rd;
        Twister32 gen(rd());

        vec<T> out(v);
        std::ranges::shuffle(out, gen);
        return out;
    };

    template <typename T>
    vec<T> Reverse(const vec<T>& v){
        vec<T> out(v);
        std::ranges::reverse(out);
        return out;
    }

    template <typename T, typename... Args>
    vec<T> Combine(const vec<T>& First, const Args&... Rest) {
        vec<T> Result{};

        idx TotalSize = First.size() + (Rest.size() + ...);
        Result.reserve(TotalSize);

        Result.insert(Result.end(), First.begin(), First.end());
        (Result.insert(Result.end(), Rest.begin(), Rest.end()), ...);

        return Result;
    }

    template <typename T, typename... Args>
    vec<T> BlendVectors(const vec<T>& First, const Args&... Rest) {
        return Shuffle(
            CombineVectors(First, Rest...)
        );
    }
}

template vec<i8> Tools::Vector::Sort<i8>(const vec<i8>& v);
template vec<u8> Tools::Vector::Sort<u8>(const vec<u8>& v);

template vec<i16> Tools::Vector::Sort<i16>(const vec<i16>& v);
template vec<u16> Tools::Vector::Sort<u16>(const vec<u16>& v);

template vec<i32> Tools::Vector::Sort<i32>(const vec<i32>& v);
template vec<u32> Tools::Vector::Sort<u32>(const vec<u32>& v);

template vec<i64> Tools::Vector::Sort<i64>(const vec<i64>& v);
template vec<u64> Tools::Vector::Sort<u64>(const vec<u64>& v);

template vec<f32> Tools::Vector::Sort<f32>(const vec<f32>& v);
template vec<f64> Tools::Vector::Sort<f64>(const vec<f64>& v);

#endif
