#pragma once

#include "Types/Types.uint.hpp"
#include "Types/Types.clock.hpp"
#include <functional>
#include <thread>
#include <chrono>

namespace Tools::Clock {
    template <Duration T>
    u64 Count(const HClock& Begin, const HClock& End){
        return DurCast<T>(End-Begin).count();
    }

    // Main function: Measure time taken by a callable
    template <typename F, typename DurationUnit>
    requires std::invocable<F>
    auto FunctionElapsed(F&& f) -> u64 {
        auto start = HTimeNow();
        std::forward<F>(f)();
        auto end = HTimeNow();
        auto diff = end - start;

        return to_u64(DurCast<DurationUnit>(diff));
    }

    template <Duration T>
    void Sleep(u64 ms) {
        std::this_thread::sleep_for(T(ms));
    }
}