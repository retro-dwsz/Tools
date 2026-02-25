#pragma once

#include "Types/Types.uint.hpp"
#include "Types/Types.clock.hpp"
#include <functional>
#include <chrono>

namespace Tools::Clock {
    inline std::function TimeNow = std::chrono::high_resolution_clock::now;

    template <typename T>
    u64 Count(const HClock& Begin, const HClock& End){
        return DurCast<ms>(End-Begin).count();
    }

    // Main function: Measure time taken by a callable
    template <typename F, typename DurationUnit> /* std::chrono::milliseconds */
    requires std::invocable<F>
    auto FunctionElapsed(F&& f) -> u64 {
        using Clock = std::chrono::high_resolution_clock;
        auto start = Clock::now();
        std::forward<F>(f)();
        auto end = Clock::now();
        auto diff = end - start;
        return to_uint64(DurCast<DurationUnit>(diff));
    }
}