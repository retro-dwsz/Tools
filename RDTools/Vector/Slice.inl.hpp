#pragma once

#ifndef TOOLS_VECTOR_SLICE_INLINE_HPP
#define TOOLS_VECTOR_SLICE_INLINE_HPP

#include "../Types.hpp"

/* Inline Slices: Keep only the specified range in-place */
namespace rdt::Vector {
    template <typename T>
    void Slice(vec<T>* Data, idx Begin, idx End) {
        CheckRangeR(Begin, End);
        if (!Data || Data->empty()) return;
        idx size = Data->size();
        idx b = std::min(Begin, size - 1);
        idx e = std::min(End, size - 1);
        if (b > e) std::swap(b, e);

        // Hapus bagian belakang dulu agar iterator depan tidak invalid
        Data->erase(Data->begin() + e + 1, Data->end());
        Data->erase(Data->begin(), Data->begin() + b);
    }

    /* Inline: Slice by Single Index */
    template <typename T>
    void Slice(vec<T>* Data, const sidx Index) {
        if (!Data || Data->empty()) return;
        idx size = Data->size();

        if (Index >= 0) {
            idx end = std::min(static_cast<idx>(Index), size - 1);
            Data->erase(Data->begin() + end + 1, Data->end());
        } else {
            sidx actual_start = static_cast<sidx>(size) + Index;
            idx start = actual_start < 0 ? 0 : static_cast<idx>(actual_start);
            Data->erase(Data->begin(), Data->begin() + start);
        }
    }
}

template void rdt::Vector::Slice(vec<i32>* Data, idx Begin, idx End);
template void rdt::Vector::Slice(vec<i64>* Data, idx Begin, idx End);
template void rdt::Vector::Slice(vec<f32>* Data, idx Begin, idx End);
template void rdt::Vector::Slice(vec<f64>* Data, idx Begin, idx End);

template void rdt::Vector::Slice(vec<i32>* Data, sidx Index);
template void rdt::Vector::Slice(vec<i64>* Data, sidx Index);
template void rdt::Vector::Slice(vec<f32>* Data, sidx Index);
template void rdt::Vector::Slice(vec<f64>* Data, sidx Index);

#endif
