/* ---- Begin: TrueRandom/SBundle.Thread.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_SBUNDLE_THREAD
#define TOOLS_TRUE_RANDOM_SBUNDLE_THREAD 9a

#include <thread>
#include <atomic>
#include "_Common.hpp"
#include "SBundle.hpp"

/** Generics **/
namespace rdt::TrueRandom {
    /**
     * @brief Generate a scattered bundle of true random integers using multiple threads.
     *
     * Two-phase approach:
     *   Phase 1 (sequential): Determine all sub-vector sizes via DistCount.
     *   Phase 2 (parallel): Fill values using work-stealing with atomic index.
     *
     * This separation ensures thread-safe sizing while parallelizing the
     * expensive value generation. Each thread gets its own Generator instance.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsTSBI/TSBL) for convenient defaults.
     *
     * @tparam Int Integer type (must satisfy Tools::Types::Integer). Default type: i32.
     * @param SubVectorCount Number of sub-vectors.
     * @param ValueCountMin Min elements per sub-vector.
     * @param ValueCountMax Max elements per sub-vector.
     * @param ValueMin Lower bound for values (inclusive).
     * @param ValueMax Upper bound for values (inclusive).
     * @param Threads Worker threads (0 = hardware_concurrency).
     * @return Bundle<Int> Jagged 2D vector of cryptographically secure random integers.
     * @note Auto-swaps both value range and count range if inverted.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsTSBI, RandomNumsTSBL for typed shortcuts with defaults.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsTSB(
        const idx SubVectorCount,
        idx ValueCountMin, idx ValueCountMax,
        Int ValueMin, Int ValueMax,
        const idx Threads
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMin, ValueCountMax);

        if (SubVectorCount == 0) return {};

        // ─── Phase 1: Sequential sizing ──────────────────────────
        vec<idx> Counts(SubVectorCount);
        {
            Generator Gen;
            DistInt<idx> DistCount(ValueCountMin, ValueCountMax);
            for (idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen);
            }
        }

        // Pre-allocate all sub-vectors with exact sizes
        Bundle<Int> Result(SubVectorCount);
        for (idx i = 0; i < SubVectorCount; ++i) {
            Result[i].resize(Counts[i]);
        }

        // ─── Phase 2: Parallel fill with work-stealing ───────────
        idx NumThreads = Threads;
        if (NumThreads == 0) {
            NumThreads = std::max<idx>(1, std::thread::hardware_concurrency());
        }

        DistInt<Int> NResult(ValueMin, ValueMax);
        std::atomic<idx> NextIdx{0};

        vec<std::jthread> Workers;
        Workers.reserve(NumThreads);

        for (idx t = 0; t < NumThreads; ++t) {
            Workers.emplace_back([
                &Result, &NextIdx, &Counts, SubVectorCount,
                &NResult, Gen = Generator{}
            ](const std::stop_token& StopToken) mutable {
                while (!StopToken.stop_requested()) {
                    const idx i = NextIdx.fetch_add(1, std::memory_order_relaxed);
                    if (i >= SubVectorCount) break;

                    for (idx j = 0; j < Counts[i]; ++j) {
                        Result[i][j] = NResult(Gen);
                    }
                }
            });
        }

        return Result;
    }

    /**
     * @brief Generate a scattered bundle of true random floats using multiple threads.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsTSBF/TSBD) for convenient defaults.
     *
     * @tparam Real Float type (must satisfy Tools::Types::Float). Default type: f32.
     * @param SubVectorCount Number of sub-vectors.
     * @param ValueCountMin Min elements per sub-vector.
     * @param ValueCountMax Max elements per sub-vector.
     * @param ValueMin Lower bound for values (inclusive).
     * @param ValueMax Upper bound for values (inclusive).
     * @param Rounding Decimal places to round (0 = no rounding).
     * @param Threads Worker threads (0 = hardware_concurrency).
     * @return Bundle<Real> Jagged 2D vector of cryptographically secure random floats.
     * @note Auto-swaps both value range and count range if inverted.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsTSBF, RandomNumsTSBD for typed shortcuts with defaults.
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsTSB(
        const idx SubVectorCount,
        idx ValueCountMin, idx ValueCountMax,
        Real ValueMin, Real ValueMax, const u32 Rounding,
        const idx Threads
    ) {
        CheckRange(ValueMin, ValueMax);
        CheckRange(ValueCountMin, ValueCountMax);
        WarningCount(SubVectorCount, ValueCountMin, ValueCountMax);

        if (SubVectorCount == 0) return {};

        vec<idx> Counts(SubVectorCount);
        {
            Generator Gen;
            DistInt<idx> DistCount(ValueCountMin, ValueCountMax);
            for (idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen);
            }
        }

        Bundle<Real> Result(SubVectorCount);
        for (idx i = 0; i < SubVectorCount; ++i) {
            Result[i].resize(Counts[i]);
        }

        idx NumThreads = Threads;
        if (NumThreads == 0) {
            NumThreads = std::max<idx>(1, std::thread::hardware_concurrency());
        }

        DistReal<Real> NResult(ValueMin, ValueMax);
        std::atomic<idx> NextIdx{0};

        vec<std::jthread> Workers;
        Workers.reserve(NumThreads);

        for (idx t = 0; t < NumThreads; ++t) {
            Workers.emplace_back([
                &Result, &NextIdx, &Counts, SubVectorCount,
                &NResult, Rounding, Gen = Generator{}
            ](const std::stop_token& StopToken) mutable {
                while (!StopToken.stop_requested()) {
                    const idx i = NextIdx.fetch_add(1, std::memory_order_relaxed);
                    if (i >= SubVectorCount) break;

                    for (idx j = 0; j < Counts[i]; ++j) {
                        Result[i][j] = Round(NResult(Gen), Rounding);
                    }
                }
            });
        }

        return Result;
    }
}

#endif

/* ---- End: TrueRandom/SBundle.Thread.hpp ---- */
