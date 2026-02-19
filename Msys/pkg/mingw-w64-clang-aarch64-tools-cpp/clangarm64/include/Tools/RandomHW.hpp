#pragma once

#include "RandomHW/RandomHW.common.hpp"
#include "RandomHW/RandomHW.single.hpp"
#include "RandomHW/RandomHW.vector.hpp"
#include "RandomHW/RandomHW.bundle.hpp"
#include "RandomHW/RandomHW.sbundle.hpp"

// #include "Types.hpp"
// #include "Style.hpp"
// #include "Randomizer.hpp"
// #include "Rounding.hpp"

// #include <iostream>
// #include <format>
// #include <cpuid.h>
// #include <immintrin.h>

// #define BEGIN_NAMESPACE(name) namespace name {
// #define END_NAMESPACE }

// // template <Numbers T>
// // T fRounding(T Number, int Round) {
// //     return Tools::Round::Round(Number, Round);
// // }

// BEGIN_NAMESPACE(RandomHW::Tests)

// const str OK = Tools::Styling::ColorFG("supported", 0xAFCB65);
// const str BAD = Tools::Styling::ColorFG("unsupported", 0xAC2E24);

// bool RDseedSupport() {
//     u32 eax, ebx, ecx, edx;
//     __cpuid_count(7, 0, eax, ebx, ecx, edx);
//     return ebx & 1 << 18;
// }

// pair<bool, bool> TestRandSeed(u16& outA, u16& outB){
//     const bool a = _rdrand16_step(&outA);      /* Randomizer */
//     const bool b = _rdseed16_step(&outB);      /*   Seeder   */
//     // return {{"rdrand", a}, {"rdseed", b}};
//     return {a, b};
// }

// pair<bool, bool> TestRandSeed(u32& outA, u32& outB){
//     const bool a = _rdrand32_step(&outA);      /* Randomizer */
//     const bool b = _rdseed32_step(&outB);      /*   Seeder   */
//     // return {{"rdrand", a}, {"rdseed", b}};
//     return {a, b};
// }

// pair<bool, bool> TestRandSeed(u64& outA, u64& outB){
//     const bool a = _rdrand64_step(&outA);      /* Randomizer */
//     const bool b = _rdseed64_step(&outB);      /*   Seeder   */
//     // return {{"rdrand", a}, {"rdseed", b}};
//     return {a, b};
// }

// // template <UInt T>
// // vec<str> GetTrueFalse(vec<T>& v) {
// //     vec<str> result{};
// //     for(auto& vr : v) {
// //         const auto rs = vr == 1 ? OK : BAD;
// //         result.push_back(rs);
// //     }
// //     return result;
// // }

// void CheckCompatibily(){
//     std::cout << std::format("CPU HWRD is {}\n", RDseedSupport() ? OK : BAD);

//     u16 out16A{}, out16B{};
//     auto Result16 = TestRandSeed(out16A, out16B);
//     // auto Result16_s = GetTrueFalse(Result16);
//     std::cout << std::format("{}\n",
//         std::format("{} {}\n{} {}",
//             "16-bit seeder is    ",
//             Result16.first,
//             "16-bit randomzer is ",
//             Result16.second
//         )
//     );

//     u32 out32A{}, out32B{};
//     auto Result32 = TestRandSeed(out32A, out32B);
//     // auto Result32_s = GetTrueFalse(Result32);
//     std::cout << std::format("{}\n",
//         std::format("{} {}\n{} {}",
//             "32-bit seeder is    ",
//             Result32.first,
//             "32-bit randomzer is ",
//             Result32.second
//         )
//     );

//     u64 out64A{}, out64B{};
//     auto Result64 = TestRandSeed(out64A, out64B);
//     // auto Result64_s = GetTrueFalse(Result64);
//     std::cout << std::format("{}\n\n",
//         std::format("{} {}\n{} {}",
//             "64-bit seeder is    ",
//             Result64.first,
//             "64-bit randomzer is ",
//             Result64.second
//         )
//     );
// }

// END_NAMESPACE

// BEGIN_NAMESPACE(RandomHW::Seeder)
// // 32-bit
// bool RdSeed_u32(u32& out) {
//     for (u32 i = 0; i < 10; ++i) {
//         if (_rdseed32_step(&out))
//             return true;
//     }
//     return false; // extremely rare
// }

// // 64-bit
// bool RdSeed_u64(u64& out) {
//     for (u32 i = 0; i < 10; ++i) {
//         if (_rdseed64_step(&out))
//             return true;
//     }
//     return false; // extremely rare
// }

// END_NAMESPACE

// BEGIN_NAMESPACE(RandomHW::Engine)

// Twister32 MakeEngine32_HW() {
//     u32 seed{};
//     if(!_rdseed32_step(&seed)) {
//         seed = RdDevice{}();
//     }
//     return Twister32(seed);
// }

// Twister32 MakeEngine32(const u32 seed = UINT32_MAX) {
//     return Twister32(seed);
// }

// Twister64 MakeEngine64_HW() {
//     u64 seed{};
//     if(!_rdseed64_step(&seed)) {
//         seed = RdDevice{}();
//     }
//     return Twister64(seed);
// }

// Twister64 MakeEngine64(const u64 seed = UINT64_MAX) {
//     return Twister64(seed);
// }

// END_NAMESPACE

// /* Integers */
// BEGIN_NAMESPACE(RandomHW::Single)

// i32 RandomNumI(Twister32& gen, i32 min, i32 max) {
//     CheckRange(min, max);
//     DistInt dist(min, max);
//     return dist(gen);
// }
// i64 RandomNumL(Twister64& gen, i64 min, i64 max) {
//     CheckRange(min, max);
//     DistInt dist(min, max);
//     return dist(gen);
// }
// END_NAMESPACE

// /* Vector Integers */
// BEGIN_NAMESPACE(RandomHW::Multi)

// vec<i32> RandomNumsVI(Twister32& gen, const idx Size, i32 min, i32 max) {
//     CheckRange(min, max);
//     DistInt dist(min, max);

//     vec<i32> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(dist(gen));
//     }

//     return result;
// }
// vec<i64> RandomNumsVL(Twister64& gen, const idx Size, i64 min, i64 max) {
//     CheckRange(min, max);
//     DistInt dist(min, max);

//     vec<i64> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(dist(gen));
//     }

//     return result;
// }

// END_NAMESPACE

// /* Floatings */
// BEGIN_NAMESPACE(RandomHW::Single)
// f32 RandomNumF(Twister32& gen, f32 min, f32 max) {
//     CheckRange(min, max);
//     DistReal dist(min, max);
//     return dist(gen);
// }

// f32 RandomNumF(Twister32& gen, f32 min, f32 max, const i32& Rounding) {
//     CheckRange(min, max);
//     DistReal dist(min, max);
//     return Tools::Round::Round<f32>(dist(gen), Rounding);
// }

// f64 RandomNumD(Twister64& gen, f64 min, f64 max) {
//     CheckRange(min, max);
//     DistReal dist(min, max);
//     return dist(gen);
// }

// f64 RandomNumD(Twister64& gen, f64 min, f64 max, const i32& Rounding) {
//     CheckRange(min, max);
//     DistReal dist(min, max);
//     return Tools::Round::Round<f64>(dist(gen), Rounding);
// }
// END_NAMESPACE

// /* Vector Floatings */
// BEGIN_NAMESPACE(RandomHW::Multi)

// vec<f32> RandomNumsVF(Twister32& gen, const idx Size, f32 min, f32 max) {
//     CheckRange(min, max);
//     DistReal dist(min, max);

//     vec<f32> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(dist(gen));
//     }

//     return result;
// }

// vec<f32> RandomNumsVF(Twister32& gen, const idx Size, f32 min, f32 max, const i32 Rounding) {
//     CheckRange(min, max);
//     DistReal dist(min, max);

//     vec<f32> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(Tools::Round::Round<f32>(dist(gen), Rounding));
//     }

//     return result;
// }

// vec<f64> RandomNumsVL(Twister64& gen, const idx Size, f64 min, f64 max) {
//     CheckRange(min, max);
//     DistReal dist(min, max);

//     vec<f64> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(dist(gen));
//     }

//     return result;
// }

// vec<f64> RandomNumsVL(Twister64& gen, const idx Size, f64 min, f64 max, const i32 Rounding) {
//     CheckRange(min, max);
//     DistReal dist(min, max);

//     vec<f64> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(Tools::Round::Round<f64>(dist(gen), Rounding));
//     }

//     return result;
// }

// END_NAMESPACE

// BEGIN_NAMESPACE(RandomHW::Bundle)

// vec<f32> RandomNumsVF(Twister32& gen, const idx Size, f32 min, f32 max) {
//     CheckRange(min, max);
//     DistReal dist(min, max);

//     vec<f32> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(dist(gen));
//     }

//     return result;
// }

// vec<f32> RandomNumsVF(Twister32& gen, const idx Size, f32 min, f32 max, const i32 Rounding) {
//     CheckRange(min, max);
//     DistReal dist(min, max);

//     vec<f32> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(Tools::Round::Round<f32>(dist(gen), Rounding));
//     }

//     return result;
// }
// vec<f64> RandomNumsVL(Twister64& gen, const idx Size, f64 min, f64 max) {
//     CheckRange(min, max);
//     DistReal dist(min, max);

//     vec<f64> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(dist(gen));
//     }

//     return result;
// }

// vec<f64> RandomNumsVL(Twister64& gen, const idx Size, f64 min, f64 max, const i32 Rounding) {
//     CheckRange(min, max);
//     DistReal dist(min, max);

//     vec<f64> result;
//     for(idx i = 0; i < Size; i++) {
//         result.push_back(Tools::Round::Round<f64>(dist(gen), Rounding));
//     }

//     return result;
// }

// END_NAMESPACE
