#ifndef TOOLS_FEATURE_CHECK_HPP
#define TOOLS_FEATURE_CHECK_HPP

#pragma once

// Cpp version
#if __cplusplus < 202302L
    #warning "This lib is intended for at least C++23 (-std=c++23)."
#elif __cplusplus >= 202600L
    #pragma message "Using C++ 26"
#else
    #pragma message "Using C++ 23"
#endif

// Optimization
#ifdef __OPTIMIZE__
    #pragma message "Using optimization"
    #ifdef __OPTIMIZE_SIZE__
        #pragma message "  Optimizing for size"
    #else
        #pragma message "  Optimizing for speed"
    #endif
#else
    #pragma message "Using no optimization"
#endif

// Compiler check
#if !defined(__clang__) && !defined(__GNUC__)
    #error "This library optmized for Clang or GCC"
#endif

// Architecture detection
#if defined(__x86_64__) || defined(__x86_64) || defined(_M_X64) || defined(_M_AMD64)
    #define TOOLS_ARCH_X64 1
    #pragma message "Using x86-64"

    #include <immintrin.h>  // Available for x86/x64

#elif defined(__i386__) || defined(_M_IX86)
    #define TOOLS_ARCH_X86 1
    #pragma message "Using x86"

    #include <immintrin.h>

#elif defined(__aarch64__) || defined(_M_ARM64)
    #define TOOLS_ARCH_ARM64 1
    #pragma message "Using ARM64"

#elif defined(__arm__) || defined(_M_ARM)
    #define TOOLS_ARCH_ARM32 1
    #pragma message "Using ARM32"

#else
    #warning "Unknown architecture, assuming generic"
    #define TOOLS_ARCH_UNKNOWN 1
#endif

// OS detection - menggunakan macro standar
#if defined(_WIN32) || defined(_WIN64)
    #define TOOLS_OS_WINDOWS 1
    #pragma message "Compiled using Windows"

    #if defined(_WIN64)
        #define TOOLS_OS_WIN64 1
        #pragma message "  x86_64"
    #else
        #define TOOLS_OS_WIN32 1
        #pragma message "  x86"
    #endif

#elif defined(__linux__)
    #define TOOLS_OS_LINUX 1
    #pragma message "Compiled using Linux"

#elif defined(__APPLE__) && defined(__MACH__)
    #define TOOLS_OS_MACOS 1
    #pragma message "Compiled using macOS"

#elif defined(__unix__) || defined(__unix)
    #define TOOLS_OS_UNIX 1
    #pragma message "Compiled using Generic Unix"

#else
    #warning "Unknown or unsupported OS"
    #define TOOLS_OS_UNKNOWN 1
#endif

// other checks

#endif