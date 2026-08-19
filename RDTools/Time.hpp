#pragma once

#ifndef TOOLS_CLOCK_HPP
#define TOOLS_CLOCK_HPP

#include "FeatureCheck.hpp"
#include "Types.hpp"
#include <print>
#include <thread>

/* Usage:
 * Begin = rdt::Time::HTimeNow();
 *
 * SomeFunction();
 *
 * End = rdt::Time::HTimeNow();
 *
 * Dur = rdt::Time::CountDuration<rdt::Time::Units::us>(Begin, End);
 * fmt::println("Linked List test lasted: {} μs", Dur);
 */
namespace rdt::Time {
    template <Duration T>
    u64 CountDuration(const HClock& Begin, const HClock& End) {
        return std::chrono::duration_cast<T>(End-Begin).count();
    }

    template <Duration T>
    void Sleep(const u64& Dur) {
        std::this_thread::sleep_for(T{Dur});
    }

    /**
     * @brief Get Unix timestamp in seconds as double.
     * @note Equivalent to Python's time.time().
     *       Returns seconds since 1970-01-01 00:00:00 UTC.
     */
    template <typename D = Units::us>
    f64 Timestamp() noexcept {
        const auto now = std::chrono::system_clock::now();
        const auto duration = now.time_since_epoch();
        return std::chrono::duration<D>(duration).count();
    }

    // // Measure time taken by a callable (return none)
    // // Able to run function, std::function, lamba
    // template <typename F, Duration T>
    // requires std::invocable<F>
    // u64 FunctionElapsed(F&& func) {
    //     const HClock start = HTimeNow();
    //     std::forward<F>(func)();
    //     const HClock end = HTimeNow();
    //     return CountDuration<T>(start, end);
    // }

    // // Measure time taken by a callable (return somthing)
    // template <typename F, Duration T>
    // requires (!std::same_as<std::invoke_result_t<F>, void>)
    // u64 FunctionElapsed(F&& func, std::invoke_result_t<F>& result) {
    //     const HClock start = HTimeNow();
    //     result = std::forward<F>(func)();  // Store result
    //     const HClock end = HTimeNow();
    //     return CountDuration<T>(start, end);
    // }
}

/* Executors */
namespace rdt::Time {
    /**
     * @brief Base storage for execution return values.
     * @tparam Ret The return type of the executed callable.
     *
     * Wraps the result in a `topt<Ret>` (std::optional) to safely represent
     * both successful returns and potential absence of value.
     */
    template <typename Ret>
    struct ExecutorReturn {
        topt<Ret> Return;
        str Unit;

        ExecutorReturn() = default;
        explicit ExecutorReturn(Ret r) : Return(std::move(r)) {}
    };

    /**
     * @brief Specialized base storage for void-returning callables.
     *
     * Uses `topt<std::monostate>` instead of `topt<void>` (which is ill-formed).
     * Always initialized with a valid monostate so `.has_value()` returns true,
     * providing a uniform interface with non-void specializations.
     */
    template <>
    struct ExecutorReturn<void> {
        topt<std::monostate> Return;
        str Unit;

        ExecutorReturn() : Return(std::monostate{}) {}
        explicit ExecutorReturn(std::monostate) : Return(std::monostate{}) {}
    };

    /**
     * @brief Unified result container for timed function execution.
     * @tparam Ret Return type of the executed callable (including void).
     *
     * Combines the return value (via ExecutorReturn) with elapsed duration.
     * Provides a unified interface regardless of whether Ret is void or not.
     * Supports boolean conversion to check if a valid result exists.
     */
    template <typename Ret>
    struct ExecutorData : ExecutorReturn<Ret> {
        u64 Duration = 0; ///< Elapsed time in the unit specified at execution

        /// Type alias to avoid ill-formed `void` parameters in constructors
        using RetParam = std::conditional_t<std::is_void_v<Ret>, std::monostate, Ret>;

        /// Constructor for non-void return types
        ExecutorData(RetParam ret, u64 dur) requires (!std::is_void_v<Ret>)
            : ExecutorReturn<Ret>(std::move(ret)), Duration(dur) {}

        /// Constructor for void return types
        explicit ExecutorData(u64 dur) requires std::is_void_v<Ret>
            : ExecutorReturn<Ret>(), Duration(dur) {}

        ExecutorData() = default;

        /// Returns true if the execution produced a valid result
        explicit operator bool() const noexcept {
            return this->Return.has_value();
        }
    };

    /**
     * @brief  Executes a callable and measures its elapsed time.
     * @tparam D    Duration unit (default: Units::us / microseconds)
     * @tparam Fn   Callable type
     * @tparam Args Argument types forwarded to the callable
     * @param Func  The callable to execute
     * @param args  Arguments forwarded to Func
     * @return ExecutorData<Ret> containing the result and elapsed duration
     *
     * Exceptions thrown by Func are caught and printed via std::println.
     * On exception, the returned ExecutorData will have Duration set but
     * Return may be empty (nullopt for non-void, monostate for void).
     *
     * @note Requires #include <fmt/std.h> for formatting std::optional/monostate
     *
     * Usage:
     *   auto res = Executor([]{ return compute(); });
     *   if (res) fmt::println("Result: {}, Time: {} {}", *res.Return, res.Duration, res.Unit);
     */
    template <typename D = Units::us, typename Fn, typename... Args>
    requires std::invocable<Fn, Args...>
    auto Executor(Fn&& Func, Args&&... args) {
        using Ret = std::invoke_result_t<Fn, Args...>;

        const auto Begin = HTimeNow();

        if constexpr (std::is_void_v<Ret>) {
            try {
                std::invoke(std::forward<Fn>(Func), std::forward<Args>(args)...);
            } catch (const std::exception& E) {
                std::println("Error: {}", E.what());
            }

            const auto End = HTimeNow();
            return ExecutorData<void>(CountDuration<D>(Begin, End));
        } else {
            Ret result{};
            try {
                result = std::invoke(std::forward<Fn>(Func), std::forward<Args>(args)...);
            } catch (const std::exception& E) {
                std::println("Error: {}", E.what());
            }

            const auto End = HTimeNow();
            return ExecutorData<Ret>(std::move(result), CountDuration<D>(Begin, End));
        }
    }
}

#endif
