#pragma once

#include "./Random/Random.common.hpp"

// Non-HW only!

namespace Tools::Random::Detail {
    template<typename T, typename Engine>
    T GenerateValue(Engine& gen, T min, T max) {
        if constexpr (std::is_integral_v<T>) {
            DistInt<T> dist(static_cast<i64>(min), static_cast<i64>(max));
            return dist(gen);
        } else {
            DistReal<T> dist(static_cast<f64>(min), static_cast<f64>(max));
            return dist(gen);
        }
    }

    // ── Pilih tipe secara random dari pack Ts... ───────────────
    template<typename... Ts, typename T2, typename Engine>
    auto RandomPickType(Engine& gen, T2 Min, T2 Max, i32 Rounding) -> tvar<Ts...> {
        constexpr idx N = sizeof...(Ts);
        static_assert(N > 0, "Minimal satu tipe harus disediakan");
        
        std::uniform_int_distribution<idx> type_dist(0, N - 1);
        idx index = type_dist(gen);
        
        idx count = 0;
        tvar<Ts...> result;
        
        auto pick = [&]<typename T>(std::type_identity<T>) {
            if (count++ == index) {
                T Min = static_cast<T>(Min);
                T Max = static_cast<T>(Max);
                
                T raw_value;
                if constexpr (std::is_integral_v<T>) {
                    raw_value = GenerateValue(gen, Min, Max);
                } else {
                    auto float_val = GenerateValue(gen, Min, Max);
                    raw_value = Tools::Round::Round(float_val, Rounding); // Apply rounding
                }
                result = raw_value;
            }
        };
        
        (pick(std::type_identity<Ts>{}), ...);
        return result;
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
    template<typename... Ts, typename T2, typename Engine = Twister32>
    vec<tvar<Ts...>> RandomNumsVV(idx Count, T2 Min, T2 Max, i32 Rounding = 2, Engine& Gen = Detail::MakeEngine32()) {
        if(Max < Min) std::swap(Min, Max);
        if(Count > INT32_MAX) {
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }
        
        vec<tvar<Ts...>> result;
        result.reserve(Count);
        
        for(idx i = 0; i < Count; ++i) {
            result.push_back(Detail::RandomPickType<Ts...>(Gen, Min, Max, Rounding));
        }
        return result;
    }

    // ── BV: Bundles Variant (1D, group by type then shuffle) ─────
    template<typename... Ts, typename T2, typename Engine = Twister32>
    vec<tvar<Ts...>> RandomNumsBV(idx CountPerType, T2 Min, T2 Max, i32 Rounding = 2, Engine& Gen = Detail::MakeEngine32()) {
        if(Max < Min) std::swap(Min, Max);
        if(CountPerType > INT32_MAX) {
            #ifdef TOOLS_RANDOM_SILENT
            std::cout << "!!";
            #else
            std::cout << Warning;
            #endif
        }
        
        vec<tvar<Ts...>> result;
        result.reserve(CountPerType * sizeof...(Ts));
        
        // Generate per tipe (bundled)
        auto generate_for_type = [&]<typename T>(std::type_identity<T>) {
            for(idx i = 0; i < CountPerType; ++i) {
                T min_val = static_cast<T>(Min);
                T max_val = static_cast<T>(Max);
                
                if constexpr (std::is_integral_v<T>) {
                    result.push_back(Detail::GenerateValue(Gen, min_val, max_val));
                } else {
                    auto val = Detail::GenerateValue(Gen, min_val, max_val);
                    result.push_back(Tools::Round::Round(val, Rounding));
                }
            }
        };
        (generate_for_type(std::type_identity<Ts>{}), ...);
        
        // Shuffle agar tidak berurutan per tipe
        std::shuffle(result.begin(), result.end(), Gen);
        return result;
    }

    // ── SV: Scattered Variant (1D, proportional + interleaved) ───
    template<typename... Ts, typename T2, typename Engine = Twister32>
    vec<tvar<Ts...>> RandomNumsSV(idx TotalCount, T2 Min, T2 Max, i32 Rounding = 2, Engine& Gen = Detail::MakeEngine32()) {
        constexpr idx N = sizeof...(Ts);
        static_assert(N > 0, "Minimal satu tipe harus disediakan");
        if(Max < Min) std::swap(Min, Max);
        
        vec<tvar<Ts...>> result;
        result.reserve(TotalCount);
        
        // Hitung distribusi proporsional
        idx base_count = TotalCount / N;
        idx remainder = TotalCount % N;
        
        // Buat pool indeks tipe
        vec<idx> type_pool;
        idx type_idx = 0;
        auto add_to_pool = [&]<typename T>(std::type_identity<T>) {
            idx times = base_count + (type_idx < remainder ? 1 : 0);
            for(idx i = 0; i < times; ++i) type_pool.push_back(type_idx);
            ++type_idx;
        };
        (add_to_pool(std::type_identity<Ts>{}), ...);
        
        std::shuffle(type_pool.begin(), type_pool.end(), Gen);
        
        // Generate sesuai pool
        idx pool_pos = 0;
        type_idx = 0;
        auto generate_from_pool = [&]<typename T>(std::type_identity<T>) {
            while(pool_pos < type_pool.size() && type_pool[pool_pos] == type_idx) {
                T min_val = static_cast<T>(Min);
                T max_val = static_cast<T>(Max);
                
                if constexpr (std::is_integral_v<T>) {
                    result.push_back(Detail::GenerateValue(Gen, min_val, max_val));
                } else {
                    auto val = Detail::GenerateValue(Gen, min_val, max_val);
                    result.push_back(Tools::Round::Round(val, Rounding));
                }
                ++pool_pos;
            }
            ++type_idx;
        };
        (generate_from_pool(std::type_identity<Ts>{}), ...);
        
        return result;
    }
}