#pragma once

#ifndef TOOLS_TYPES_A_INT_LEAST_HPP
#define TOOLS_TYPES_A_INT_LEAST_HPP

/* ---- Atomic Integer with "at least N bits" ---- */

#include <atomic>

using ail8  = std::atomic_int_least8_t;
using ail16 = std::atomic_int_least16_t;
using ail32 = std::atomic_int_least32_t;
using ail64 = std::atomic_int_least64_t;

#endif