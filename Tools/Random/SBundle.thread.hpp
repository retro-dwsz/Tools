#pragma once

#ifndef TOOLS_RANDOM_VECTOR_THREAD_HPP
#define TOOLS_RANDOM_VECTOR_THREAD_HPP

#include "_Common.hpp"
#include <thread>

// Generic
namespace Tools::Random {
    template <typename Int>
    requires OneOf<Int, i32, i64>
    vec<vec<Int>> RandomNumsTSB(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, Int Min = -10, Int Max = 10, const idx Thread = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice Rd;
        Twister64 Gen64(Rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<Int>> Result;
        Result.resize(SubVectorCount);
        DistInt<Int> NResult(Min, Max);

        // Pre-calculate all counts first (optional optimization)
        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(CountMin, CountMax);
            for(idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen64);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Threads;
        Threads.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        for(idx t = 0; t < NumThreads; ++t) {
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, &NResult, &Gen64](const std::stop_token& st) {

                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(NResult(Gen64));
                    }
                }
            });
        }

        for(auto& td : Threads) {
            if(td.joinable()) {
                td.join();
            }
        }

        return Result;
    }

    template <typename Real>
    requires OneOf<Real, f32, f64>
    vec<vec<Real>> RandomNumsTSB(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, Real Min = -10, Real Max = 10, const idx Thread = 0, const u32 Rounding = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice Rd;
        Twister64 Gen64(Rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<Real>> Result;
        Result.resize(SubVectorCount);
        DistReal<Real> NResult(Min, Max);

        // Pre-calculate all counts first (optional optimization)
        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(CountMin, CountMax);
            for(idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen64);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Threads;
        Threads.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        for(idx t = 0; t < NumThreads; ++t) {
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, &NResult, &Gen64, &Rounding](const std::stop_token& st) {
                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Round(NResult(Gen64), Rounding));
                    }
                }
            });
        }

        for(auto& td : Threads) {
            if(td.joinable()) {
                td.join();
            }
        }

        return Result;
    }
}

// Integer
namespace Tools::Random {
    vec<vec<i32>> RandomNumsTSBF(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, i32 Min = -10, i32 Max = 10, const idx Thread = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice Rd;
        Twister32 Gen32(Rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<i32>> Result;
        Result.resize(SubVectorCount);
        DistInt<i32> NResult(Min, Max);

        // Pre-calculate all counts first (optional optimization)
        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(CountMin, CountMax);
            for(idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen32);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Threads;
        Threads.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        for(idx t = 0; t < NumThreads; ++t) {
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, &NResult, &Gen32](const std::stop_token& st) {

                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(NResult(Gen32));
                    }
                }
            });
        }

        for(auto& td : Threads) {
            if(td.joinable()) {
                td.join();
            }
        }

        return Result;
    }

    vec<vec<i64>> RandomNumsTSBD(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, i64 Min = -10, i64 Max = 10, const idx Thread = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice Rd;
        Twister64 Gen64(Rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<i64>> Result;
        Result.resize(SubVectorCount);
        DistInt<i64> NResult(Min, Max);

        // Pre-calculate all counts first (optional optimization)
        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(CountMin, CountMax);
            for(idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen64);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Threads;
        Threads.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        for(idx t = 0; t < NumThreads; ++t) {
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, &NResult, &Gen64](const std::stop_token& st) {

                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(NResult(Gen64));
                    }
                }
            });
        }

        for(auto& td : Threads) {
            if(td.joinable()) {
                td.join();
            }
        }

        return Result;
    }
}

// Float
namespace Tools::Random {
    vec<vec<f32>> RandomNumsTSBF(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f32 Min = -10, f32 Max = 10, const idx Thread = 0, const u32 Rounding = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice Rd;
        Twister32 Gen32(Rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<f32>> Result;
        Result.resize(SubVectorCount);
        DistReal<f32> NResult(Min, Max);

        // Pre-calculate all counts first (optional optimization)
        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(CountMin, CountMax);
            for(idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen32);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Threads;
        Threads.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        for(idx t = 0; t < NumThreads; ++t) {
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, &NResult, &Gen32, &Rounding](const std::stop_token& st) {

                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Round(NResult(Gen32), Rounding));
                    }
                }
            });
        }

        for(auto& td : Threads) {
            if(td.joinable()) {
                td.join();
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsTSBD(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f64 Min = -10, f64 Max = 10, const idx Thread = 0, const u32 Rounding = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice Rd;
        Twister64 Gen64(Rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<f64>> Result;
        Result.resize(SubVectorCount);
        DistReal<f64> NResult(Min, Max);

        // Pre-calculate all counts first (optional optimization)
        vec<idx> Counts(SubVectorCount);
        {
            DistInt<idx> DistCount(CountMin, CountMax);
            for(idx i = 0; i < SubVectorCount; ++i) {
                Counts[i] = DistCount(Gen64);
                Result[i].reserve(Counts[i]);
            }
        }

        vec<std::jthread> Threads;
        Threads.reserve(NumThreads);
        std::atomic<idx> CurrentIdx{0};

        for(idx t = 0; t < NumThreads; ++t) {
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, &NResult, &Gen64, &Rounding](const std::stop_token& st) {
                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Round(NResult(Gen64), Rounding));
                    }
                }
            });
        }

        for(auto& td : Threads) {
            if(td.joinable()) {
                td.join();
            }
        }

        return Result;
    }
}

#endif