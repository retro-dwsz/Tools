#pragma once

#ifndef TOOLS_TYPES_A_UINT_LEAST_HPP
#define TOOLS_TYPES_A_UINT_LEAST_HPP

/* ---- Atomic Unsiged Integer with "at least N bits" ---- */

#include <atomic>

using aul8 = std::atomic_uint_least8_t;
using aul16 = std::atomic_uint_least16_t;
using aul32 = std::atomic_uint_least32_t;
using aul64 = std::atomic_uint_least64_t;

#endif