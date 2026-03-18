#pragma once

#ifndef TOOLS_CLOCK_HPP
#define TOOLS_CLOCK_HPP

#include "Types/Types.uint.hpp"
#include "Types/Types.clock.hpp"

#include <thread>

namespace Tools::Clock {
    template <Duration T>
    u64 CountDuration(const HClock& Begin, const HClock& End){
        return std::chrono::duration_cast<T>(End-Begin).count();
    }

    template <Duration T>
    void Sleep(u64 dur) {
        std::this_thread::sleep_for(T{dur});
    }

    // Measure time taken by a callable (return none)
    // Able to run function, std::function, lamba
    template <typename F, Duration T>
    requires std::invocable<F>
    u64 FunctionElapsed(F&& func) {
        HClock start = HTimeNow();
        std::forward<F>(func)();
        HClock end = HTimeNow();
        return CountDuration<T>(start, end);
    }

    // Measure time taken by a callable (return somthing)
    template <typename F, Duration T>
    requires (!std::same_as<std::invoke_result_t<F>, void>)
    u64 FunctionElapsed(F&& func, std::invoke_result_t<F>& result) {
        HClock start = HTimeNow();
        result = std::forward<F>(func)();  // Store result
        HClock end = HTimeNow();
        return CountDuration<T>(start, end);
    }
}

#endif
