#pragma once

#ifndef TOOLS_RANDOM_VECTOR_THREAD_HPP
#define TOOLS_RANDOM_VECTOR_THREAD_HPP

#include "_Common.hpp"
#include <thread>

// Generic
namespace Tools::Random {
    template <typename Int>
    requires OneOf<Int, i32, i64>
    vec<vec<Int>> RandomNumsTB(const idx SubVectorCount = 4, const idx Count = 10, Int Min = -10, Int Max = 10, const idx Threads = 4) {
        RdDevice rd;
        Twister64 Gen64(rd());

        vec<vec<Int>> Result;
        Result.resize(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(Count);
        }

        vec<std::jthread> Thread;
        auto NResult = DistInt(Min, Max);

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, &NResult, &Gen64](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = NResult(Gen64);
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

    template <typename Real>
    requires OneOf<Real, f32, f64>
    vec<vec<Real>> RandomNumsTB(const idx SubVectorCount = 4, const idx Count = 10, Real Min = -10, Real Max = 10, const idx Threads = 4, const u32 Rounding = 0) {
        RdDevice rd;
        Twister64 Gen64(rd());

        vec<vec<Real>> Result;
        Result.resize(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(Count);
        }

        vec<std::jthread> Thread;
        auto NResult = DistReal(Min, Max);

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, &NResult, &Gen64, &Rounding](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = Round(NResult(Gen64), Rounding);
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
        auto NResult = DistInt(Min, Max);

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, &NResult, &Gen32](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = NResult(Gen32);
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
        auto NResult = DistInt(Min, Max);

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, &NResult, &Gen64](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = NResult(Gen64);
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
    vec<vec<f32>> RandomNumsTBF(const idx SubVectorCount = 4, const idx Count = 10, f32 Min = -10, f32 Max = 10, const idx Threads = 4, const u32 Rounding = 0) {
        RdDevice rd;
        Twister32 Gen32(rd());

        vec<vec<f32>> Result;
        Result.resize(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(Count);
        }

        vec<std::jthread> Thread;
        auto NResult = DistReal(Min, Max);

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, &NResult, &Gen32, &Rounding](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = Round(NResult(Gen32), Rounding);
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

    vec<vec<f64>> RandomNumsTBD(const idx SubVectorCount = 4, const idx Count = 10, f64 Min = -10, f64 Max = 10, const idx Threads = 4, const u32 Rounding = 0) {
        RdDevice rd;
        Twister64 Gen64(rd());

        vec<vec<f64>> Result;
        Result.resize(SubVectorCount);

        for(idx i = 0; i < SubVectorCount; i++){
            Result[i].resize(Count);
        }

        vec<std::jthread> Thread;
        auto NResult = DistReal(Min, Max);

        // Distribute sub-vectors across threads
        for(idx t = 0; t < Threads; t++) {
            Thread.emplace_back([&Result, t, Threads, SubVectorCount, Count, &NResult, &Gen64, &Rounding](std::stop_token st) {
                // Each thread handles specific sub-vectors
                for(idx i = t; i < SubVectorCount && !st.stop_requested(); i += Threads) {
                    for(idx j = 0; j < Count; j++) {
                        Result[i][j] = Round(NResult(Gen64), Rounding);
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