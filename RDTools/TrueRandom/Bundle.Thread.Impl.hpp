/* ---- Begin: TrueRandom/Bundle.Thread.Impl.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_BUNDLE_THREAD_IMPL
#define TOOLS_TRUE_RANDOM_BUNDLE_THREAD_IMPL 8b

#include "Bundle.Thread.hpp"

/** Integer **/
/**
 * @namespace rdt::TrueRandom
 * @brief Type-specific overloads for multi-threaded integer bundle generation.
 */
namespace rdt::TrueRandom {
    /// @brief Threaded bundle of true random i32. Default: 4×10 in [-10, 10], 4 threads.
    inline Bundle<i32> RandomNumsTBI(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10, i32 ValueMin = -10, i32 ValueMax = 10, const idx Threads = 4
    ) {
        return RandomNumsTB<i32>(
            SubVectorCount, ValueCountPerVec, ValueMin, ValueMax, Threads
        );
    }

    /// @brief Threaded bundle of true random i64. Default: 4×10 in [-10, 10], 4 threads.
    inline Bundle<i64> RandomNumsTBL(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10, i64 ValueMin = -10, i64 ValueMax = 10, const idx Threads = 4
    ) {
        return RandomNumsTB<i64>(
            SubVectorCount, ValueCountPerVec, ValueMin, ValueMax, Threads
        );
    }
}

/** Floats **/
/**
 * @namespace rdt::TrueRandom
 * @brief Type-specific overloads for multi-threaded float bundle generation.
 */
namespace rdt::TrueRandom {
    /// @brief Threaded bundle of true random f32. Default: 4×10 in [-2.71, 2.71], no rounding, 4 threads.
    inline Bundle<f32> RandomNumsTBF(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10, f32 ValueMin = -2.71f, f32 ValueMax = 2.71f, const u32 Rounding = 0, const idx Threads = 4
    ) {
        return RandomNumsTB<f32>(
            SubVectorCount, ValueCountPerVec,ValueMin, ValueMax, Rounding, Threads
        );
    }

    /// @brief Threaded bundle of true random f64. Default: 4×10 in [-3.14, 3.14], no rounding, 4 threads.
    inline Bundle<f64> RandomNumsTBD(
        const idx SubVectorCount = 4, const idx ValueCountPerVec = 10, f64 ValueMin = -3.14, f64 ValueMax = 3.14, const u32 Rounding = 0, const idx Threads = 4
    ) {
        return RandomNumsTB<f64>(
            SubVectorCount, ValueCountPerVec,ValueMin, ValueMax, Rounding, Threads
        );
    }
}

#endif

/* ---- End: TrueRandom/Bundle.Thread.Impl.hpp ---- */
