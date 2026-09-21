#pragma once

#ifndef RDTOOLS_CORE_GETTER_HPP
#define RDTOOLS_CORE_GETTER_HPP

#include "Base.Class.hpp"

/* ---- Getter ---- */
namespace rdt {
    /**
     * @brief Access character at index without bounds checking. O(1).
     * @param i Zero-based character index.
     * @warning No bounds checking. Caller must ensure i < size().
     */
    template <PStrTypes Char>
    constexpr const Char& PStr<Char>::operator[](idx i) const noexcept {
        return StrData[i];
    }

    /**
     * @brief Access character at index with bounds checking. O(1).
     * @param i Zero-based character index.
     * @throws std::out_of_range if i >= size().
     * @note Valid in constexpr context as long as it doesn't actually
     *       throw during compile-time evaluation.
     */
    template <PStrTypes Char>
    constexpr const Char& PStr<Char>::at(idx i) const {
        // FIX: Logic was inverted. Must throw if out of bounds.
        if (i >= StrSize) {
            // FIX: Cannot use std::format here because it is NOT constexpr.
            // Using a static string literal to preserve constexpr validity.
            throw std::out_of_range("PStr::at: index out of range");
        }
        return StrData[i];
    }
}

#endif
