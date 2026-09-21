#pragma once

#ifndef RDTOOLS_INIT_CTOR_HPP
#define RDTOOLS_INIT_CTOR_HPP

#include "Base.Class.hpp"

/* ---- CTOR ---- */
namespace rdt {
    /**
     * @brief Default constructor. Creates an empty PStr with nullptr data and 0 size.
     */
    template <PStrTypes Char>
    constexpr PStr<Char>::PStr() noexcept {
        this->StrData = nullptr;
        this->StrSize = 0;
    };

    /**
     * @brief Constructor from a null-terminated C-string pointer.
     * @param p Pointer to the string. May be nullptr.
     * @note Uses std::char_traits to compute length at compile-time (constexpr).
     *       Safely handles nullptr by setting size to 0.
     */
    template <PStrTypes Char>
    constexpr PStr<Char>::PStr(const Char* p) noexcept {
        this->StrData = p;
        // Using char_traits to support ALL char types
        // Handle nullptr so no crash
        this->StrSize = p ? std::char_traits<Char>::length(p) : 0;
    }

    /**
     * @brief Constructor from a pointer and an explicit length.
     * @param p   Pointer to string data. Does NOT need to be null-terminated.
     * @param len Number of characters. O(1) operation.
     * @note Ideal for substrings or when the length is already known.
     */
    template <PStrTypes Char>
    constexpr PStr<Char>::PStr(const Char* p, idx len) noexcept {
        this->StrData = p;
        this->StrSize = len;
    }
}

#endif
