#pragma once

#ifndef TOOLS_PSTR_HPP
#define TOOLS_PSTR_HPP

#include "Types.hpp"

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

#include "PStr/Base.Class.hpp"
#include "PStr/Init.Ctor.hpp"
#include "PStr/Core.Getter.hpp"
#include "Pstr/Core.Converter.hpp"
#include "PStr/Core.Debug.hpp"

#endif