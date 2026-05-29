#pragma once

#ifndef TOOLS_VERSION_HPP
#define TOOLS_VERSION_HPP

#define _GNU_SOURCE

#include "FeatureCheck.hpp"
#include "Types.hpp"

static constexpr u8 __TOOLS_CPP_VER__   = 10;
static constexpr u8 __TOOLS_CPP_MAJOR__ = 1;
static constexpr u8 __TOOLS_CPP_MINOR__ = 0;

static constexpr i8 __TOOLS_INFO_BUFFER_MAX_SIZE = 64;

char* Tools_GetVersion() {
    static char __TOOLS_INFO_BUFFER__STRING[__TOOLS_INFO_BUFFER_MAX_SIZE];
    snprintf(
        __TOOLS_INFO_BUFFER__STRING,
        __TOOLS_INFO_BUFFER_MAX_SIZE,
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

    return __TOOLS_INFO_BUFFER__STRING;
}

void Tools_PrintVersion(){
    printf("%s", Tools_GetVersion());
}

#endif
