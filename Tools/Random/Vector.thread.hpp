#pragma once

#ifndef TOOLS_RANDOM_VECTOR_THREAD_HPP
#define TOOLS_RANDOM_VECTOR_THREAD_HPP

#include "_Common.hpp"
#include <thread>

// Generic
namespace Tools::Random {
    template <typename Int>
    requires OneOf<Int, i32, i64>
    vec<Int> RandomNumsTV(const idx Count = 10, Int Min = -10, Int Max = 10, const idx Threads = 4) {
        RdDevice Rd;
        Twister64 Gen64(Rd());

        CheckRange(Max, Min);

        vec<Int> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division
        auto NResult = DistInt(Min, Max);

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, Count);

            if(Start >= Count) break;

            Thread.emplace_back([&Result, Start, End, &NResult, &Gen64](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = NResult(Gen64);
                }
            });
        }

        // Wait for all threads to complete
        for(auto& worker : Thread) {
            if(worker.joinable()) {
                worker.join();
            }
        }

        return Result;
    }

    template <typename Real>
    requires OneOf<Real, f32, f64>
    vec<Real> RandomNumsTV(const idx Count = 10, Real Min = -10, Real Max = 10, const idx Threads = 4, const u32 Rounding = 0) {
        RdDevice Rd;
        Twister64 Gen64(Rd());
        CheckRange(Max, Min);

        vec<Real> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division
        auto NResult = DistReal(Min, Max);

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, Count);

            if(Start >= Count) break;

            Thread.emplace_back([&Result, Start, End, &NResult, &Gen64, &Rounding](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = Round(NResult(Gen64), Rounding);
                }
            });
        }

        // Wait for all threads to complete
        for(auto& worker : Thread) {
            if(worker.joinable()) {
                worker.join();
            }
        }

        return Result;
    }
}

// Integer
namespace Tools::Random {
    vec<i32> RandomNumsTVI(const idx Count = 10, i32 Min = -10, i32 Max = 10, const idx Threads = 4) {
        RdDevice Rd;
        Twister32 Gen32(Rd());

        CheckRange(Max, Min);

        vec<i32> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division

        auto NResult = DistInt(Min, Max);

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, Count);

            if(Start >= Count) break;

            Thread.emplace_back([&Result, Start, End, &NResult, &Gen32](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = NResult(Gen32);
                }
            });
        }

        // Wait for all threads to complete
        for(auto& worker : Thread) {
            if(worker.joinable()) {
                worker.join();
            }
        }

        return Result;
    }

    vec<i64> RandomNumsTVL(const idx Count = 10, i64 Min = -10, i64 Max = 10, const idx Threads = 4) {
        RdDevice Rd;
        Twister64 Gen64(Rd());

        CheckRange(Max, Min);

        vec<i64> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division
        auto NResult = DistInt(Min, Max);

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, Count);

            if(Start >= Count) break;

            Thread.emplace_back([&Result, Start, End, &NResult, &Gen64](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = NResult(Gen64);
                }
            });
        }

        // Wait for all threads to complete
        for(auto& worker : Thread) {
            if(worker.joinable()) {
                worker.join();
            }
        }

        return Result;
    }
}

// Float
namespace Tools::Random {
    vec<f32> RandomNumsTVF(const idx Count = 10, f32 Min = -10, f32 Max = 10, const idx Threads = 4, const u32 Rounding = 0) {
        RdDevice Rd;
        Twister32 Gen32(Rd());
        CheckRange(Max, Min);

        vec<f32> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division
        auto NResult = DistReal(Min, Max);

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, Count);

            if(Start >= Count) break;

            Thread.emplace_back([&Result, Start, End, &NResult, &Gen32, &Rounding](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = Round(NResult(Gen32), Rounding);
                }
            });
        }

        // Wait for all threads to complete
        for(auto& worker : Thread) {
            if(worker.joinable()) {
                worker.join();
            }
        }

        return Result;
    }

    vec<f64> RandomNumsTVD(const idx Count = 10, f64 Min = -10, f64 Max = 10, const idx Threads = 4, const u32 Rounding = 0) {
        RdDevice Rd;
        Twister64 Gen64(Rd());
        CheckRange(Max, Min);

        vec<f64> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division
        auto NResult = DistReal(Min, Max);

        for(idx t = 0; t < Threads; t++) {
            idx Start = t * ChunkSize;
            idx End = std::min(Start + ChunkSize, Count);

            if(Start >= Count) break;

            Thread.emplace_back([&Result, Start, End, &NResult, &Gen64, &Rounding](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = Start; i < End && !st.stop_requested(); i++) {
                    Result[i] = Round(NResult(Gen64), Rounding);
                }
            });
        }

        // Wait for all threads to complete
        for(auto& worker : Thread) {
            if(worker.joinable()) {
                worker.join();
            }
        }

        return Result;
    }
}

#endif