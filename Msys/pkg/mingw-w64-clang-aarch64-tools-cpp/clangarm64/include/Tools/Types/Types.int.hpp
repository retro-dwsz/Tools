#pragma once

/* ---- Integers ---- */

#include <concepts>
#include <cstdint>

using i8  = int8_t;
using i16 = int16_t;
using i32 = int32_t;
using i64 = int64_t;

#if defined(USE_128)
using i128 = __int128_t;
#endif

/* All integer */
template <typename T>
concept Int =
    std::same_as<T, i8>
    || std::same_as<T, i16>
    || std::same_as<T, i32>
    || std::same_as<T, i64>;

/* Common integers */
template <typename T>
concept CInt =
    std::same_as<T, i32>
    || std::same_as<T, i64>;