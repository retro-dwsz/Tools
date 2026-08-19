/* ---- Begin: Random/_Common.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_COMMON_HPP
#define TOOLS_RANDOM_COMMON_HPP 1

/**
 * @file _Common.hpp
 * @brief Internal common utilities and definitions for the ToolsE::Random module.
 *
 * This header provides shared dependencies, type aliases, and helper functions
 * used across the randomization library. It includes core rdt library components
 * for types, casting, rounding, and base randomization primitives.
 *
 * @section lib_overview Library Overview
 * rdt.Random is a high-performance, C++26-compliant randomization wrapper
 * designed to provide Python-like expressiveness with C++ type safety.
 *
 * Key Features:
 * - **Type Safety**: Uses C++20/26 concepts (OneOf) to ensure correct type usage.
 * - **Thread Safety**: Utilizes `static thread_local` generators for single-threaded
 *   functions and `std::jthread` with local generators for multi-threaded operations.
 * - **Flexibility**: Supports both preset generators (32/64-bit Mersenne Twister)
 *   and custom user-provided generators via `TwisterAny<>`.
 * - **Unicode Support**: Full support for char, wchar_t, char16_t, and char32_t.
 *
 * @section file_structure File Structure
 * The library is organized into three main categories:
 * 1. **Base**: Single-threaded functions with preset generators.
 * 2. **Custom**: Single-threaded functions accepting a custom `TwisterAny<>` reference.
 * 3. **Thread**: Multi-threaded functions using `std::jthread` for parallel generation.
 *
 * @section naming_conventions Naming Conventions
 * Functions follow a strict suffix pattern to indicate their behavior:
 * -I: Integer (i32)
 * -L: Long Integer (i64)
 * -F: Float (f32)
 * -D: Double (f64)
 * -V: Vector (std::vector or custom vec)
 * -B: Bundle (vec<vec<T>>)
 * -SB: Scattered Bundle (vec<vec<T>> with random sub-vector sizes)
 * -T: Threaded (Multi-threaded implementation)
 *
 * Example: `RandomNumsTVI` -> Random Numbers, Threaded, Vector, Integer 32.
 */
#include "../Types.hpp"
#include "../Casting.hpp"
#include "../Rounding.hpp"
#include "../Randomizer.hpp"

/**
 * @def sthread
 * @brief Shorthand macro for 'static thread_local'.
 *
 * Used to declare static variables that are local to each thread.
 * This is crucial for maintaining separate random number generator states
 * per thread without explicit synchronization overhead in single-threaded
 * or thread-isolated contexts.
 *
 * @note In multi-threaded functions (files ending in .Thread.hpp),
 * local generators are preferred over sthread to avoid contention.
 */
#define sthread static thread_local

using namespace rdt::Random;

namespace rdt::Random {
    /**
     * @brief Warning message displayed when unusually large index counts are detected.
     *
     * This constant holds the warning string triggered by WarningCount() if
     * parameters exceed standard 32-bit integer limits, suggesting potential
     * performance impacts or memory usage concerns.
     */
    const str Warning = std::format(
        "Unusual number for indexes detected, proceed with caution" /* , 0xF84234 */
    );
}

namespace rdt::Random {
    using rdt::Round::Round;

    // for Vector items
    /**
     * @brief Checks vector count limits and prints warning if exceeded.
     * @param Count The number of elements to be generated.
     * @note Triggers if Count > INT16_MAX.
     */
    inline void WarningCount(const idx& Count) {
        if(Count > INT16_MAX) {
            #ifdef TOOLS_RANDOM_SILENT
            printf("!!");
            #else
            printf("%s", Warning.data());
            #endif
        }
    }

    // for Bundle items
    /**
     * @brief Checks bundle dimensions and prints warning if exceeded.
     * @param SubVectorCount Number of sub-vectors.
     * @param NCount Number of elements per sub-vector.
     * @note Triggers if either value > INT32_MAX.
     */
    inline void WarningCount(const idx& SubVectorCount, const idx& NCount){
        if(SubVectorCount > INT32_MAX || NCount > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            printf("%s", Warning.data());
            #else
            printf("%s", Warning.data());
            #endif
        }
    }

    // for SBundle
    /**
     * @brief Checks scattered bundle dimensions and prints warning if exceeded.
     * @param SubVectorCount Number of sub-vectors.
     * @param CountMin Minimum elements per sub-vector.
     * @param CountMax Maximum elements per sub-vector.
     * @note Triggers if any value > INT32_MAX.
     */
    inline void WarningCount(const idx& SubVectorCount, const idx& CountMin, const idx& CountMax){
        if(SubVectorCount > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            printf("!!");
            #else
            printf("%s", Warning.data());
            #endif
        }
    }

    /**
     * @brief Selects the optimal Twister engine based on value type.
     * - i64/f64/fld          -> Twister64
     * - i8/i16/i32/f32       -> Twister32
     * - char/whcar/char61&32 -> Twister32
     */
    template <typename T>
    requires OneOf<T,
        i8, i16, i32, i64,
        u8, u16, u32, u64,
        f32, f64, fld,
        char, wchar, char16, char32
    >
    using TwisterFor = std::conditional_t<
        TypeCompare<T, i64> || TypeCompare<T, u64> || TypeCompare<T, f64> || TypeCompare<T, fld>,
        Twister64,
        Twister32
    >;

    // using Twister = std::conditional_t<TypeCompare<Int, i64>, Twister64, Twister32>;
    // using Twister = std::conditional_t<TypeCompare<Real, f64>, Twister64, Twister32>;

    template <typename T>
    using Bundle = vec<vec<T>>;
}

/** For Choises **/
namespace rdt::Random {
    /**
     * @brief Validates and clamps index range against data bounds.
     * @param Size The size of the data container.
     * @param From Lower bound (swapped with To if From > To).
     * @param To Upper bound (clamped to Size-1).
     * @throws std::out_of_range if both indices exceed data size after clamping.
     */
    inline void ValidateChoiceRange(const idx Size, idx& From, idx& To) {
        CheckRange(From, To);
        if (From >= Size) {
            throw std::out_of_range("Choice: 'From' index exceeds data size");
        }
        if (To >= Size) {
            To = Size - 1; // Clamp to valid range
        }
    }
}

/** For String charset **/
namespace rdt::Random {
    /**
     * @brief Concept for valid character set containers.
     * Matches std::string variants and vectors of character types.
     */
    template <typename T>
    concept CharSet = OneOf<T,
        str, wstr, str16, str32,
        vec<char>, vec<wchar>, vec<char16>, vec<char32>
    >;
}

#endif

/* ---- End: Random/_Common.hpp ---- */
