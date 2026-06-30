#pragma once

#ifndef TOOLS_RANDOMIZER_HPP
#define TOOLS_RANDOMIZER_HPP

#include "FeatureCheck.hpp"

#include <random>
#include "Types.hpp"

namespace Tools::Random {
    using Twister32 = std::mt19937;
    using Twister64 = std::mt19937_64;
    using RdDevice  = std::random_device;

    template <Tools::Types::Integer T>
    using DistInt = std::uniform_int_distribution<T>;

    template <Tools::Types::Float T>
    using DistReal = std::uniform_real_distribution<T>;
}

// namespace Tools::Random {
//     static inline thread_local RdDevice    RdDev;
//     static inline thread_local Twister32   Gen32(RdDev());
//     static inline thread_local Twister64   Gen64(RdDev());
// };

#endif
