#pragma once

#include "Types/Types.uint.hpp"
#include "Types/Types.clock.hpp"

#include <thread>

namespace Tools::Clock {
    template <Duration T>
    u64 Count(const HClock& Begin, const HClock& End){
        return DurCast<T>(End-Begin);
    }

    // Measure time taken by a callable (return none)
    // Able to run function, std::function, lamba
    template <typename F, Duration T>
    requires std::invocable<F>
    u64 FunctionElapsed(F&& func) {
        HClock start = HTimeNow();
        std::forward<F>(func)();
        HClock end = HTimeNow();
        return Count<T>(start, end);
    }

    // Measure time taken by a callable (return somthing)
    template <typename F, Duration T>
    requires (!std::same_as<std::invoke_result_t<F>, void>)
    u64 FunctionElapsed(F&& func, std::invoke_result_t<F>& result) {
        HClock start = HTimeNow();
        result = std::forward<F>(func)();  // Store result
        HClock end = HTimeNow();
        return Count<T>(start, end);
    }

    template <Duration T>
    void Sleep(u64 ms) {
        std::this_thread::sleep_for(T{ms});
    }
}