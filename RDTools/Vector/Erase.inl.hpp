#pragma once

#ifndef TOOLS_VECTOR_ERASE_HPP
#define TOOLS_VECTOR_ERASE_HPP

#include "../Types.hpp"
#include "../Casting.hpp"

/* Inline Eraser: Delete the specified range in-place */
namespace rdt::Vector {
    using namespace rdt::Cast;

    /* Inline: Erase by Range */
    template <typename T>
    void Erase(vec<T>* Data, const idx Begin,const idx End) {
        CheckRangeR(Begin, End);
        if (!Data || Data->empty()) return;
        idx size = Data->size();
        idx b = std::min(Begin, size - 1);
        idx e = std::min(End, size - 1);
        if (b > e) std::swap(b, e);

        Data->erase(Data->begin() + b, Data->begin() + e + 1);
    }

    /* Inline: Erase by Single Index (Fixed to sidx for consistency) */
    template <typename T>
    void Erase(vec<T>* Data, const sidx Index) {
        if (!Data || Data->empty()) return;
        idx size = Data->size();

        if (Index >= 0) {
            idx end = std::min(scast<idx>(Index), size - 1);
            Data->erase(Data->begin(), Data->begin() + end + 1);
        } else {
            sidx actual_start = scast<sidx>(size) + Index;
            idx start = actual_start < 0 ? 0 : scast<idx>(actual_start);
            Data->erase(Data->begin() + start, Data->end());
        }
    }
}

#endif