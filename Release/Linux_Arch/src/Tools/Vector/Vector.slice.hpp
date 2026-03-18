#pragma once

#ifndef TOOLS_VECTOR_SLICE_HPP
#define TOOLS_VECTOR_SLICE_HPP

#include "../Types.hpp"

/* Slices */
namespace Tools::Vector {
    // Return new vector versions
    template <typename T>
    vec<T> Slice(const vec<T>& vec, idx x, idx y) {
        // Handle negative indices
        const idx size = vec.size();
        if (x < 0) x = size + x;
        if (y < 0) y = size + y;

        // Validate bounds
        if (x < 0 || y < 0 || x >= size || y >= size || x > y) {
            throw std::out_of_range("Invalid slice range");
        }

        return ::vec<T>(vec.begin() + x, vec.begin() + y + 1);
    }

    template <typename T>
    vec<T> Slice(const vec<T>& vec, idx n) {
        const idx size = vec.size();
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

template vec<i32> Tools::Vector::Slice<i32>(const vec<i32>& vec, idx x, idx y);
template vec<i64> Tools::Vector::Slice<i64>(const vec<i64>& vec, idx x, idx y);
template vec<f32> Tools::Vector::Slice<f32>(const vec<f32>& vec, idx x, idx y);
template vec<f64> Tools::Vector::Slice<f64>(const vec<f64>& vec, idx x, idx y);

template vec<i32> Tools::Vector::Slice<i32>(const vec<i32>& vec, idx n);
template vec<i64> Tools::Vector::Slice<i64>(const vec<i64>& vec, idx n);
template vec<f32> Tools::Vector::Slice<f32>(const vec<f32>& vec, idx n);
template vec<f64> Tools::Vector::Slice<f64>(const vec<f64>& vec, idx n);

#endif
