#pragma once

#ifndef RDTOOLS_BASE_CLASS_HPP
#define RDTOOLS_BASE_CLASS_HPP

#include "../Types.hpp"

namespace rdt {
    template <typename Char = char>
    concept PStrTypes = OneOf<Char, char, u_char, s_char, wchar, char16, char32>;

    template <PStrTypes Char = char>
    class PStr {
        private:
        const Char* StrData;    // <- Pointer to external string data (non-owning)
        idx StrSize;            // <- Cached string length in character count

        public:
        /* ---- CTOR ---- */
        // Default constructor
        constexpr PStr() noexcept;

        // Constructor from C-string pointer
        // std::char_traits::length is constexpr since C++17
        explicit constexpr PStr(const Char* p) noexcept;

        // Constructor from pointer and explicit length
        constexpr PStr(const Char* p, idx len) noexcept;

        /* ---- End CTOR ---- */

        /* ---- Observers (Debug Data) ---- */

        [[nodiscard]] constexpr idx size() const noexcept;
        [[nodiscard]] constexpr idx sizeBytes() const noexcept;
        [[nodiscard]] constexpr bool empty() const noexcept;
        [[nodiscard]] constexpr const Char* data() const noexcept;  // FIX: Return type must be `const Char*` because StrData is const

        /* ---- End Observers ---- */

        /* ---- Element Access (Getter) ---- */

        // FIX: Must return `const Char&` because this is a const method
        [[nodiscard]] constexpr const Char& operator[](idx i) const noexcept;

        // FIX: Removed noexcept to allow throwing std::out_of_range.
        // Throwing in constexpr is valid in C++20+ as long as it doesn't
        // actually throw during compile-time evaluation.
        [[nodiscard]] constexpr const Char& at(idx i) const noexcept;

        /* ---- End Element Access ---- */

        /* ---- Converters ---- */

        // Implicit conversion to C-string pointer
        [[nodiscard]] explicit constexpr operator const Char*() const noexcept;

        // Implicit conversion to std::span<const Char>
        [[nodiscard]] explicit constexpr operator std::span<const Char>() const noexcept;

        // EXPLICIT conversion to std::basic_string<Char>.
        // WARNING: Cannot be constexpr because heap allocation is not
        // allowed during constant evaluation.
        [[nodiscard]] explicit operator std::basic_string<Char>() const;

        /* ---- End Converters ---- */
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
