/* ---- Begin: TrueRandom/Vector.Thread.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_VECTOR_THREAD
#define TOOLS_TRUE_RANDOM_VECTOR_THREAD 7a

#include <thread>
#include "_Common.hpp"
#include "Vector.hpp"

/** Generics **/
namespace rdt::TrueRandom {
    /**
     * @brief Generate a vector of true random integers using multiple threads.
     *
     * Splits work into chunks processed in parallel. Each thread uses its own
     * stateless Generator instance (no seeding needed — TRNG is inherently
     * thread-safe and non-deterministic).
     *
     * Unlike PRNG threading, there is no master generator or deterministic
     * seeding. Each thread independently queries BCryptGenRandom.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsTVI/TVL) for convenient defaults.
     *
     * @tparam Int Integer type (must satisfy Tools::Types::Integer). Default type: i32.
     * @param ValueCount Total elements to generate.
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @param Threads Number of worker threads.
     * @return vec<Int> Vector of cryptographically secure random integers.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsTVI, RandomNumsTVL for typed shortcuts with defaults.
     */
    template <rdt::Types::Integer Int = i32>
    vec<Int> RandomNumsTV(
        const idx ValueCount,
        Int ValueMin, Int ValueMax,
        const idx Threads
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(ValueCount);

        vec<Int> Result(ValueCount);

        if (ValueCount == 0 || Threads == 0) return Result;

        // Effective thread count: don't spawn more threads than elements
        const idx EffThreads = std::min(Threads, ValueCount);
        const idx ChunkSize = (ValueCount + EffThreads - 1) / EffThreads;

        // Distribution is cheap to copy and thread-safe (stateless mapping)
        DistInt<Int> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(EffThreads);

        for (idx t = 0; t < EffThreads; ++t) {
            const idx Start = t * ChunkSize;
            const idx End = std::min(Start + ChunkSize, ValueCount);
            if (Start >= ValueCount) break;

            // Each thread gets its OWN Generator (stateless, no seed needed)
            // Distribution copied by value (small object, no shared state)
            Workers.emplace_back([&Result, Start, End, &NResult](const std::stop_token& StopToken) {
                Generator Gen;  // <- Stateless! No seed, no contention
                for (idx i = Start; i < End && !StopToken.stop_requested(); ++i) {
                    Result[i] = NResult(Gen);
                }
            });
        }

        // jthread destructor joins all workers automatically
        return Result;
    }

    /**
     * @brief Generate a vector of true random floats using multiple threads.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsTVF/TVD) for convenient defaults.
     *
     * @tparam Real Float type (must satisfy Tools::Types::Float). Default type: f32.
     * @param ValueCount Total elements to generate.
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @param Rounding Decimal places to round (0 = no rounding).
     * @param Threads Number of worker threads.
     * @return vec<Real> Vector of cryptographically secure random floats.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsTVF, RandomNumsTVD for typed shortcuts with defaults.
     */
    template <rdt::Types::Float Real = f32>
    vec<Real> RandomNumsTV(
        const idx ValueCount,
        Real ValueMin, Real ValueMax,
        const u32 Rounding,
        const idx Threads
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(ValueCount);

        vec<Real> Result(ValueCount);

        if (ValueCount == 0 || Threads == 0) return Result;

        const idx EffThreads = std::min(Threads, ValueCount);
        const idx ChunkSize = (ValueCount + EffThreads - 1) / EffThreads;

        DistReal<Real> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(EffThreads);

        for (idx t = 0; t < EffThreads; ++t) {
            const idx Start = t * ChunkSize;
            const idx End = std::min(Start + ChunkSize, ValueCount);
            if (Start >= ValueCount) break;

            Workers.emplace_back([&Result, Start, End, &NResult, Rounding](const std::stop_token& StopToken) {
                Generator Gen;
                for (idx i = Start; i < End && !StopToken.stop_requested(); ++i) {
                    Result[i] = Round(NResult(Gen), Rounding);
                }
            });
        }

        return Result;
    }

}

#endif

/* ---- End: TrueRandom/Vector.Thread.hpp ---- */
