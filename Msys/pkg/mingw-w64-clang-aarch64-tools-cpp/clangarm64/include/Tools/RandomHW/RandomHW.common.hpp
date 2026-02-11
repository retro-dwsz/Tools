#pragma once

#include "../Types.hpp"
#include "../Style.hpp"
#include "../Randomizer.hpp"
#include "../Rounding.hpp"

#include <iostream>
#include <format>
#include <cpuid.h>
#include <immintrin.h>

const str WarningHW = Tools::Styling::ColorFG("Unusual number for indexes detected, proceed with cauntion", 0xF84234);

#ifdef TOOLS_RANDOM_SILENT
    #define RANDOM_WARNING_OUT() std::cout << "!!"
#else
    #define RANDOM_WARNING_OUT() std::cout << WarningHW
#endif


#define WARNING_A             \
    if (Count > INT32_MAX) {  \
        RANDOM_WARNING_OUT(); \
    }

#define WARNING_B                                                           \
    if (Sub > INT32_MAX || CountMin > INT32_MAX || CountMax > INT32_MAX) {  \
        RANDOM_WARNING_OUT();                                               \
    }


namespace RandomHW::Tests {
    const str OK = Tools::Styling::ColorFG("supported", 0xAFCB65);
    const str BAD = Tools::Styling::ColorFG("unsupported", 0xAC2E24);

    bool RDseedSupport() {
        u32 eax, ebx, ecx, edx;
        __cpuid_count(7, 0, eax, ebx, ecx, edx);
        return ebx & 1 << 18;
    }

    pair<bool, bool> TestRandSeed(u16& outA, u16& outB){
        const bool a = _rdrand16_step(&outA);      /* Randomizer */
        const bool b = _rdseed16_step(&outB);      /*   Seeder   */
        return {a, b};
    }

    pair<bool, bool> TestRandSeed(u32& outA, u32& outB){
        const bool a = _rdrand32_step(&outA);      /* Randomizer */
        const bool b = _rdseed32_step(&outB);      /*   Seeder   */
        return {a, b};
    }

    pair<bool, bool> TestRandSeed(u64& outA, u64& outB){
        const bool a = _rdrand64_step(&outA);      /* Randomizer */
        const bool b = _rdseed64_step(&outB);      /*   Seeder   */
        return {a, b};
    }

    void CheckCompatibily(){
        std::cout << std::format("CPU HWRD is {}\n", RDseedSupport() ? OK : BAD);

        u16 out16A{}, out16B{};
        auto Result16 = TestRandSeed(out16A, out16B);
        std::cout << std::format("{}\n",
            std::format("{} {}\n{} {}",
                "16-bit seeder is    ",
                Result16.first,
                "16-bit randomzer is ",
                Result16.second
            )
        );

        u32 out32A{}, out32B{};
        auto Result32 = TestRandSeed(out32A, out32B);
        std::cout << std::format("{}\n",
            std::format("{} {}\n{} {}",
                "32-bit seeder is    ",
                Result32.first,
                "32-bit randomzer is ",
                Result32.second
            )
        );

        u64 out64A{}, out64B{};
        auto Result64 = TestRandSeed(out64A, out64B);
        std::cout << std::format("{}\n\n",
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
    Twister32 MakeHWEngine32() {
        u32 seed{};
        if(!_rdseed32_step(&seed)) {
            seed = RdDevice{}();
        }
        return Twister32(seed);
    }

    Twister32 MakeEngine32(const u32 seed = UINT32_MAX) {
        return Twister32(seed);
    }

    Twister64 MakeHWEngine64() {
        u64 seed{};
        if(!_rdseed64_step(&seed)) {
            seed = RdDevice{}();
        }
        return Twister64(seed);
    }

    Twister64 MakeEngine64(const u64 seed = UINT64_MAX) {
        return Twister64(seed);
    }
}