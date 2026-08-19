/* ---- Begin: TrueRandom/_Internal.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_INTERNAL_LINUX
#define TOOLS_TRUE_RANDOM_INTERNAL_LINUX 2b

#include "_Common.hpp"

namespace rdt::TrueRandom {
    // ─── Type Aliases (internal use only) ────────────────────────
    // using Byte = std::uint8_t;
    // using u8 as "byte" beacuse it's ONE byte (without the 's' in "bytes")
    // using SizeT = std::size_t;

}

// ─── TRNG Engine (URBG-compliant) ────────────────────────────
namespace rdt::TrueRandom {
    /**
     * @brief True Random Number Generator backed by Linux randomizer.
     */
    struct Generator {
    };
}

// ─── Static Assertions (compile-time safety net) ─────────────
namespace rdt::TrueRandom {

    // Verify Generator satisfies URBG concept
    // static_assert(
    //     std::uniform_random_bit_generator<Generator>,
    //     "Generator must satisfy std::uniform_random_bit_generator"
    // );

    // Verify type aliases match expected sizes
    #ifdef TOOLS_SKIP_STATIC_ASSERT_VERIFY
    #else
    static_assert(sizeof(u8)  == 1);
    static_assert(sizeof(u16) == 2);
    static_assert(sizeof(u32) == 4);
    static_assert(sizeof(u64) == 8);
    static_assert(sizeof(i32) == 4);
    static_assert(sizeof(i64) == 8);
    static_assert(sizeof(f32) == 4);
    static_assert(sizeof(f64) == 8);
    static_assert(sizeof(u64) == sizeof(size_t));
    #endif
}

#endif

/* ---- End: TrueRandom/_Internal.hpp ---- */
