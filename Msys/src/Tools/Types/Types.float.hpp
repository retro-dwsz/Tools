#pragma once

/* ---- Float ---- */
// #include <stdfloat>
#include <concepts>
#include <cstddef>

// __fp16 a = 3.14;

// Other types of floating point that are rarely used
// _Float16
// _Float32
// _Float32x
// _Float64
// _Float64x
// _Float128

using f16 = _Float16;
using f32 = float;
using f64 = double;
using fld = long double;

/* All floating points */
template <typename T>
concept Float =
    std::same_as<T, f16>
    || std::same_as<T, f32>
    || std::same_as<T, f64>
    || std::same_as<T, fld>;

/* Common floating points */
template <typename T>
concept CFloat =
    std::same_as<T, f32>
    || std::same_as<T, f64>;
