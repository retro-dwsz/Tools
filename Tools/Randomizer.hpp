#pragma once

#ifndef TOOLS_RANDOMIZER_HPP
#define TOOLS_RANDOMIZER_HPP

#include <random>

#include "FeatureCheck.hpp"
#include "Types.hpp"
#include "Casting.hpp"

namespace Tools::Random {
    using Twister32 = std::mt19937;
    using Twister64 = std::mt19937_64;
    using RdDevice  = std::random_device;

    template <Tools::Types::Integer T>
    using DistInt = std::uniform_int_distribution<T>;

    template <Tools::Types::Float T>
    using DistReal = std::uniform_int_distribution<T>;
}

namespace Tools::Random {
    using namespace Tools::Types;
    using namespace Tools::Cast;

    /**
     * @brief Fully constexpr Xoshiro256** PRNG.
     * @note Period: 2^256 - 1. Passes BigCrush & PractRand.
     *       Suitable for compile-time random generation.
     */
    struct ConstexprTwister {
        u64 s[4]; // 256-bit state

        // Constexpr constructor from seed
        constexpr ConstexprTwister(u64 seed = 0x123456789ABCDEF0ULL) noexcept {
            // SplitMix64 to initialize state from single seed
            for (idx i = 0; i < 4; ++i) {
                seed += 0x9E3779B97F4A7C15ULL;
                u64 z = seed;
                z = (z ^ (z >> 30)) * 0xBF58476D1CE4E5B9ULL;
                z = (z ^ (z >> 27)) * 0x94D049BB133111EBULL;
                this->s[i] = z ^ (z >> 31);
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
        static constexpr u64 RotateLeft(u64 Bit, idx Rotation) noexcept {
            return (Bit << Rotation) | (Bit >> (64 - Rotation));
        }
    };
}

namespace Tools::Random {
    using namespace Tools::Types;
    using namespace Tools::Cast;

    template <UnsignedInt Out = u64>
    inline constexpr Out Get_XORMask    = scast<Out>(
        0xb5026f5aa96619e9ULL
    );

    template <UnsignedInt Out = u64>
    inline constexpr Out Get_Mask_U     = scast<Out>(
        0x5555555555555555ULL
    );

    template <UnsignedInt Out = u64>
    inline constexpr Out Get_Mask_S     = scast<Out>(
        0x71d67fffeda60000ULL
    );

    template <UnsignedInt Out = u64>
    inline constexpr Out Get_Mask_T     = scast<Out>(
        0xfff7eee000000000ULL
    );

    template <UnsignedInt Out = u64>
    inline constexpr Out Get_SeedMul    = scast<Out>(
        0x5851f42d4c957f2dULL
    );

    /**
     * @brief Generic Mersenne Twister engine with named parameters.
     *
     * @tparam Out       Output unsigned integer type (u32 or u64).
     *                   All mask/constant parameters derive their type from this.
     *
     * Tampering recurrance for generation:
     * @tparam WordSize  (w) Bits per state element (32 or 64).
     * @tparam Degree    (n) Internal state array size.
     * @tparam MidWord   (m) Feedback XOR offset.
     * @tparam LowerBit  (r) Separation point for lower bits.
     * @tparam XORMask   (a) Conditional XOR mask. Type follows Out.
     *
     * Tampering parameter for post processing:
     * @tparam ShiftR_U  (u) Tempering right-shift amount.
     * @tparam Mask_U    (d) Tempering AND mask after shift u. Type follows Out.
     * @tparam ShiftL_S  (s) Tempering left-shift amount for u.
     * @tparam Mask_S    (b) Tempering AND mask after shift s. Type follows Out.
     * @tparam ShiftL_T  (t) Tempering left-shift amount for s.
     * @tparam Mask_T    (c) Tempering AND mask after shift t. Type follows Out.
     * @tparam ShiftR_L  (l) Tempering right-shift amount for t.
     *
     * Initialization parameter
     * @tparam SeedMul   (f) State initialization multiplier. Type follows Out.
     *
     * @note Default values correspond to MT19937-64.
     * @warning Changing individual parameters produces a NON-STANDARD variant
     *          that has NOT been statistically verified. Use provided presets
     *          (Twister64, Twister32) unless you are conducting PRNG research.
     * @warning When Out=u32, default mask constants are TRUNCATED from 64-bit
     *          MT19937-64 values and do NOT match standard MT19937-32 constants.
     *          Always use Twister32 preset for verified 32-bit generation, and
     *          use Twister64 preset for verified 64-bit generation,
     */
    template <
        // Output Type, default is u64
        UnsignedInt Out = u64,

        // Base bit, 32 (0x20) or 64 (0x40)
        idx WordSize = 0x40,               // w <idx>

        // Tampering recurrance for generation
        idx Degree   = 0x138,              // n <idx>
        idx MidWord  = 0x9c,               // m <idx>
        idx LowerBit = 0x1f,               // r <idx>
        Out XORMask  = Get_XORMask<Out>,   // a <Out>

        // Tampering parameter for post processing
        idx ShiftR_U = 0x1d,               // u <idx>
        Out Mask_U   = Get_Mask_U<Out>,    // d <Out>
        idx ShiftL_S = 0x11,               // s <idx>
        Out Mask_S   = Get_Mask_S<Out>,    // b <Out>
        idx ShiftL_T = 0x25,               // t <idx>
        Out Mask_T   = Get_Mask_T<Out>,    // c <Out>
        idx ShiftR_L = 0x2b,               // l <idx>

        // Initialization parameter
        Out SeedMul  = Get_SeedMul<Out>    // f <Out>
    >
    using TwisterAny = std::mersenne_twister_engine<
        Out, WordSize,
        Degree, MidWord, LowerBit, XORMask,
        ShiftR_U, Mask_U,
        ShiftL_S, Mask_S,
        ShiftL_T, Mask_T,
        ShiftR_L,
        SeedMul
    >;
}



#endif
