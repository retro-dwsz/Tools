#pragma once

#ifndef TOOLS_RANDOMIZER_HPP
#define TOOLS_RANDOMIZER_HPP

#include "FeatureCheck.hpp"

#include <random>
#include "Types.hpp"

using Twister32 = std::mt19937;
using Twister64 = std::mt19937_64;
using RdDevice  = std::random_device;

template <Integer T>
using DistInt = std::uniform_int_distribution<T>;

template <Float T>
using DistReal = std::uniform_real_distribution<T>;

#endif
