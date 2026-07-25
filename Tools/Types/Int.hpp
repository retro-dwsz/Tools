#pragma once

#ifndef TOOLS_TYPES_INT_HPP
#define TOOLS_TYPES_INT_HPP

/* ---- Integers ---- */

#include <cstdint>

using i8        = int8_t;
using i16       = int16_t;
using i32       = int32_t;
using i64       = int64_t;

#if defined(TOOLS_USE_I128)
using i128 = __int128_t;
#endif

using sidx      = ssize_t;

#endif
