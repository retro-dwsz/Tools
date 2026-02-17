#pragma once

/* ---- Unsigned Integers ---- */

#include <concepts>
#include <cstdint>

using u8 = uint8_t;
using u16 = uint16_t;
using u32 = uint32_t;
using u64 = uint64_t;

#if defined(USE_128)
using u128 = __uint128_t;
#endif

/* All unsigned integers */
template <typename T>
concept UInt =
    std::same_as<T, u8>
    || std::same_as<T, u16>
    || std::same_as<T, u32>
    || std::same_as<T, u64>;

/* Common unsigned integers */
template <typename T>
concept CUInt =
    std::same_as<T, u32>
    || std::same_as<T, u64>;

using idx = size_t;
using sidx = ssize_t;