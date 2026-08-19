/* ---- Begin: TrueRandom/Vector.Thread.Impl.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_VECTOR_THREAD_IMPL
#define TOOLS_TRUE_RANDOM_VECTOR_THREAD_IMPL 7b

#include "Vector.Thread.hpp"

/** Integers **/
namespace rdt::TrueRandom {
    /// @brief Vector of true random i32. Default: 10 elements in [-10, 10], 4 threads.
    inline vec<i32> RandomNumsTVI(idx Count = 10, i32 Min = -10, i32 Max = 10, idx Threads = 4) {
        return RandomNumsTV<i32>(Count, Min, Max, Threads);
    }

    /// @brief Vector of true random i64. Default: 10 elements in [-10, 10], 4 threads.
    inline vec<i64> RandomNumsTVL(idx Count = 10, i64 Min = -10, i64 Max = 10, idx Threads = 4) {
        return RandomNumsTV<i64>(Count, Min, Max, Threads);
    }
}

/** Floats **/
namespace rdt::TrueRandom {
    /// @brief Vector of true random f32. Default: 10 elements in [-2.71, 2.71], no rounding, 4 threads.
    inline vec<f32> RandomNumsTVF(idx Count = 10, f32 Min = -2.71f, f32 Max = 2.71f, u32 Rnd = 0, idx Threads = 4) {
        return RandomNumsTV<f32>(Count, Min, Max, Rnd, Threads);
    }

    /// @brief Vector of true random f64. Default: 10 elements in [-3.14, 3.14], no rounding, 4 threads.
    inline vec<f64> RandomNumsTVD(idx Count = 10, f64 Min = -3.14, f64 Max = 3.14, u32 Rnd = 0, idx Threads = 4) {
        return RandomNumsTV<f64>(Count, Min, Max, Rnd, Threads);
    }
}

#endif

/* ---- End: TrueRandom/Vector.Thread.Impl.hpp ---- */
