#pragma once

#include <concepts>
#include "Types.int.hpp"
#include "Types.uint.hpp"
#include "Types.float.hpp"
#include "Types.string.hpp"
#include "Types.containers.hpp"

using ptr = void*;

// #include <type_traits>
// #include <concepts>
// template <typename A, typename B>
// using same = std::same_as<class Tp, class Up><A, B>;

template <typename X, typename Y>
concept Same = std::same_as<X, Y>;

template <typename T, typename... Ts>
concept OneOf = (Same<T, Ts> || ...);

#define ADD_TYPES(name, ...)    \
    template <typename T>       \
    concept name = (Same<T, __VA_ARGS__> || ...);

template <typename T>
concept nx32 = OneOf<T, i32, f32>;

template <typename T>
concept nx64 = OneOf<T, i64, f64>;

template <typename T>
concept CommonNumber = OneOf<T, i32, i64, f32, f64>;

template <typename T>
concept CommonTypes = OneOf<i32, i64, f32, f64, cstr, str>;

template <typename T>
concept Numbers = OneOf<T, i8, i16, i32, i64,
                           u8, u16, u32, u64,
                           f32, f64, fld
                  >;

template <typename T>
concept Integers = OneOf<T, i8, i16, i32, i64,
                           u8, u16, u32, u64
                           >;

template <typename T>
concept Ref = OneOf<T, T&, const T&>;

template <Numbers T>
constexpr void CheckRange(T& min, T& max) {
    if (max < min) std::swap(min, max);
}

/*
clangd:

llvm-mingw      D:\Code\LLVM\LLVM-MinGW\bin\clangd.exe
msys            D:\Code\_MSYS2\Files\clang64\bin\clangd.exe

*/