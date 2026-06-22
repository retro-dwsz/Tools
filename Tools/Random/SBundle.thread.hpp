#pragma once

#ifndef TOOLS_RANDOM_VECTOR_THREAD_HPP
#define TOOLS_RANDOM_VECTOR_THREAD_HPP

#include "_Common.hpp"
#include <thread>

// Integer
namespace Tools::Random {
    vec<vec<i32>> RandomNumsTSBF(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, i32 Min = -10, i32 Max = 10, const idx Thread = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice rd;
        Twister32 Gen32(rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<i32>> Result;
        Result.resize(SubVectorCount);

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
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, Min, Max, &Gen32](const std::stop_token& st) {
                DistInt<i32> Dist32(Min, Max);

                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Dist32(Gen32));
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
        RdDevice rd;
        Twister64 Gen64(rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<i64>> Result;
        Result.resize(SubVectorCount);

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
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, Min, Max, &Gen64](const std::stop_token& st) {
                DistInt<i64> Dist64(Min, Max);

                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Dist64(Gen64));
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
    vec<vec<f32>> RandomNumsTSBF(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f32 Min = -10, f32 Max = 10, const idx Thread = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice rd;
        Twister32 Gen32(rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<f32>> Result;
        Result.resize(SubVectorCount);

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
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, Min, Max, &Gen32](const std::stop_token& st) {
                DistReal<f32> Dist32(Min, Max);

                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Dist32(Gen32));
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

    vec<vec<f64>> RandomNumsTSBD(const idx SubVectorCount = 64, idx CountMin = 25, idx CountMax = 50, f64 Min = -10, f64 Max = 10, const idx Thread = 0) {
        CheckRange(Min, Max);
        CheckRange(CountMin, CountMax);
        WarningCount(SubVectorCount, CountMax);
        RdDevice rd;
        Twister64 Gen64(rd());

        // Use hardware concurrency if Thread == 0
        idx NumThreads = Thread;
        if(NumThreads == 0) {
            NumThreads = std::max(1u, std::thread::hardware_concurrency());
        }

        vec<vec<f64>> Result;
        Result.resize(SubVectorCount);

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
            Threads.emplace_back([&Result, &CurrentIdx, &Counts, SubVectorCount, Min, Max, &Gen64](const std::stop_token& st) {
                DistReal<f64> Dist64(Min, Max);

                while(!st.stop_requested()) {
                    idx i = CurrentIdx.fetch_add(1, std::memory_order_relaxed);
                    if(i >= SubVectorCount) break;

                    for(idx j = 0; j < Counts[i]; ++j) {
                        Result[i].push_back(Dist64(Gen64));
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