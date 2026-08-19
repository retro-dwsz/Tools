/* ---- Begin: TrueRandom/_Internal.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_INTERNAL_WIN32
#define TOOLS_TRUE_RANDOM_INTERNAL_WIN32 2a

#include <windows.h>
#include <bcrypt.h>
#include <bemapiset.h>

#include "_Common.hpp"

namespace rdt::TrueRandom {
    // ─── Type Aliases (internal use only) ────────────────────────
    // using Byte = std::uint8_t;
    // using u8 as "byte" beacuse it's ONE byte (without the 's' in "bytes")
    // using SizeT = std::size_t;

    /**
     * @brief Acquire raw entropy bytes from Windows BCrypt.
     *
     * Uses BCRYPT_USE_SYSTEM_PREFERRED_RNG which:
     * - Selects the best available system RNG automatically
     * - Is FIPS 140-2 conditioned (AES-CBC-MAC post-processing)
     * - Never blocks (pool pre-seeded at boot)
     * - Is fully thread-safe (no external synchronization needed)
     *
     * @param Buff  Destination buffer. Must not be nullptr.
     * @param Size  Number of bytes to acquire. Must be > 0.
     * @return SizeT Number of bytes successfully written.
     *              Returns 0 on ANY failure (invalid params, API error).
     *
     * @note This is an ALL-OR-NOTHING operation.
     *       Partial fills never occur with SYSTEM_PREFERRED_RNG.
     */
    [[nodiscard]] inline size_t AcquireEntropy(u8* Buff, const size_t Size) noexcept {
        // Guard: invalid parameters
        if (Buff == nullptr || Size == 0) [[unlikely]] {
            return 0;
        }

        // BCryptGenRandom returns NTSTATUS (LONG)
        // STATUS_SUCCESS == 0L
        // Cast Size to ULONG: BCrypt API uses ULONG, not size_t
        // Safe because no sane caller requests > 4 GB in one call
        const NTSTATUS Status = ::BCryptGenRandom(
            nullptr,                                // hAlgorithm = NULL
            Buff,                                   // pbBuffer
            Cast::scast<ULONG>(Size),                     // cbBuffer
            BCRYPT_USE_SYSTEM_PREFERRED_RNG         // dwFlags
        );

        if (Status != 0L) [[unlikely]] {
            return 0;
        }

        return Size;
    }

    /**
     * @brief Check if BCrypt entropy source is available.
     *
     * Performs a minimal 1-byte test acquisition.
     * Useful for startup validation or graceful degradation.
     *
     * @return true if BCryptGenRandom succeeded.
     * @return false if entropy source is unavailable.
     */
    [[nodiscard]]
    inline bool IsEntropyAvailable() noexcept {
        u8 TestByte{};
        return AcquireEntropy(&TestByte, 1) == 1;
    }
}

// ─── TRNG Engine (URBG-compliant) ────────────────────────────
namespace rdt::TrueRandom {
    /**
     * @brief True Random Number Generator backed by Windows BCrypt.
     *
     * Satisfies std::uniform_random_bit_generator concept.
     * Directly usable with std::uniform_int_distribution,
     * std::uniform_real_distribution, and any STL algorithm
     * that requires a URBG.
     *
     * Key properties:
     * - No seed, no state, no period
     * - Cryptographically secure (FIPS 140-2 conditioned)
     * - Thread-safe (stateless, each call is independent)
     * - Non-blocking on Windows 10+
     *
     * Performance: ~100-500 ns per call (vs ~2 ns for MT19937).
     * Use PRNG for simulations. Use TRNG for security-sensitive contexts.
     *
     * ─── How operator() works ────────────────────────────────────
     * 1. Allocate u64 on stack (zero-initialized)
     * 2. reinterpret_cast u64* -> u8* so AcquireEntropy can write
     *    raw bytes directly into Val's memory (u64 is trivially
     *    copyable, no padding concerns on all supported platforms)
     * 3. Request exactly sizeof(u64) = 8 bytes from BCrypt
     * 4. Verify ALL 8 bytes were written (all-or-nothing contract)
     * 5. On failure -> throw (URBG operator() MUST return valid value)
     * 6. On success -> return Val as uniformly distributed u64
     *
     * ─── Why struct, not class? ──────────────────────────────────
     * Generator is a stateless value-type functor with all-public
     * interface. Struct communicates "no hidden state, no lifecycle"
     * — matching STL convention (std::mt19937, std::random_device).
     */
    struct Generator {
        using result_type = u64;
        using Output = result_type;

        static constexpr Output min() noexcept {
            return 0;
        }
        static constexpr Output max() noexcept {
            return std::numeric_limits<u64>::max();
        }

        /**
         * @brief Generate single 64-bit true random value.
         * @return u64 Uniform random value in [min(), max()].
         * @throws std::runtime_error if entropy acquisition fails.
         */
        Output operator()() const {
            Output Val{};

            // rcast u64* → u8*: treat Val's memory as raw byte buffer.
            // Safe because u64 is trivially copyable with no padding.
            auto ValPtr  = Cast::rcast<u8*>(&Val);
            auto ValSize = sizeof(Val);

            if (AcquireEntropy(ValPtr, ValSize) != ValSize) [[unlikely]] {
                throw std::runtime_error(
                    "rdt::TrueRandom::Generator: BCryptGenRandom failed"
                );
            }
            return Val;
        }

        /**
         * @brief Fill buffer with true random bytes (bulk operation).
         *
         * More efficient than repeated operator() calls for large buffers.
         * Single BCrypt call vs N calls.
         *
         * @param Buff Destination buffer. Must point to ≥ Size writable bytes.
         * @param Size Number of bytes to fill.
         * @return true on success, false on failure.
         */
        [[nodiscard]] static bool FillBytes(void* Buff, const size_t Size) noexcept {
            if (Buff == nullptr || Size == 0) [[unlikely]] {
                return false;
            }
            return AcquireEntropy(Cast::scast<u8*>(Buff), Size) == Size;
        }

        /// @brief Identify active entropy source (debug/logging).
        static constexpr str SourceName() noexcept {
            return std::format(
                "BCryptGenRandom(BCRYPT_USE_SYSTEM_PREFERRED_RNG) -> 0x{:X}",
                BCRYPT_USE_SYSTEM_PREFERRED_RNG
            );
        }
    };
}

// ─── Static Assertions (compile-time safety net) ─────────────
namespace rdt::TrueRandom {
    //
    // template<typename T>
    // void s_assert(const T&& T1, const T&& T2) {
    //     static_assert(T1 == T2);
    // }

    // Verify Generator satisfies URBG concept
    static_assert(
        std::uniform_random_bit_generator<Generator>,
        "Generator must satisfy std::uniform_random_bit_generator"
    );

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
