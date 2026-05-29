#pragma once

#ifndef TOOLS_VERSION_HPP
#define TOOLS_VERSION_HPP

#define _GNU_SOURCE

#include "FeatureCheck.hpp"
#include "Types.hpp"

constexpr u16 __TOOLS_CPP_VER__   = 10;
constexpr u16 __TOOLS_CPP_MAJOR__ = 1;
constexpr u16 __TOOLS_CPP_MINOR__ = 0;

constexpr i16 __TOOLS_INFO_BUFFER__MaxSize = 64;

void PrintVersion() {
    char __TOOLS_INFO_BUFFER__String[__TOOLS_INFO_BUFFER__MaxSize];
    snprintf(
        __TOOLS_INFO_BUFFER__String,
        __TOOLS_INFO_BUFFER__MaxSize,
        #if defined(__clang__) && defined(__clang_major__)
            "Tools.cpp v%i.%i ; this project was/is compiled using Clang %i",
            __TOOLS_CPP_MAJOR__, __TOOLS_CPP_MINOR__, __clang_major__
        #elif defined(__GNUC__) && defined(__GNUC_MINOR__)
            "Tools.cpp v%i.%i ; this project was/is compiled using GNU GCC %i",
            __TOOLS_CPP_MAJOR__, __TOOLS_CPP_MINOR__, __GNUC__
        #else
            "Tools.cpp v%i.%i ; this project was/is compiled using other compiler",
            __TOOLS_CPP_MAJOR__, __TOOLS_CPP_MINOR__
        #endif
    );
    printf("%s", __TOOLS_INFO_BUFFER__String);
}

#endif
