#pragma once

#ifndef TOOLS_RANDOM_VARIANT_HPP
#define TOOLS_RANDOM_VARIANT_HPP

#include "FeatureCheck.hpp"


#include "./Random/Random.common.hpp"
#include "./Casting.hpp"

// Non-HW only!

using namespace Tools::Cast;

namespace Tools::Random::Detail {
    template<typename T, typename Engine>
    T GenerateValue(Engine& gen, T min, T max) {
        if constexpr (std::is_integral_v<T>) {
            DistInt<T> Dist(scast<i64>(min), scast<i64>(max));
            return Dist(gen);
        } else {
            DistReal<T> Dist(scast<f64>(min), scast<f64>(max));
            return Dist(gen);
        }
    }

    // ── Randomly pick types from Ts... pack ───────────────
    template<typename... Ts, typename T2, typename Engine>
    auto RandomPickType(Engine& gen, T2 Min, T2 Max, i32 Rounding) -> tvar<Ts...> {
        constexpr idx N = sizeof...(Ts);
        static_assert(N > 0, "Give at least One type!");

        DistInt<idx> TypeDist(0, N - 1);
        idx Index = TypeDist(gen);

        idx Count = 0;
        tvar<Ts...> Result;

        auto Picker = [&]<typename T>(std::type_identity<T>) {
            if (Count++ == Index) {
                T Min = scast<T>(Min);
                T Max = scast<T>(Max);

                T RawValue;
                if constexpr (std::is_integral_v<T>) {
                    RawValue = GenerateValue(gen, Min, Max);
                } else {
                    auto FloatVal = GenerateValue(gen, Min, Max);
                    RawValue = Tools::Round::Round(FloatVal, Rounding); // Apply rounding
                }
                Result = RawValue;
            }
        };

        (Picker(std::type_identity<Ts>{}), ...);
        return Result;
    }

    Twister32 MakeEngine32(u32 seed = UINT32_MAX) {
        return Twister32(seed);
    }

    // Twister32 MakeEngine32S(const u32 seed = UINT32_MAX) {
    //     return Twister32(seed);
    // }

    Twister64 MakeEngine64(u64 seed = UINT64_MAX) {
        return Twister64(seed);
    }
}

namespace Tools::Random {
    // ── VV: Vector Variant (1D, fully random per element) ─────────
    template<typename... T1, typename T2, typename Engine = Twister32>
    vec<tvar<T1...>> RandomNumsVV(idx Count, T2 Min, T2 Max, i32 Rounding = 2, Engine& Gen = Detail::MakeEngine32()) {
        if(Max < Min) std::swap(Min, Max);
        if(Count > INT32_MAX) {
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<tvar<T1...>> result;
        result.reserve(Count);

        for(idx i = 0; i < Count; ++i) {
            result.push_back(Detail::RandomPickType<T1...>(Gen, Min, Max, Rounding));
        }
        return result;
    }

    // ── BV: Bundles Variant (1D, group by type then shuffle) ─────
    template<typename... T1, typename T2, typename Engine = Twister32>
    vec<tvar<T1...>> RandomNumsBV(idx CountPerType, T2 Min, T2 Max, i32 Rounding = 2, Engine& Gen = Detail::MakeEngine32()) {
        if(Max < Min) std::swap(Min, Max);
        if(CountPerType > INT32_MAX) {
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }

        vec<tvar<T1...>> Result;
        Result.reserve(CountPerType * sizeof...(T1));

        // Generate/ type (bundled)
        auto GenerateForType = [&]<typename T>(std::type_identity<T>) {
            for(idx i = 0; i < CountPerType; ++i) {
                T MinVal = scast<T>(Min);
                T MaxVal = scast<T>(Max);

                if constexpr (std::is_integral_v<T>) {
                    Result.push_back(Detail::GenerateValue(Gen, MinVal, MaxVal));
                } else {
                    auto val = Detail::GenerateValue(Gen, MinVal, MaxVal);
                    Result.push_back(Tools::Round::Round(val, Rounding));
                }
            }
        };
        (GenerateForType(std::type_identity<T1>{}), ...);

        std::shuffle(Result.begin(), Result.end(), Gen);
        return Result;
    }

    // ── SV: Scattered Variant (1D, proportional + interleaved) ───
    template<typename... T1, typename T2, typename Engine = Twister32>
    vec<tvar<T1...>> RandomNumsSV(idx TotalCount, T2 Min, T2 Max, i32 Rounding = 2, Engine& Gen = Detail::MakeEngine32()) {
        constexpr idx N = sizeof...(T1);
        static_assert(N > 0, "Minimal satu tipe harus disediakan");
        if(Max < Min) std::swap(Min, Max);

        vec<tvar<T1...>> Result;
        Result.reserve(TotalCount);

        // Count proportional distribution
        idx BaseCount = TotalCount / N;
        idx Remainder = TotalCount % N;

        // Type index pool
        vec<idx> TypePool;
        idx TypeIdx = 0;
        auto AddToPool = [&]<typename Type>(std::type_identity<Type>) {
            idx Times = BaseCount + (TypeIdx < Remainder ? 1 : 0);
            for(idx i = 0; i < Times; ++i) TypePool.push_back(TypeIdx);
            ++TypeIdx;
        };
        (AddToPool(std::type_identity<T1>{}), ...);

        std::shuffle(TypePool.begin(), TypePool.end(), Gen);

        // Generate sesuai pool
        idx PoolPos = 0;
        TypeIdx = 0;
        auto GenerateFromPool = [&]<typename Type>(std::type_identity<Type>) {
            while(PoolPos < TypePool.size() && TypePool[PoolPos] == TypeIdx) {
                Type MinVal = scast<Type>(Min);
                Type MaxVal = scast<Type>(Max);

                if constexpr (std::is_integral_v<Type>) {
                    Result.push_back(Detail::GenerateValue(Gen, MinVal, MaxVal));
                } else {
                    auto val = Detail::GenerateValue(Gen, MinVal, MaxVal);
                    Result.push_back(Tools::Round::Round(val, Rounding));
                }
                ++PoolPos;
            }
            ++TypeIdx;
        };
        (GenerateFromPool(std::type_identity<T1>{}), ...);

        return Result;
    }
}

#endif