#pragma once

#include "Types.uint.hpp"

#include <concepts>
#include <chrono>
#include <__chrono/duration.h>

// Current time point getter
inline auto HTimeNow    = [](){ return std::chrono::high_resolution_clock::now(); };
inline auto TimeNow     = [](){ return std::chrono::steady_clock::now(); };

// Clocks
using Clock     = std::chrono::time_point<std::chrono::high_resolution_clock>;
using SClock    = std::chrono::time_point<std::chrono::steady_clock>;
using HClock    = Clock;

template <typename T>
concept Clocks = std::same_as<T, HClock>
    || std::same_as<T, SClock>;

// Units
/* "seconds" */
using ns        = std::chrono::nanoseconds;
using us        = std::chrono::microseconds;
using ms        = std::chrono::milliseconds;
using sec       = std::chrono::seconds;

/* Minutes and Hours */
using min       = std::chrono::minutes;
using hrs       = std::chrono::hours;

/* 24+ Hours */
using days      = std::chrono::days;
using weeks     = std::chrono::weeks;
using months    = std::chrono::months;

// Durations
template <typename T>
concept Duration = std::same_as<T, ns>
    || std::same_as<T, ms>
    || std::same_as<T, us>
    || std::same_as<T, sec>
    || std::same_as<T, min>
    || std::same_as<T, hrs>
    || std::same_as<T, days>
    || std::same_as<T, weeks>
    || std::same_as<T, months>;

// Helper: Convert duration to u64 (for display or storage)
template <Duration D>
constexpr u64 duration_to_u64(const D& d) {
    return static_cast<u64>(d.count());
}

// Helper: Cast duration to another unit
template <Duration To, Clocks From>
constexpr To DurCast(const From& d) {
    return std::chrono::duration_cast<To>(d);
}