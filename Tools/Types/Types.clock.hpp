#pragma once

#ifndef TOOLS_TYPES_CLOCK_HPP
#define TOOLS_TYPES_CLOCK_HPP

#include "Types.uint.hpp"

#include <concepts>
#include <chrono>

// Clocks + Current time point getter
namespace Tools::Clock {
    inline auto HTimeNow    = [](){ return std::chrono::high_resolution_clock::now(); };
    inline auto TimeNow     = [](){ return std::chrono::steady_clock::now(); };
    
    using Clock     = std::chrono::time_point<std::chrono::high_resolution_clock>;
    using SClock    = std::chrono::time_point<std::chrono::steady_clock>;
    using HClock    = Clock;
}

template <typename T>
concept Clocks = std::same_as<T, Tools::Clock::HClock>
    || std::same_as<T, Tools::Clock::SClock>;

// Units
namespace Tools::Clock::Units {
    /* Seconds */
    using ns        = std::chrono::nanoseconds;
    using us        = std::chrono::microseconds;
    using ms        = std::chrono::milliseconds;
    using sec       = std::chrono::seconds;

    /* Minutes and Hours */
    using min       = std::chrono::minutes;
    using hrs       = std::chrono::hours;

    /* Beyond 24 Hours */
    using days      = std::chrono::days;
    using weeks     = std::chrono::weeks;
    using months    = std::chrono::months;
};

// Durations
template <typename T>
concept Duration = std::same_as<T, Tools::Clock::Units::ns>
    || std::same_as<T, Tools::Clock::Units::ms>
    || std::same_as<T, Tools::Clock::Units::us>
    || std::same_as<T, Tools::Clock::Units::sec>
    || std::same_as<T, Tools::Clock::Units::min>
    || std::same_as<T, Tools::Clock::Units::hrs>
    || std::same_as<T, Tools::Clock::Units::days>
    || std::same_as<T, Tools::Clock::Units::weeks>
    || std::same_as<T, Tools::Clock::Units::months>;

// Helper: Convert duration to u64 (for display or storage)
template <Duration D>
constexpr u64 duration_to_u64(const D& d) {
    return static_cast<u64>(d.count());
}

// Helper: Cast duration to another unit
// template <Duration To, Clocks From>
// constexpr To DurCast(const From& d) {
//     return std::chrono::duration_cast<To>(d);
// }

#endif