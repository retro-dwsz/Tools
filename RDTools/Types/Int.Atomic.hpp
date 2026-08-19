#pragma once

#ifndef TOOLS_TYPES_ATOMIC_INT_HPP
#define TOOLS_TYPES_ATOMIC_INT_HPP

/* ---- Atomic Integers ---- */

#include <atomic>

using ai8        = std::atomic_int8_t;
using ai16       = std::atomic_int16_t;
using ai32       = std::atomic_int32_t;
using ai64       = std::atomic_int64_t;

// typedef std::atomic_int8_t  ai8;
// typedef std::atomic_int16_t ai16;
// typedef std::atomic_int32_t ai32;
// typedef std::atomic_int64_t ai64;

#endif
