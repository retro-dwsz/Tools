#pragma once

#ifndef TOOLS_TYPES_COMMON_HPP
#define TOOLS_TYPES_COMMON_HPP

#include <concepts>

/* * * * * * Commonly used types * * * * * */
template <typename X, typename Y>
concept Same    = std::same_as<X, Y>;

template <typename T, typename... Ts>
concept OneOf   = (Same<T, Ts> || ...);

#define ADD_TYPES(name, ...)    \
    template <typename T>       \
    concept name = (Same<T, __VA_ARGS__> || ...);

#include "Int.hpp"
#include "UInt.hpp"
#include "Float.hpp"
#include "String.hpp"

// template <typename T>
// concept CNumber = OneOf<T, i32, i64, u32, u64, f32, f64, sidx>;

// template <typename T>
// concept CTypes  = OneOf<T, i32, i64, f32, f64, cstr, str>;

// template <typename T>
// concept CSize   = OneOf<T, idx, sidx>;

// template <typename T>
// concept Numbers = OneOf<T, i8, i16, i32, i64,
//                            u8, u16, u32, u64,
//                            f32, f64, fld,
//                            sidx, idx
//                         >;

// template <typename T>
// concept Integer = OneOf<T, i8, i16, i32, i64,
//                            u8, u16, u32, u64
//                         >;

// template <typename T>
// concept Ref     = OneOf<T, T&, const T&>;

#endif