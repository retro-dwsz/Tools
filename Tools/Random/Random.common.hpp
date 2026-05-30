#pragma once

#ifndef TOOLS_RANDOM_COMMON_HPP
#define TOOLS_RANDOM_COMMON_HPP

#include "../Types.hpp"
#include "../Casting.hpp"
#include "../Rounding.hpp"
#include "../Randomizer.hpp"

#include <iostream>

#define sthread static thread_local
#define cthread const static thread_local

// #define INIT_ENGINE32           \
//     sthread RdDevice rd;        \
//     sthread Twister32 gen(rd());

// using std::swap;

#include "../Style.hpp"
const str Warning = Tools::Styling::ColorFG("Unusual number for indexes detected, proceed with cauntion", 0xF84234);

/* Only used for .basic stuffs */
// namespace {
//     inline i32 RandomInt(i32 Min, i32 Max) {
//         if(Max < Min){ std::swap(Min, Max); }

//         sthread RdDevice rd;
//         sthread Twister32 Gen32(rd());
//         DistInt<i32> Dist32(Min, Max);
//         return Dist32(Gen32);
//     }

//     // 64-bit int "i64": Extended 32-bit
//     inline i64 RandomInt(i64 Min, i64 Max) {
//         if(Max < Min){ std::swap(Min, Max); }

//         sthread RdDevice rd;
//         sthread Twister64 Gen64(rd());
//         DistInt<i64> Dist64(Min, Max);
//         return Dist64(Gen64);
//     }

//     // Base function to generate random real number (floating-int style)
//     // 32-bit float
//     inline f32 RandomReal(f32 Min, f32 Max) {
//         if(Max < Min){ std::swap(Min, Max); }

//         sthread RdDevice rd;
//         sthread Twister32 Gen32(rd());
//         DistReal<f32> Dist32(Min, Max);
//         return Dist32(Gen32);
//     }

//     // 64-bit float (double precision float)
//     inline f64 RandomReal(f64 Min, f64 Max) {
//         if(Max < Min){ std::swap(Min, Max); }

//         sthread RdDevice rd;
//         sthread Twister64 Gen64(rd());
//         DistReal<f64> Dist64(Min, Max);
//         return Dist64(Gen64);
//     }
// }

#endif
