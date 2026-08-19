#pragma once

#ifndef RDTOOLS_BASE_CLASS_HPP
#define RDTOOLS_BASE_CLASS_HPP

#include "../Types.hpp"

namespace rdt {
    template <typename Char = char>
    concept ValidTypes = OneOf<Char, char, u_char, s_char, wchar, char16, char32>;

    template <ValidTypes Char = char>
    class PStr {
        private:
        const Char* StrData;    // <- Pointer to external string data (non-owning)
        idx StrSize;            // <- Cached string length in character count

        public:
        /* ---- CTOR ---- */
        /* @brief Default constructor, creates empty string (nullptr) and 0 size
         */
        PStr() noexcept;

        /* @brief   Constructor from C-string pointer
         * @param   p Pointer to null-terminated string. May be nullptr (results in empty PStr).
         * @note    Length is computed via std::char_traits<Char>::length() to support
         *          all character types (not just char). O(n) operation.
         */
        PStr(const Char* p) noexcept;

        /*
         * @brief       Construct from a pointer and explicit length.
         * @param p     Pointer to string data. Does NOT need to be null-terminated.
         * @param len   Number of characters. No length computation performed. O(1).
         * @note        Use this for substrings, binary data, or when length is already known
         *              to avoid redundant strlen/char_traits::length calls.
         */
        PStr(const Char* p, idx len) noexcept;
        /* ---- End CTOR ---- */

        /* ---- Debug Data ---- */

        /* @brief Returns the number of characters in the string. O(1). */
        [[nodiscard]] idx size() const noexcept;

        /* @brief Returns the number of characters in the string multiplied sizeof current char type. O(1). */
        [[nodiscard]] idx sizeBytes() const noexcept;

        /* @brief Returns true if the string has zero length. O(1). */
        [[nodiscard]] bool empty() const noexcept;

        /*
         * @brief Returns raw pointer to the underlying string data.
         * @return Pointer to first character, or nullptr if empty/default-constructed.
         */
        const Char* data() const noexcept;
        /* ---- End Debug Data ---- */

        /* ---- Getter ---- */
        /*
         * @brief Access character at index without bounds checking.
         * @param i Zero-based character index.
         * @return Const reference to the character.
         * @warning No bounds checking. Caller must ensure i < size().
         */
        const Char& operator[](idx i) const noexcept;

        /*
         * @brief Access character at index with bounds checking.
         * @param i Zero-based character index.
         * @return Const reference to the character.
         */
        const Char& at(idx i) const noexcept;
        /* ---- End Getter ---- */

        /* ---- Converter ---- */
        /*
         * @brief Access character at index without bounds checking.
         * @param i Zero-based character index.
         * @return Const reference to the character.
         * @warning No bounds checking. Caller must ensure i < size().
         */
        operator const Char*() const noexcept;          // Implicit conversion to C-string pointer

        /*
         * @brief Implicit conversion to std::span<const Char>.
         * @return Span covering the entire string. Zero-copy, enables ranges/views interop.
         */
        operator span<const Char>() const noexcept;

        /*
         * @brief EXPLICIT conversion to std::basic_string<Char>.
         * @return Owning copy of the string data (heap allocated).
         * @warning This performs a full deep copy. Marked explicit to prevent
         *          accidental allocations in function arguments or assignments.
         */
        explicit operator std::basic_string<Char>() const;
        /* ---- End Converter ---- */
    };
}

/* ---- CTAD Guides ---- */
namespace rdt {
    PStr(const char*)     -> PStr<char>;
    PStr(const wchar*)    -> PStr<wchar>;
    PStr(const char16*)   -> PStr<char16>;
    PStr(const char32*)   -> PStr<char32>;
}

#endif
