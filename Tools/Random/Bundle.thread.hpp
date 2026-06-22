#pragma once

#ifndef TOOLS_RANDOM_VECTOR_THREAD_HPP
#define TOOLS_RANDOM_VECTOR_THREAD_HPP

#include "_Common.hpp"
#include <thread>

// Integer
namespace Tools::Random {
    vec<vec<i32>> RandomNumsTBI(const idx SubVectorCount = 4, const idx Count = 10, i32 Min = -10, i32 Max = 10, const idx Threads = 4) {
        RdDevice rd;
        Twister32 Gen32(rd());

        vec<vec<i32>> Result;
        Result.resize(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(Count);
        }

        vec<std::jthread> Thread;

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, Min, Max, &Gen32](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = DistInt(Min, Max)(Gen32);
                    }
                }
            });
        }

        // Wait for all threads to complete
        for(auto& Td : Thread) {
            if(Td.joinable()) {
                Td.join();
            }
        }

        return Result;
    }

    vec<vec<i64>> RandomNumsTBL(const idx SubVectorCount = 4, const idx Count = 10, i64 Min = -10, i64 Max = 10, const idx Threads = 4) {
        RdDevice rd;
        Twister64 Gen64(rd());

        vec<vec<i64>> Result;
        Result.resize(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(Count);
        }

        vec<std::jthread> Thread;

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, Min, Max, &Gen64](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = DistInt(Min, Max)(Gen64);
                    }
                }
            });
        }

        // Wait for all threads to complete
        for(auto& Td : Thread) {
            if(Td.joinable()) {
                Td.join();
            }
        }

        return Result;
    }
}

// Float
namespace Tools::Random {
    vec<vec<f32>> RandomNumsTBF(const idx SubVectorCount = 4, const idx Count = 10, f32 Min = -10, f32 Max = 10, const idx Threads = 4) {
        RdDevice rd;
        Twister32 Gen32(rd());

        vec<vec<f32>> Result;
        Result.resize(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(Count);
        }

        vec<std::jthread> Thread;

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, Min, Max, &Gen32](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = DistReal(Min, Max)(Gen32);
                    }
                }
            });
        }

        // Wait for all threads to complete
        for(auto& Td : Thread) {
            if(Td.joinable()) {
                Td.join();
            }
        }

        return Result;
    }

    vec<vec<f64>> RandomNumsTBD(const idx SubVectorCount = 4, const idx Count = 10, f64 Min = -10, f64 Max = 10, const idx Threads = 4) {
        RdDevice rd;
        Twister64 Gen64(rd());

        vec<vec<f64>> Result;
        Result.resize(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(Count);
        }

        vec<std::jthread> Thread;

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, Min, Max, &Gen64](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = DistReal(Min, Max)(Gen64);
                    }
                }
            });
        }

        // Wait for all threads to complete
        for(auto& Td : Thread) {
            if(Td.joinable()) {
                Td.join();
            }
        }

        return Result;
    }
}

#endif