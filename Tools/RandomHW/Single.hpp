#pragma once

#ifndef TOOLS_RANDOM_HW_SINGLE_HPP
#define TOOLS_RANDOM_HW_SINGLE_HPP

#include "Common.hpp"

// Integer
namespace Tools::RandomHW {
    using Tools::Round::Round;

    i32 RandomNumI(Random::Twister32& Gen32, i32 Min = -10, i32 Max = 10) {
        CheckRange(Min, Max);
        return Random::DistInt<i32>(Min, Max)(Gen32);
    }

    i64 RandomNumL(Random::Twister64& Gen64, i64 Min = -100, i64 Max = 100) {
        CheckRange(Min, Max);
        return Random::DistInt<i64>(Min, Max)(Gen64);
    }
}

// Float
namespace Tools::RandomHW {
    f32 RandomNumF(Random::Twister32& Gen32, f32 Min = -2.71, f32 Max = 2.71) {
        CheckRange(Min, Max);
        return Random::DistReal<f32>(Min, Max)(Gen32);
    }

    f64 RandomNumD(Random::Twister64& Gen64, f64 Min = -3.14, f64 Max = 3.14) {
        CheckRange(Min, Max);
        return Random::DistReal<f64>(Min, Max)(Gen64);
    }
}

// Float with rounding
namespace Tools::RandomHW {
    f32 RandomNumF(Random::Twister32& Gen32, f32 Min = -2.71, f32 Max = 2.71, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        return Round(Random::DistReal<f32>(Min, Max)(Gen32), Rounding);
    }

    f64 RandomNumD(Random::Twister64& Gen64, f64 Min = -3.14, f64 Max = 3.14, const i32 Rounding = 2) {
        CheckRange(Min, Max);
        return Round(Random::DistReal<f64>(Min, Max)(Gen64), Rounding);
    }
}

#endif
