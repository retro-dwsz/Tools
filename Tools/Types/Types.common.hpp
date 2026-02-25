#pragma once

#include "Types.int.hpp"
#include "Types.uint.hpp"
#include "Types.float.hpp"
#include "Types.string.hpp"
#include <concepts>

/* * * * * * Commonly used types * * * * * */
template <typename X, typename Y>
concept Same    = std::same_as<X, Y>;

template <typename T, typename... Ts>
concept OneOf   = (Same<T, Ts> || ...);

#define ADD_TYPES(name, ...)    \
    template <typename T>       \
    concept name = (Same<T, __VA_ARGS__> || ...);

template <typename T>
concept Nx32    = OneOf<T, i32, f32>;

template <typename T>
concept Nx64    = OneOf<T, i64, f64>;

template <typename T>
concept CNumber = OneOf<T, i32, i64, u32, u64, f32, f64, sidx>;

template <typename T>
concept CTypes  = OneOf<T, i32, i64, f32, f64, cstr, str>;

template <typename T>
concept CSize   = OneOf<T, idx, sidx>;

template <typename T>
concept Numbers = OneOf<T, i8, i16, i32, i64,
                           u8, u16, u32, u64,
                           f32, f64, fld,
                           sidx, idx
                        >;

template <typename T>
concept Integer = OneOf<T, i8, i16, i32, i64,
                           u8, u16, u32, u64
                        >;

template <typename T>
concept Ref     = OneOf<T, T&, const T&>;

template <Numbers T>
void CheckRange(T& min, T& max) {
    if (max < min) std::swap(min, max);
}

template <Numbers T>
std::pair<T, T> CheckRangeR(T min, T max) {
    if (max < min) return std::pair<T, T>(max, min);
}
