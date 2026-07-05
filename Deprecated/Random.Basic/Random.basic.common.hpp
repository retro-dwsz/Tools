#pragma once

#ifndef TOOLS_RANDOM_BASIC_COMMON_HPP
#define TOOLS_RANDOM_BASIC_COMMON_HPP

#include "Tools/Types.hpp"
#include "Tools/Casting.hpp"
#include "Tools/Rounding.hpp"
#include "Tools/Randomizer.hpp"

#include <cstdint>
#include <iostream>

// #include <utility>
// #include <cmath>

#define sthread static thread_local

// #define INIT_ENGINE32           \
//     sthread Tools::Random::RdDevice rd;        \
//     sthread Tools::Random::Twister32 gen(rd());

using std::swap;

#include "Tools/Style.hpp"
const str Warning = Tools::Style::ColorFG("Unusual number for indexes detected, proceed with cauntion", 0xF84234);

/* Only used fo .basic stuffs */
namespace {
    inline i32 RandomInt(i32 min, i32 max) {
        if(max < min){ swap(min, max); }

        sthread Tools::Random::RdDevice rd;
        sthread Tools::Random::Twister32 gen(rd());
        Tools::Random::DistInt<i32> dis(min, max);
        return dis(gen);
    }

    // 64-bit int "i64": Extended 32-bit
    inline i64 RandomInt(i64 min, i64 max) {
        if(max < min){ swap(min, max); }

        sthread Tools::Random::RdDevice rd;
        sthread Tools::Random::Twister64 gen(rd());
        Tools::Random::DistInt<i64> dis(min, max);
        return dis(gen);
    }

    // Base function to generate random real number (floating-int style)
    // 32-bit float
    inline f32 RandomReal(f32 min, f32 max) {
        if(max < min){ swap(min, max); }

        sthread Tools::Random::RdDevice rd;
        sthread Tools::Random::Twister32 gen(rd());
        Tools::Random::DistReal<f32> dis(min, max);
        return dis(gen);
    }

    // 64-bit float (double precision float)
    inline f64 RandomReal(f64 min, f64 max) {
        if(max < min){ swap(min, max); }

        sthread Tools::Random::RdDevice rd;
        sthread Tools::Random::Twister64 gen(rd());
        Tools::Random::DistReal<f64> dis(min, max);
        return dis(gen);
    }
}

#endif
