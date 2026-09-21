#pragma once

#ifndef TOOLS_TYPES_POINTER_HPP
#define TOOLS_TYPES_POINTER_HPP

/* Pointer to data */
#include <cstdint>

#include "RDTools/Types.hpp"
template <typename T> using ptr      = T*;

/* Pointer to constant data */
template <typename T> using ptrcd    = const T*;

/* Constant pointer to data */
template <typename T> using cptr     = T const*;

/* Constant pointer to constant data */
template <typename T> using cptrcd   = const T* const;

/* Generic Pointer */
using tptr = const void*;

/* Specific Pointer Address */
using i32p      = intptr_t;
using u32p      = uintptr_t;

#include "../Casting.hpp"

namespace rdt {
    /* Converter from raw pointer adress to u32 */
    template <typename T>
    u32p GetAddressP(T& var) noexcept {
        return rcast<u32p>(var);
    }

    using Cast::scast, Cast::rcast;

    template <typename T>
    u64 GetAddressL(const T& var) noexcept {
        return scast<u64>(rcast<u32p>(&var));
    }

    template <typename T>
    u32 GetAddressI(const T& var) noexcept {
        // Truncation wanrning on 64-bit systems!
        return scast<u32>(rcast<u32p>(&var));
    }

    /* Generic pointer to u32/u64 */
    template<OneOf<u32, u64> T, typename D>
    T GetAddress(const D& var) {
        return scast<T>(rcast<u32p>(&var));
    }
}

#endif
