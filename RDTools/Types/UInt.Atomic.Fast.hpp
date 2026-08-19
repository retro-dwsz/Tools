#pragma once

#ifndef TOOLS_TYPES_ATOMIC_FAST_UINT_HPP
#define TOOLS_TYPES_ATOMIC_FAST_UINT_HPP

/* ---- Atomic Fast Unsiged Integers ---- */

#include <atomic>

using afu8       = std::atomic_uint_fast8_t;
using afu16      = std::atomic_uint_fast16_t;
using afu32      = std::atomic_uint_fast32_t;
using afu64      = std::atomic_uint_fast64_t;

#endif
