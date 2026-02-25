#pragma once

#include "Types.uint.hpp"

#include <concepts>
#include <functional>
#include <chrono>
#include <__chrono/duration.h>

// Current time point getter
inline std::function HTimeNow = std::chrono::high_resolution_clock::now;
inline std::function TimeNow = std::chrono::steady_clock::now;

// Clocks
using HClock    = std::chrono::time_point<std::chrono::high_resolution_clock>;
using SClock    = std::chrono::time_point<std::chrono::steady_clock>;
using Clock     = HClock;

// Units (fixed: us = microseconds, Ms = milliseconds)
using ns     = std::chrono::nanoseconds;
using us     = std::chrono::microseconds;  // ✅ microseconds
using ms     = std::chrono::milliseconds;  // ✅ milliseconds
using sec    = std::chrono::seconds;
using min    = std::chrono::minutes;
using hrs    = std::chrono::hours;

using days   = std::chrono::days;
using weeks  = std::chrono::weeks;
using months = std::chrono::months;

// Helper: Convert duration to u64 (for display or storage)
template <typename D>
constexpr u64 to_u4(const D& d) {
    return static_cast<u64>(d.count());
}

// Durations
template <typename T>
concept Duration = std::same_as<T, ns>
    || std::same_as<T, ms>
    || std::same_as<T, ms>
    || std::same_as<T, sec>
    || std::same_as<T, min>
    || std::same_as<T, hrs>
    || std::same_as<T, days>
    || std::same_as<T, weeks>
    || std::same_as<T, months>;

// Helper: Cast duration to another unit
template <typename To, typename From>
constexpr To DurCast(const From& d) {
    return std::chrono::duration_cast<To>(d);
}