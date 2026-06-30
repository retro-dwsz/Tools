#pragma once

#ifndef TOOLS_TYPES_STRING_HPP
#define TOOLS_TYPES_STRING_HPP

#include "Common.hpp"

/* ---- String ---- */
#include <sstream>
#include <string>
#include <string_view>

using cstr      = const char*;
using cwstr     = const wchar_t*;
using cstr16    = const char16_t*;
using cstr32    = const char32_t*;

// using char   = char;
using uchar     = unsigned char;
using schar     = signed char;
using wchar     = wchar_t;
using char16    = char16_t;
using char32    = char32_t;

// accept char, wchar_t, char16_t, and char32_t only
template <typename T>
requires OneOf<T, char, uchar, schar, wchar, char16, char32>
using pstr      = const T*;

using str       = std::string;
using strview   = std::string_view;
using sstream   = std::stringstream;
using ostream   = std::ostringstream;

using wstr      = std::wstring;
using wstrview  = std::wstring_view;
using wsstream  = std::wstringstream;
using wostream  = std::wostringstream;

using str16     = std::u16string;
using str16view = std::u16string_view;
// using sstream16 = std::basic_stringstream<char16_t>;
// using ostream16 = std::basic_ostringstream<char16_t>;

using str32     = std::u32string;
using str32view = std::u32string_view;
// using sstream32 = std::basic_stringstream<char32_t>;
// using ostream32 = std::basic_ostringstream<char32_t>;

// /* Standard C/C++ stirngs */
// template <typename T>
// concept Strings =
//     std::same_as<T, str>
//     || std::same_as<T, cstr>;

// /* Wide C/C++ stirngs */
// template <typename T>
// concept WStrings =
//     std::same_as<T, wstr>
//     || std::same_as<T, cwstr>;

#endif