#pragma once

#ifndef TOOLS_VECTOR_ORDER_HPP
#define TOOLS_VECTOR_ORDER_HPP

#include "../Randomizer.hpp"
#include "../Types.hpp"
#include <algorithm>

namespace rdt::Vector {
    template <typename T>
    vec<T> Sort(const vec<T>& v){
        vec<T> out(v);
        std::ranges::sort(out);
        return out;
    }

    template <typename T>
    vec<T> Shuffle(const vec<T>& v){
        vec<T> out(v);
        static thread_local Random::RdDevice Rd;
        static thread_local Random::Twister64 Gen64(Rd());
        std::ranges::shuffle(out, Gen64);
        return out;
    };

    template <typename T>
    vec<T> Reverse(const vec<T>& v){
        vec<T> out(v);
        std::ranges::reverse(out);
        return out;
    }
}

namespace rdt::Vector {
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
    vec<T> Blend(const vec<T>& First, const Args&... Rest) {
        return Shuffle(
            Combine(First, Rest...)
        );
    }
}

namespace rdt::Vector {
    // Remove duplicated values for any others
    template<typename T>
    vec<T> RemoveDuplicates(const vec<T>& Data, const idx MaxCount = 1, const bool Sorted = false) {
        vec<T> Out(Data);
        if(Sorted){
            auto U = std::unique(Out.begin(), Out.end());
            Out.erase(U, Out.end());
        } else if(!Sorted){
            RemoveDuplicatesInl(Out);
        }

        return Out;
    }
}

template vec<i8> rdt::Vector::Sort<i8>(const vec<i8>& v);
template vec<u8> rdt::Vector::Sort<u8>(const vec<u8>& v);

template vec<i16> rdt::Vector::Sort<i16>(const vec<i16>& v);
template vec<u16> rdt::Vector::Sort<u16>(const vec<u16>& v);

template vec<i32> rdt::Vector::Sort<i32>(const vec<i32>& v);
template vec<u32> rdt::Vector::Sort<u32>(const vec<u32>& v);

template vec<i64> rdt::Vector::Sort<i64>(const vec<i64>& v);
template vec<u64> rdt::Vector::Sort<u64>(const vec<u64>& v);

template vec<f32> rdt::Vector::Sort<f32>(const vec<f32>& v);
template vec<f64> rdt::Vector::Sort<f64>(const vec<f64>& v);

#endif
