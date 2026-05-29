#pragma once

#ifndef TOOLS_EDGES_HPP
#define TOOLS_EDGES_HPP

#include "FeatureCheck.hpp"

#include <limits>

// Macro shortcut
#define GET_MAX(T) std::numeric_limits<T>::max()
#define GET_MIN(T) std::numeric_limits<T>::min()

namespace Tools::Edge {
    template <typename T>
    T GetMax(){
        return std::numeric_limits<T>::max();
    }

    template <typename T>
    T GetMin(){
        return std::numeric_limits<T>::min();
    }
}

#endif