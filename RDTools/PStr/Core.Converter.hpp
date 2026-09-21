#pragma once

#ifndef RDTOOLS_CORE_CONVERTER_HPP
#define RDTOOLS_CORE_CONVERTER_HPP

#include "Base.Class.hpp"

/* ---- Converters ---- */
namespace rdt {
    /**
     * @brief Implicit conversion to raw C-string pointer.
     * @return Pointer to the underlying data, or nullptr if empty.
     * @warning Caller must ensure PStr outlives the usage of this pointer.
     */
    template <PStrTypes Char>
    constexpr PStr<Char>::operator const Char*() const noexcept {
        return StrData;
    }

    /**
     * @brief Implicit conversion to std::span<const Char>.
     * @return Zero-copy span covering the entire string.
     * @note Enables seamless interop with C++20 ranges and views.
     */
    template <PStrTypes Char>
    constexpr PStr<Char>::operator std::span<const Char>() const noexcept {
        return std::span<const Char>(StrData, StrSize);
    }

    /**
     * @brief EXPLICIT conversion to owning std::basic_string<Char>.
     * @return Deep copy of the string data (heap allocated).
     * @warning NOT constexpr. Heap allocation is forbidden during compile-time evaluation.
     *          Marked explicit to prevent accidental allocations in function arguments.
     */
    template <PStrTypes Char>
    PStr<Char>::operator std::basic_string<Char>() const {
        // Guard against constructing basic_string from nullptr + 0 size
        // which can cause UB on some standard library implementations.
        if (!StrData) {
            return std::basic_string<Char>();
        }
        return std::basic_string<Char>(StrData, StrSize);
    }
}

#endif
