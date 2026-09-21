#pragma once

#ifndef RDTOOLS_CORE_DEBUG_HPP
#define RDTOOLS_CORE_DEBUG_HPP

#include "Base.Class.hpp"

/* ---- Debug data ---- */
namespace rdt {
    /**
     * @brief Returns the number of characters in the string. O(1).
     */
    template <PStrTypes Char>
    constexpr idx PStr<Char>::size() const noexcept {
        return this->StrSize;
    }

    /**
     * @brief Returns the total size of the string in bytes. O(1).
     * @note Computed as character count multiplied by the size of the Char type.
     */
    template <PStrTypes Char>
    constexpr idx PStr<Char>::sizeBytes() const noexcept {
        return this->StrSize * sizeof(Char{});
    }

    /**
     * @brief Checks if the string has zero length. O(1).
     */
    template <PStrTypes Char>
    constexpr bool PStr<Char>::empty() const noexcept {
        return this->StrSize == 0;
    }

    /**
     * @brief Returns a raw pointer to the underlying string data.
     * @return Pointer to the first character, or nullptr if default-constructed.
     */
    template <PStrTypes Char>
    constexpr const Char* PStr<Char>::data() const noexcept {
        return StrData;
    }
}

#endif
