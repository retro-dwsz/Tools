/* ---- Begin: TrueRandom/Bundle.Thread.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_BUNDLE_THREAD
#define TOOLS_TRUE_RANDOM_BUNDLE_THREAD 8a

#include <thread>
#include "_Common.hpp"
#include "Bundle.hpp"

/** Generic **/
/**
 * @namespace rdt::TrueRandom
 * @brief Generic template functions for bundle generation.
 */
namespace rdt::TrueRandom {
    /**
     * @brief Generate a bundle of true random integers using multiple threads.
     *
     * Distributes sub-vectors across threads using chunked assignment.
     * Each thread gets its own Generator instance (stateless, zero-cost copy).
     * No master generator or seeding needed — unlike PRNG threading.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsTBI/TBL) for convenient defaults.
     *
     * @tparam Int Integer type (must satisfy Tools::Types::Integer). Default type: i32.
     * @param SubVectorCount Number of sub-vectors.
     * @param ValueCountPerVec Elements per sub-vector.
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @param Threads Number of worker threads.
     * @return Bundle<Int> 2D vector of cryptographically secure random integers.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsTBI, RandomNumsTBL for typed shortcuts with defaults.
     */
    template <rdt::Types::Integer Int = i32>
    Bundle<Int> RandomNumsTB(
        const idx SubVectorCount, const idx ValueCountPerVec,
        Int ValueMin, Int ValueMax,
        const idx Threads
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(SubVectorCount, ValueCountPerVec);

        Bundle<Int> Result;

        if (SubVectorCount == 0 || ValueCountPerVec == 0 || Threads == 0)
            return Result;

        // Pre-allocate entire bundle structure (sequential, thread-safe setup)
        Result.reserve(SubVectorCount);
        for (idx i = 0; i < SubVectorCount; ++i) {
            Result.emplace_back();
            Result.back().reserve(ValueCountPerVec);
        }

        const idx EffThreads = std::min(Threads, SubVectorCount);
        const idx ChunkSize = (SubVectorCount + EffThreads - 1) / EffThreads;

        DistInt<Int> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(EffThreads);

        for (idx t = 0; t < EffThreads; ++t) {
            const idx Start = t * ChunkSize;
            const idx End = std::min(Start + ChunkSize, SubVectorCount);
            if (Start >= SubVectorCount) break;

            Workers.emplace_back([&Result, Start, End, ValueCountPerVec, &NResult](const std::stop_token& StopToken) {
                Generator Gen;
                for (idx i = Start; i < End && !StopToken.stop_requested(); ++i) {
                    for (idx ii = 0; ii < ValueCountPerVec; ++ii) {
                        Result[i].push_back(NResult(Gen));
                    }
                }
            });
        }

        return Result;
    }

    /**
     * @brief Generate a bundle of true random floats using multiple threads.
     *
     * Generic template — no default parameter values.
     * Use typed shortcuts (RandomNumsTBF/TBD) for convenient defaults.
     *
     * @tparam Real Float type (must satisfy Tools::Types::Float). Default type: f32.
     * @param SubVectorCount Number of sub-vectors.
     * @param ValueCountPerVec Elements per sub-vector.
     * @param ValueMin Lower bound (inclusive).
     * @param ValueMax Upper bound (inclusive).
     * @param Rounding Decimal places to round (0 = no rounding).
     * @param Threads Number of worker threads.
     * @return Bundle<Real> 2D vector of cryptographically secure random floats.
     * @note Auto-swaps if ValueMin > ValueMax.
     * @throws std::runtime_error if entropy acquisition fails.
     *
     * @see RandomNumsTBF, RandomNumsTBD for typed shortcuts with defaults.
     */
    template <rdt::Types::Float Real = f32>
    Bundle<Real> RandomNumsTB(
        const idx SubVectorCount, const idx ValueCountPerVec,
        Real ValueMin, Real ValueMax, const u32 Rounding,
        const idx Threads
    ) {
        CheckRange(ValueMin, ValueMax);
        WarningCount(SubVectorCount, ValueCountPerVec);

        Bundle<Real> Result;

        if (SubVectorCount == 0 || ValueCountPerVec == 0 || Threads == 0)
            return Result;

        // Pre-allocate entire bundle structure (sequential, thread-safe setup)
        Result.reserve(SubVectorCount);
        for (idx i = 0; i < SubVectorCount; ++i) {
            Result.emplace_back();
            Result.back().reserve(ValueCountPerVec);
        }

        const idx EffThreads = std::min(Threads, SubVectorCount);
        const idx ChunkSize = (SubVectorCount + EffThreads - 1) / EffThreads;

        DistReal<Real> NResult(ValueMin, ValueMax);

        vec<std::jthread> Workers;
        Workers.reserve(EffThreads);

        for (idx t = 0; t < EffThreads; ++t) {
            const idx Start = t * ChunkSize;
            const idx End = std::min(Start + ChunkSize, SubVectorCount);
            if (Start >= SubVectorCount) break;

            Workers.emplace_back([&Result, Start, End, ValueCountPerVec, &NResult, Rounding](const std::stop_token& StopToken) {
                // Strided distribution: thread t handles sub-vectors t, t+N, t+2N...
                // Each thread gets its OWN Generator (stateless copy = free)
                Generator Gen;
                for (idx i = Start; i < End && !StopToken.stop_requested(); ++i) {
                    for (idx ii = 0; ii < ValueCountPerVec; ++ii) {
                        Result[i].push_back(
                            Round(NResult(Gen), Rounding)
                        );
                    }
                }
            });
        }

        return Result;
    }
}

#endif

/* ---- End: TrueRandom/Bundle.Thread.hpp ---- */
