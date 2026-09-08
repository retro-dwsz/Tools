#pragma once

#ifndef TOOLS_VERSION_HPP
#define TOOLS_VERSION_HPP

#define _GNU_SOURCE

#include "FeatureCheck.hpp"
#include "Types.hpp"

constexpr u8 __TOOLS_CPP_VER__   = 10;
constexpr u8 __TOOLS_CPP_MAJOR__ = 1;
constexpr u8 __TOOLS_CPP_MINOR__ = 0;

constexpr i8 __TOOLS_INFO_BUFFER_MAX_SIZE = 64;

inline void ToolsGetVersion(char* TOOLS_INFO_BUFFER_CSTR) {
    // char TOOLS_INFO_BUFFER_CSTR[__TOOLS_INFO_BUFFER_MAX_SIZE];
    snprintf(
        TOOLS_INFO_BUFFER_CSTR,
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

    // return TOOLS_INFO_BUFFER_CSTR;
}

inline void ToolsPrintVersion(){
    char TOOLS_INFO_BUFFER_CSTR[__TOOLS_INFO_BUFFER_MAX_SIZE];
    ToolsGetVersion(TOOLS_INFO_BUFFER_CSTR);
    printf("%s", TOOLS_INFO_BUFFER_CSTR);
}

#endif
