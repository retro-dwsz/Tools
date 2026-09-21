#pragma once

#ifndef TOOLS_RANDOMIZER_XOSHIRO256_HPP
#define TOOLS_RANDOMIZER_XOSHIRO256_HPP

#include "../Types.hpp"
#include "../Casting.hpp"

namespace rdt::Random {
    using namespace rdt::Types;
    using namespace rdt::Cast;

    /**
     * @brief Fully constexpr Xoshiro256** PRNG.
     * @note Period: 2^256 - 1. Passes BigCrush & PractRand.
     *       Suitable for compile-time random generation.
     */
    struct ConstexprTwister {
        u64 s[4]{}; // 256-bit state

        // Constexpr constructor from seed
        explicit constexpr ConstexprTwister(u64 seed = 0x123456789ABCDEF0ULL) noexcept {
            // SplitMix64 to initialize state from single seed
            for (u64 & i : this->s) {
                seed += 0x9E3779B97F4A7C15ULL;
                u64 z = seed;
                z = (z ^ (z >> 30)) * 0xBF58476D1CE4E5B9ULL;
                z = (z ^ (z >> 27)) * 0x94D049BB133111EBULL;
                i = z ^ (z >> 31);
            }
        }

        // Generate fully constexpr next u64
        constexpr u64 Next() noexcept {
            const u64 result = RotateLeft(this->s[1] * 5, 7) * 9;

            const u64 t = this->s[1] << 17;
            this->s[2] ^= this->s[0];
            this->s[3] ^= this->s[1];
            this->s[1] ^= this->s[2];
            this->s[0] ^= this->s[3];
            this->s[2] ^= t;
            this->s[3] = RotateLeft(this->s[3], 45);

            return result;
        }

        // Constexpr range [min, max] inclusive
        template <UnsignedInt T = u64>
        constexpr T Range(const T Min, const T Max) noexcept {
            const u64 Raw = this->Next();
            const u64 Range = scast<u64>(Max) - scast<u64>(Min) + 1;
            return scast<T>(scast<u64>(Min) + (Raw % Range));
        }

        private:
        static constexpr u64 RotateLeft(const u64 Bit, const idx Rotation) noexcept {
            return (Bit << Rotation) | (Bit >> (64 - Rotation));
        }
    };
}

#endif
