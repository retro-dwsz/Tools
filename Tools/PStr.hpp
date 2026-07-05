#pragma once

#ifndef TOOLS_PSTR_HPP
#define TOOLS_PSTR_HPP

#include "Types.hpp"

#define BEGIN_NAMESPACE(name) namespace name {
#define END_NAMESPACE }

/**
 * @brief Macro helper for PStr template declaration with character type constraints.
 * @note Used internally to reduce boilerplate in out-of-class definitions.
 */
#define TOOLS_PSTR_TEMPLATE \
    template <typename Char>                                                  \
    requires OneOf<Char, char, u_char, s_char, wchar_t, char16_t, char32_t>   \

BEGIN_NAMESPACE(Tools)
/**
 * @class PStr
 * @brief Lightweight, non-owning string view with Class Template Argument Deduction (CTAD).
 *
 * @tparam Char Character type. Defaults to `char`. Must be one of:
 *         Native type: char, unsigned char, signed char, wchar_t, char16_t, or char32_t.
 *         Alias type:  char, u_char, s_char, wchar, char16, or char32.
 *
 * ## Overview
 * PStr ("Pointer STRing") is a zero-overhead wrapper around a C-style string pointer
 * and its length. Unlike `std::basic_string`, it does NOT own or allocate memory.
 * It provides std::string-like ergonomics while maintaining raw pointer efficiency.
 *
 * ## Key Features
 * - Non-owning: Stores only a pointer + size. No heap allocation.
 * - CTAD Support: Automatic type deduction from string literals.
 * - Multi-char-type: Supports char, wchar_t, char16_t, char32_t via constraints.
 * - Null-safe: Constructor gracefully handles nullptr input.
 * - Implicit conversions: To `const Char*` and `std::span<const Char>`.
 * - Explicit ownership transfer: Conversion to `std::basic_string` requires explicit cast
 *   to prevent accidental heap allocations.
 *
 * ## Lifetime Warning
 * PStr does NOT copy the underlying string data. The caller MUST ensure that the
 * pointed-to string outlives the PStr instance. Dangling pointers will cause UB.
 *
 * ## Usage Examples
 * @code{.cpp}
 * // CTAD: type automatically deduced
 * PStr a = "Hello";           // PStr<char>
 * PStr b = L"Wide Hello";     // PStr<wchar_t>
 *
 * // Explicit default type
 * PStr<> c = "Default char";  // PStr<char>
 *
 * // Substring / binary-safe construction
 * PStr d("Hello, World!", 5); // PStr<char>, size=5 → "Hello"
 *
 * // Safe observers
 * fmt::println("Size: {}, Empty: {}", a.size(), a.empty());
 *
 * // Implicit conversion to span (zero-copy)
 * std::span<const char> sp = a;
 *
 * // Explicit conversion to owning string (heap allocation!)
 * std::string owned = static_cast<std::string>(a);
 * @endcode
 *
 * @see std::string_view
 * @see std::span
 *
 */

template <typename Char = char>
requires OneOf<Char, char, u_char, s_char, wchar, char16, char32>
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
    idx size() const noexcept;

    /* @brief Returns the number of characters in the string multiplied sizeof current char type. O(1). */
    idx sizeBytes() const noexcept;

    /* @brief Returns true if the string has zero length. O(1). */
    bool empty() const noexcept;

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

END_NAMESPACE

/* ---- CTOR & DTOR ---- */
namespace Tools {
    TOOLS_PSTR_TEMPLATE
    PStr<Char>::PStr() noexcept {
        this->StrData = nullptr;
        this->StrSize = 0;
    };

    TOOLS_PSTR_TEMPLATE
    PStr<Char>::PStr(const Char* p) noexcept {
        this->StrData = p;
        // Using char_traits to support ALL char types
        // Handle nullptr so no crash
        this->StrSize = p ? std::char_traits<Char>::length(p) : 0;
    }

    TOOLS_PSTR_TEMPLATE
    PStr<Char>::PStr(const Char* p, idx len) noexcept {
        this->StrData = p;
        this->StrSize = len;
    }
}

/* ---- Debug data ---- */
namespace Tools {
    TOOLS_PSTR_TEMPLATE
    idx PStr<Char>::size() const noexcept {
        return this->StrSize;
    }

    TOOLS_PSTR_TEMPLATE
    idx PStr<Char>::sizeBytes() const noexcept {
        return this->StrSize * sizeof(Char{});
    }

    TOOLS_PSTR_TEMPLATE
    bool PStr<Char>::empty() const noexcept {
        return this->StrSize == 0;
    }

    TOOLS_PSTR_TEMPLATE
    const Char* PStr<Char>::data() const noexcept {
        return this->StrData;
    }
}

/* ---- Getter ---- */
namespace Tools {
    TOOLS_PSTR_TEMPLATE
    const Char& PStr<Char>::operator[](idx i) const noexcept {
        return this->StrData[i];
    }
}

/* ---- Converters ---- */
namespace Tools {
    TOOLS_PSTR_TEMPLATE
    PStr<Char>::operator const Char*() const noexcept {
        return this->StrData;
    }

    TOOLS_PSTR_TEMPLATE
    PStr<Char>::operator std::span<const Char>() const noexcept {
        return std::span<const Char>(this->StrData, this->StrSize);
    }

    TOOLS_PSTR_TEMPLATE
    PStr<Char>::operator std::basic_string<Char>() const {
        return std::basic_string<Char>(this->StrData, this->StrSize);
    }
}

/* ---- CTAD Guides ---- */
namespace Tools {
    PStr(const char*)     -> PStr<char>;
    PStr(const wchar*)    -> PStr<wchar>;
    PStr(const char16*)   -> PStr<char16>;
    PStr(const char32*)   -> PStr<char32>;
}

#endif