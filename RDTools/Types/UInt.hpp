#pragma once

#ifndef TOOLS_TYPES_UINT_HPP
#define TOOLS_TYPES_UINT_HPP

/* ---- Unsigned Integers ---- */

#include <cstdint>

using u8        = uint8_t;
using u16       = uint16_t;
using u32       = uint32_t;
using u64       = uint64_t;

#if defined(TOOLS_USE_U128)
using u128 = __uint128_t;
#endif

using idx       = size_t;

#endif