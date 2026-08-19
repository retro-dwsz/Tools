/* ---- Begin: TrueRandom/SBundle.Thread.Impl.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_SBUNDLE_THREAD_IMPL
#define TOOLS_TRUE_RANDOM_SBUNDLE_THREAD_IMPL 9b

#include "SBundle.Thread.hpp"

/**
 * @namespace rdt::TrueRandom
 * @brief Type-specific overloads for multi-threaded integer scattered bundle generation.
 */
namespace rdt::TrueRandom {
    /// @brief Threaded scattered bundle of true random i32. Default: 4 sub-vecs, 10-30 each, [-10, 10], 4 threads.
    inline Bundle<i32> RandomNumsTSBI(
        const idx SubVectorCount = 4, idx ValueCountMin = 10, idx ValueCountMax = 30, i32 ValueMin = -10, i32 ValueMax = 10, const idx Thread = 4
    ) {
        return RandomNumsTSB<i32>(
            SubVectorCount, ValueCountMin, ValueCountMax, ValueMin, ValueMax, Thread
        );
    }

    /// @brief Threaded scattered bundle of true random i64. Default: 4 sub-vecs, 10-30 each, [-10, 10], 4 threads.
    inline Bundle<i64> RandomNumsTSBL(
        const idx SubVectorCount = 4, idx ValueCountMin = 10, idx ValueCountMax = 30, i64 ValueMin = -10, i64 ValueMax = 10, const idx Thread = 4
    ) {
        return RandomNumsTSB<i64>(
            SubVectorCount, ValueCountMin, ValueCountMax, ValueMin, ValueMax, Thread
        );
    }
}

/**
 * @namespace rdt::TrueRandom
 * @brief Type-specific overloads for multi-threaded float scattered bundle generation.
 */
namespace rdt::TrueRandom {
    /// @brief Threaded scattered bundle of true random f32. Default: 4 sub-vecs, 10-30 each, [-2.71, 2.71], no rounding, 4 threads.
    inline Bundle<f32> RandomNumsTSBF(
        const idx SubVectorCount = 4, idx ValueCountMin = 10, idx ValueCountMax = 30, f32 ValueMin = -2.71f, f32 ValueMax = 2.71f, const u32 Rounding = 0, const idx Thread = 4
    ) {
        return RandomNumsTSB<f32>(
            SubVectorCount, ValueCountMin, ValueCountMax, ValueMin, ValueMax, Rounding, Thread
        );
    }

    /// @brief Threaded scattered bundle of true random f64. Default: 4 sub-vecs, 10-30 each, [-3.14, 3.14], no rounding, 4 threads.
    inline Bundle<f64> RandomNumsTSBD(
        const idx SubVectorCount = 4, idx ValueCountMin = 10, idx ValueCountMax = 30, f64 ValueMin = -3.14, f64 ValueMax = 3.14, const u32 Rounding = 0, const idx Thread = 4
    ) {
        return RandomNumsTSB<f64>(
            SubVectorCount, ValueCountMin, ValueCountMax, ValueMin, ValueMax, Rounding, Thread
        );
    }
}

#endif

/* ---- End: TrueRandom/SBundle.Thread.Impl.hpp ---- */
