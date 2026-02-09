#pragma once

#include "Types.containers.hpp"

namespace Tools::VectorSlice {
    // Return new vector versions
    template <typename T>
    vec<T> Slice(vec<T> vec, int x, int y) {
        // Handle negative indices
        const auto size = static_cast<int>(vec.size());
        if (x < 0) x = size + x;
        if (y < 0) y = size + y;

        // Validate bounds
        if (x < 0 || y < 0 || x >= size || y >= size || x > y) {
            throw std::out_of_range("Invalid slice range");
        }

        return ::vec<T>(vec.begin() + x, vec.begin() + y + 1);
    }

    template <typename T>
    vec<T> Slice(vec<T>& vec, int n) {
        const auto size = static_cast<int>(vec.size());
        int start, end;

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

namespace Tools::VectorSlice {
    // Inline modification versions
    template <typename T>
    void SliceInl(vec<T>& vec, int x, int y) {
        // Handle negative indices
        const auto size = static_cast<int>(vec.size());
        if (x < 0) x = size + x;
        if (y < 0) y = size + y;

        // Validate bounds
        if (x < 0 || y < 0 || x >= size || y >= size || x > y) {
            throw std::out_of_range("Invalid slice range");
        }

        // Erase elements before x and after y
        vec.erase(vec.begin(), vec.begin() + x);
        vec.erase(vec.begin() + (y - x + 1), vec.end());
    }

    template <typename T>
    void SliceInl(vec<T>& vec, int n) {
        int size = static_cast<int>(vec.size());
        int start, end;

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

        vec.erase(vec.begin() + (end + 1), vec.end());
        vec.erase(vec.begin(), vec.begin() + start);
    }
}