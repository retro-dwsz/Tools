#pragma once

#ifndef TOOLS_RANDOMIZER_DEVICES_HPP
#define TOOLS_RANDOMIZER_DEVICES_HPP

#include <random>
#include "../Types.hpp"

namespace rdt::Random {
    using Twister32 = std::mt19937;
    using Twister64 = std::mt19937_64;
    using RdDevice  = std::random_device;

    template <Types::Integer T>
    using DistInt = std::uniform_int_distribution<T>;

    template <Types::Float T>
    using DistReal = std::uniform_real_distribution<T>;
}

#endif
