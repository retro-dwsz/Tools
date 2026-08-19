/* ---- Begin: Random/RString.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_RSTRING_HPP
#define TOOLS_RANDOM_RSTRING_HPP 14

/**
 * @file String.Base.hpp
 * @brief Provides Python-like random character and string generation functions.
 *
 * Supports generation from codepoint ranges (like Python's chr()) or from
 * predefined character sets. All functions use thread-local preset generators.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * auto c = Random::RandomChar('A', 'Z');          // Random uppercase letter
 * auto s = Random::RandomStr("abcdef", 10);        // 10-char hex-like string
 * auto w = Random::RandomWStr(L"αβγδ", 5);        // 5 Greek letters
 * auto cp = Random::RandomChar<char32_t>(0x4E00, 0x9FFF); // CJK character
 * @endcode
 */

#include "_Common.hpp"

/** Generic Single char **/
namespace rdt::Random {
    /**
     * @brief Generates a random character within a codepoint range [From, To].
     *
     * Inspired by Python's chr(random.randint(from, to)).
     * Uses TwisterFor<Ret> to select optimal generator for the character width.
     *
     * @tparam Ret The character type to return. Default: char.
     * @param From Lower codepoint bound (inclusive).
     * @param To Upper codepoint bound (inclusive).
     * @return Ret A random character in the specified range.
     * @note If From > To, they are automatically swapped.
     */
    template <Char Ret = char>
    Ret RandomChar(u32 From, u32 To) {
        CheckRange(From, To);

        sthread RdDevice Rd;
        sthread TwisterFor<Ret> Gen(Rd());

        const u32 CodePoint = DistInt(From, To)(Gen);
        return scast<Ret>(CodePoint);
    }

    /**
     * @brief Selects a random element from a character set.
     *
     * Similar to Python's random.choice(charset).
     *
     * @tparam Ret The character type to return. Default: char.
     * @param CharSet A string or vector of characters to choose from.
     * @return Ret A randomly selected character. Returns default-constructed
     *         value if CharSet is empty.
     */
    template <Char Ret = char>
    Ret RandomChar(const CharSet auto& CharSet) {
        if (CharSet.empty()) return Ret{};

        sthread RdDevice Rd;
        sthread TwisterFor<Ret> Gen(Rd());

        const idx Index = DistInt<idx>(0, CharSet.size() - 1)(Gen);
        return scast<Ret>(CharSet[Index]);
    }
}

/** Generic String Generation **/
namespace rdt::Random {
    /**
     * @brief Generates a string of random characters from a codepoint range.
     *
     * @tparam Ret The character type for the resulting string. Default: char.
     * @param From Lower codepoint bound (inclusive).
     * @param To Upper codepoint bound (inclusive).
     * @param Count Number of characters to generate.
     * @return std::basic_string<Ret> The generated string.
     * @note Returns empty string if Count <= 0.
     */
    template <Char Ret = char>
    std::basic_string<Ret> RandomStr(u32 From, u32 To, const idx Count) {
        if (Count <= 0) return {};
        CheckRange(From, To);

        sthread RdDevice Rd;
        sthread Twister32 Gen(Rd());

        std::basic_string<Ret> Out;
        Out.reserve(Count);

        DistInt<u32> Dist(From, To);
        for (idx i = 0; i < Count; ++i) {
            Out.push_back(scast<Ret>(Dist(Gen)));
        }

        return Out;
    }

    /**
     * @brief Generates a string by randomly selecting characters from a charset.
     *
     * @tparam Ret The character type for the resulting string. Default: char.
     * @param CharSet Source character set (string or vector of chars).
     * @param Count Number of characters to generate.
     * @return std::basic_string<Ret> The generated string.
     * @note Returns empty string if CharSet is empty or Count <= 0.
     */
    template <Char Ret = char>
    std::basic_string<Ret> RandomStr(const CharSet auto& CharSet, const idx Count) {
        if (CharSet.empty() || Count <= 0) return {};

        sthread RdDevice Rd;
        sthread Twister32 Gen(Rd());

        std::basic_string<Ret> Out;
        Out.reserve(Count);

        DistInt<u32> Dist(0, CharSet.size() - 1);
        for (idx i = 0; i < Count; ++i) {
            Out.push_back(
                scast<Ret>(CharSet[Dist(Gen)])
            );
        }

        return Out;
    }
}

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

/* ---- End: Random/RString.hpp ---- */
