#pragma once

#include "Common.hpp"
#ifndef TOOLS_TYPES_CLOCK_HPP
#define TOOLS_TYPES_CLOCK_HPP

#include "UInt.hpp"

#include <concepts>
#include <chrono>

// Clocks + Current time point getter
namespace rdt::Time {
    inline auto HTimeNow(){
        return std::chrono::high_resolution_clock::now();
    };
    inline auto TimeNow(){
        return std::chrono::steady_clock::now();
    };

    using Clock     = std::chrono::time_point<std::chrono::high_resolution_clock>;
    using SClock    = std::chrono::time_point<std::chrono::steady_clock>;
    using HClock    = Clock;

    template <typename T>
    concept Clocks = OneOf<T, HClock, SClock>;
        // std::same_as<T, HClock>
        // || std::same_as<T, SClock>;
}

// Units
namespace rdt::Time::Units {
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

namespace rdt::Time {
    // Durations
    template <typename T>
    concept Duration = OneOf<T,
        Units::ns,
        Units::ms,
        Units::us,
        Units::sec,
        Units::min,
        Units::hrs,
        Units::days,
        Units::weeks,
        Units::months
    >;

    // Helper: Convert duration to u64 (for display or storage)
    template <Duration D>
    constexpr u64 Duration_to_u64(const D& d) {
        return scast<u64>(d.count());
    }

    // Helper: Cast duration to another unit
    // template <Duration To, Clocks From>
    // constexpr To DurCast(const From& d) {
    //     return std::chrono::duration_cast<To>(d);
    // }
}
#endif