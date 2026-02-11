#pragma once

/* ---- String ---- */
#include <sstream>
#include <string>
#include <string_view>

using cstr = const char*;
using cwstr = const wchar_t*;
using cstr16 = const char16_t*;
using cstr32 = const char32_t*;

using str = std::string;
using wstr = std::wstring;
using str16 = std::u16string;
using str32 = std::u32string;

using strv = std::string_view;
using sstream = std::stringstream;
using ostream = std::ostringstream;

/* Standard C/C++ stirngs */
template <typename T>
concept Strings =
    std::same_as<T, str>
    || std::same_as<T, cstr>;

/* Wide C/C++ stirngs */
template <typename T>
concept WStrings =
    std::same_as<T, wstr>
    || std::same_as<T, cwstr>;