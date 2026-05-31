#pragma once

#ifndef TOOLS_RANDOM_VECTOR_THREAD_HPP
#define TOOLS_RANDOM_VECTOR_THREAD_HPP

#include "Random.common.hpp"
#include <thread>

// Integer
namespace Tools::Random {
    vec<i32> RandomNumsTVI(const idx Count = 10, i32 Min = -10, i32 Max = 10, const idx Threads = 4) {
        RdDevice rd;
        Twister32 Gen32(rd());

        CheckRange(Max, Min);

        vec<i32> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division

        for(idx t = 0; t < Threads; t++) {
            idx start = t * ChunkSize;
            idx end = std::min(start + ChunkSize, Count);

            if(start >= Count) break;

            Thread.emplace_back([&Result, start, end, Min, Max, &Gen32](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = start; i < end && !st.stop_requested(); i++) {
                    Result[i] = DistInt(Min, Max)(Gen32);
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
        RdDevice rd;
        Twister64 Gen64(rd());

        CheckRange(Max, Min);

        vec<i64> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division

        for(idx t = 0; t < Threads; t++) {
            idx start = t * ChunkSize;
            idx end = std::min(start + ChunkSize, Count);

            if(start >= Count) break;

            Thread.emplace_back([&Result, start, end, Min, Max, &Gen64](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = start; i < end && !st.stop_requested(); i++) {
                    Result[i] = DistInt(Min, Max)(Gen64);
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
    vec<f32> RandomNumsTVF(const idx Count = 10, f32 Min = -10, f32 Max = 10, const idx Threads = 4) {
        RdDevice rd;
        Twister32 Gen32(rd());

        CheckRange(Max, Min);

        vec<f32> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division

        for(idx t = 0; t < Threads; t++) {
            idx start = t * ChunkSize;
            idx end = std::min(start + ChunkSize, Count);

            if(start >= Count) break;

            Thread.emplace_back([&Result, start, end, Min, Max, &Gen32](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = start; i < end && !st.stop_requested(); i++) {
                    Result[i] = DistReal(Min, Max)(Gen32);
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

    vec<f64> RandomNumsTVD(const idx Count = 10, f64 Min = -10, f64 Max = 10, const idx Threads = 4) {
        RdDevice rd;
        Twister64 Gen64(rd());

        CheckRange(Max, Min);

        vec<f64> Result;
        Result.resize(Count); // Initialize with zeros

        vec<std::jthread> Thread;
        idx ChunkSize = (Count + Threads - 1) / Threads; // Ceiling division

        for(idx t = 0; t < Threads; t++) {
            idx start = t * ChunkSize;
            idx end = std::min(start + ChunkSize, Count);

            if(start >= Count) break;

            Thread.emplace_back([&Result, start, end, Min, Max, &Gen64](std::stop_token st) {
                // Local random generator per thread to avoid contention
                for(idx i = start; i < end && !st.stop_requested(); i++) {
                    Result[i] = DistReal(Min, Max)(Gen64);
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