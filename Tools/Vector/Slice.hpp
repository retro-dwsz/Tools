#pragma once

#ifndef TOOLS_VECTOR_SLICE_HPP
#define TOOLS_VECTOR_SLICE_HPP

#include "../Types.hpp"

/* Return Slices: Keep only the specified range */
namespace Tools::Vector {
    /* Return new: Slice by Range [Begin, End] (Inclusive) */
    template <typename T>
    vec<T> Slice(const vec<T>& Data, idx Begin, idx End) {
        CheckRangeR(Begin, End);
        if (Data.empty()) return {};
        idx size = Data.size();
        idx b = std::min(Begin, size - 1);
        idx e = std::min(End, size - 1);
        if (b > e) std::swap(b, e);

        return vec<T>(Data.begin() + b, Data.begin() + e + 1);
    }

    /* Return new: Slice by Single Index (Positive: 0..N, Negative: End..N) */
    template <typename T>
    vec<T> Slice(const vec<T>& Data, sidx Index) {
        if (Data.empty()) return {};
        idx size = Data.size();

        if (Index >= 0) {
            idx end = std::min(static_cast<idx>(Index), size - 1);
            return vec<T>(Data.begin(), Data.begin() + end + 1);
        } else {
            sidx actual_start = static_cast<sidx>(size) + Index;
            idx start = actual_start < 0 ? 0 : static_cast<idx>(actual_start);
            return vec<T>(Data.begin() + start, Data.end());
        }
    }

}

template vec<i32> Tools::Vector::Slice<i32>(const vec<i32>& Data, idx Begin, idx End);
template vec<i64> Tools::Vector::Slice<i64>(const vec<i64>& Data, idx Begin, idx End);
template vec<f32> Tools::Vector::Slice<f32>(const vec<f32>& Data, idx Begin, idx End);
template vec<f64> Tools::Vector::Slice<f64>(const vec<f64>& Data, idx Begin, idx End);

template vec<i32> Tools::Vector::Slice<i32>(const vec<i32>& Data, sidx Index);
template vec<i64> Tools::Vector::Slice<i64>(const vec<i64>& Data, sidx Index);
template vec<f32> Tools::Vector::Slice<f32>(const vec<f32>& Data, sidx Index);
template vec<f64> Tools::Vector::Slice<f64>(const vec<f64>& Data, sidx Index);


#endif
