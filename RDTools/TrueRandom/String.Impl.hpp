/* ---- Begin: TrueRandom/String.Impl.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_STRING_IMPL
#define TOOLS_TRUE_RANDOM_STRING_IMPL 11b

#include "String.hpp"

/** Single range chars **/
namespace rdt::TrueRandom {
    /// @brief Generate random char from codepoint range [From, To].
    inline char GetRandomChar(u32 From, u32 To) {
        CheckRange(From, To);
        return RandomChar<char>(From, To);
    }

    /// @brief Generate random wchar from codepoint range [From, To].
    inline wchar GetRandomWChar(u32 From, u32 To) {
        CheckRange(From, To);
        return RandomChar<wchar>(From, To);
    }
}

/** String range chars **/
namespace rdt::TrueRandom {
    /// @brief Generate std::string of Count random chars from codepoint range [From, To].
    inline str MakeRandomStr(u32 From, u32 To, const idx Count) {
        CheckRange(From, To);
        return RandomStr<char>(From, To, Count);
    }

    /// @brief Generate std::wstring of Count random wchars from codepoint range [From, To].
    inline wstr MakeRandomWStr(u32 From, u32 To, const idx Count) {
        CheckRange(From, To);
        return RandomStr<wchar>(From, To, Count);
    }
}

/** String charset **/
namespace rdt::TrueRandom {
    /// @brief Generate std::string of Count random chars from charset (str or vec<char>).
    str MakeRandomStr(const OneOf<vec<char>, str> auto& CharSet, const idx Count) {
        return RandomStr<char>(CharSet, Count);
    }

    /// @brief Generate std::wstring of Count random wchars from charset (wstr or vec<wchar>).
    wstr MakeRandomWStr(const OneOf<vec<wchar>, wstr> auto& CharSet, const idx Count) {
        return RandomStr<wchar>(CharSet, Count);
    }
}

#endif

/* ---- End: TrueRandom/String.Impl.hpp ---- */
