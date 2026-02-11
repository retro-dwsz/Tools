#pragma once

#include "../Types.hpp"

/* Slices */
namespace Tools::Vector {
    // Return new vector versions
    template <typename T>
    vec<T> Slice(cref<vec<T>> vec, idx x, idx y) {
        // Handle negative indices
        const auto size = static_cast<idx>(vec.size());
        if (x < 0) x = size + x;
        if (y < 0) y = size + y;

        // Validate bounds
        if (x < 0 || y < 0 || x >= size || y >= size || x > y) {
            throw std::out_of_range("Invalid slice range");
        }

        return ::vec<T>(vec.begin() + x, vec.begin() + y + 1);
    }

    template <typename T>
    vec<T> Slice(cref<vec<T>> vec, idx n) {
        const auto size = static_cast<idx>(vec.size());
        idx start, end;

        if (n >= 0) {
            // From beginning: [0, n]
            start = 0;
            end = n;
        } else {
            // From end: [size + n, size - 1]
            start = size + n;
            end = size - 1;
        }

        // Validate bounds
        if (start < 0 || end >= size || start > end) {
            throw std::out_of_range("Invalid slice range");
        }

        return ::vec<T>(vec.begin() + start, vec.begin() + end + 1);
    }
}