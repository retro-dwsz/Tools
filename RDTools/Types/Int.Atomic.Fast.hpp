#pragma once

#ifndef TOOLS_TYPES_ATOMIC_FAST_INT_HPP
#define TOOLS_TYPES_ATOMIC_FAST_INT_HPP

/* ---- Atomic Fast Integers ---- */

#include <atomic>

using afi8       = std::atomic_int_fast8_t;
using afi16      = std::atomic_int_fast16_t;
using afi32      = std::atomic_int_fast32_t;
using afi64      = std::atomic_int_fast64_t;

#endif
