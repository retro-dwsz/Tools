#pragma once

#ifndef TOOLS_VECTOR_ERASE_HPP
#define TOOLS_VECTOR_ERASE_HPP

#include "../Types.hpp"
#include "../Casting.hpp"

/* Return Eraser: Delete the specified range */
namespace rdt::Vector {
    using namespace rdt::Cast;

    template <typename T>
    vec<T> Erase(const vec<T>& Data, idx Begin, idx End) {
        CheckRangeR(Begin, End);
        if (Data.empty()) return {};
        idx size = Data.size();
        idx b = std::min(Begin, size - 1);
        idx e = std::min(End, size - 1);
        if (b > e) std::swap(b, e);

        vec<T> result;
        result.reserve(size - (e - b + 1)); // Prevent reallocations
        result.insert(result.end(), Data.begin(), Data.begin() + b);
        result.insert(result.end(), Data.begin() + e + 1, Data.end());
        return result;
    }

    /* Return new: Erase by Single Index */
    template <typename T>
    vec<T> Erase(const vec<T>& Data, sidx Index) {
        if (Data.empty()) return {};
        idx size = Data.size();

        if (Index >= 0) {
            idx end = std::min(scast<idx>(Index), size - 1);
            return vec<T>(Data.begin() + end + 1, Data.end());
        } else {
            sidx actual_start = scast<sidx>(size) + Index;
            idx start = actual_start < 0 ? 0 : scast<idx>(actual_start);
            return vec<T>(Data.begin(), Data.begin() + start);
        }
    }
}

#endif