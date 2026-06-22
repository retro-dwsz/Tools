#pragma once

#ifndef TOOLS_RANDOM_HW_COMMON_HPP
#define TOOLS_RANDOM_HW_COMMON_HPP

#include "../Types.hpp"
#include "../Style.hpp"
#include "../Randomizer.hpp"
#include "../Rounding.hpp"

#include <print>
#include <format>
#include <cpuid.h>
#include <immintrin.h>

namespace Tools::RandomHW {
    const str WarningHW = Tools::Styling::ColorFG("Unusual number for indexes detected, proceed with cauntion", 0xF84234);
    const str Warning = Tools::Styling::ColorFG(
        "Unusual number for indexes detected, proceed with cauntion", 0xF84234
    );

    using Tools::Round::Round;
}

// #ifdef TOOLS_RANDOM_SILENT
//     #define RANDOM_WARNING_OUT() std::cout << "!!"
// #else
//     #define RANDOM_WARNING_OUT() std::cout << WarningHW
// #endif


// #define WARNING_A             \
//     if (Count > INT32_MAX) {  \
//         RANDOM_WARNING_OUT(); \
//     }

// #define WARNING_B                                                           \
//     if (Sub > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX) {  \
//         RANDOM_WARNING_OUT();                                               \
//     }


namespace Tools::RandomHW::Tests {
    const str OK    = Tools::Styling::ColorFG("supported", 0xAFCB65);
    const str BAD   = Tools::Styling::ColorFG("unsupported", 0xAC2E24);

    bool RDseedSupport() {
        u32 eax, ebx, ecx, edx;
        __cpuid_count(7, 0, eax, ebx, ecx, edx);
        return ebx & 1 << 18;
    }

    pair<bool, bool> TestRandSeed(u16& OutRand, u16& OutSeed){
        const bool RdRand16 = _rdrand16_step(&OutRand);      /* Randomizer */
        const bool RdSeed16 = _rdseed16_step(&OutSeed);      /*   Seeder   */
        return {RdRand16, RdSeed16};
    }

    pair<bool, bool> TestRandSeed(u32& OutRand, u32& OutSeed){
        const bool RdRand32 = _rdrand32_step(&OutRand);      /* Randomizer */
        const bool RdSeed32 = _rdseed32_step(&OutSeed);      /*   Seeder   */
        return {RdRand32, RdSeed32};
    }

    pair<bool, bool> TestRandSeed(u64& OutRand, u64& OutSeed){
        const bool RdRand64 = _rdrand64_step(&OutRand);      /* Randomizer */
        const bool RdSeed64 = _rdseed64_step(&OutSeed);      /*   Seeder   */
        return {RdRand64, RdSeed64};
    }

    void CheckCompatibily() {
        std::println("{}\n", std::format("CPU HWRD is {}\n", RDseedSupport() ? OK : BAD));

        u16 Rand16Out{}, Seed16Out{};
        auto Result16 = TestRandSeed(Rand16Out, Seed16Out);
        std::println("{}\n\n",
            std::format("{} {}\n{} {}",
                "16-bit seeder is    ",
                Result16.first,
                "16-bit randomzer is ",
                Result16.second
            )
        );

        u32 Rand32Out{}, Seed32Out{};
        auto Result32 = TestRandSeed(Rand32Out, Seed32Out);
        std::println("{}\n\n",
            std::format("{} {}\n{} {}",
                "32-bit seeder is    ",
                Result32.first,
                "32-bit randomzer is ",
                Result32.second
            )
        );

        u64 Rand64Out{}, Seed64Out{};
        auto Result64 = TestRandSeed(Rand64Out, Seed64Out);
        std::println("{}\n\n",
            std::format("{} {}\n{} {}",
                "64-bit seeder is    ",
                Result64.first,
                "64-bit randomzer is ",
                Result64.second
            )
        );
    }
}

namespace Tools::RandomHW {
    // 32-bit
    bool Seeder32(u32& out) {
        for (u32 i = 0; i < 10; ++i) {
            if (_rdseed32_step(&out))
                return true;
        }
        return false; // extremely rare
    }

    // 64-bit
    bool Seeder64(u64& out) {
        for (u32 i = 0; i < 10; ++i) {
            if (_rdseed64_step(&out))
                return true;
        }
        return false; // extremely rare
    }
}

namespace Tools::RandomHW {
    Twister32 MakeHWEngine32(u32 Seed32 = UINT32_MAX) {
        if(!_rdseed32_step(&Seed32)) {
            Seed32 = RdDevice{}();
        }
        return Twister32(Seed32);
    }

    Twister64 MakeHWEngine64(u64 Seed64 = UINT64_MAX) {
        if(!_rdseed64_step(&Seed64)) {
            Seed64 = RdDevice{}();
        }
        return Twister64(Seed64);
    }
}

#endif
