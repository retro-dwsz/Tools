#pragma once

#ifndef TOOLS_TYPES_ATOMIC_UINT_HPP
#define TOOLS_TYPES_ATOMIC_UINT_HPP

/* ---- Atomic Unsiged Integers ---- */

#include <atomic>

using au8        = std::atomic_uint8_t;
using au16       = std::atomic_uint16_t;
using au32       = std::atomic_uint32_t;
using au64       = std::atomic_uint64_t;

#endif
