/* ---- Begin: Random/RString.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_RSTRING_CUSTOM_HPP
#define TOOLS_RANDOM_RSTRING_CUSTOM_HPP 15

/**
 * @file String.Custom.hpp
 * @brief Provides Python-like random character and string generation functions
 *        with custom twister engine
 *
 * Supports generation from codepoint ranges (like Python's chr()) or from
 * predefined character sets. All functions use thread-local preset generators.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * TwisterAny<> Gen;
 * auto c = Random::RandomChar(Gen, 'A', 'Z');          // Random uppercase letter
 * auto s = Random::RandomStr(Gen, "abcdef", 10);        // 10-char hex-like string
 * auto w = Random::RandomWStr(Gen, L"αβγδ", 5);        // 5 Greek letters
 * auto cp = Random::RandomChar<char32_t>(Gen, 0x4E00, 0x9FFF); // CJK character
 * @endcode
 */

#include "_Common.hpp"

/** Generic Single char **/
namespace Tools::Random {
    /**
     * @brief Generates a random character within a codepoint range [From, To].
     *
     * Inspired by Python's chr(random.randint(from, to)).
     * Uses TwisterFor<Ret> to select optimal generator for the character width.
     *
     * @tparam Ret The character type to return. Default: char.
     * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
     * @param From Lower codepoint bound (inclusive).
     * @param To Upper codepoint bound (inclusive).
     * @return Ret A random character in the specified range.
     * @note If From > To, they are automatically swapped.
     */
    template <Char Ret = char>
    Ret RandomChar(TwisterAny<>& Gen, u32 From, u32 To) {
        CheckRange(From, To);

        const u32 CodePoint = DistInt(From, To)(Gen);
        return scast<Ret>(CodePoint);
    }

    /**
     * @brief Selects a random element from a character set.
     *
     * Similar to Python's random.choice(charset).
     *
     * @tparam Ret The character type to return. Default: char.
     * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
     * @param CharSet A string or vector of characters to choose from.
     * @return Ret A randomly selected character. Returns default-constructed
     *         value if CharSet is empty.
     */
    template <Char Ret = char>
    Ret RandomChar(TwisterAny<>& Gen, const CharSet auto& CharSet) {
        if (CharSet.empty()) return Ret{};

        const idx Index = DistInt<idx>(0, CharSet.size() - 1)(Gen);
        return scast<Ret>(CharSet[Index]);
    }
}

/** Generic String Generation **/
namespace Tools::Random {
    /**
     * @brief Generates a string of random characters from a codepoint range.
     *
     * @tparam Ret The character type for the resulting string. Default: char.
     * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
     * @param From Lower codepoint bound (inclusive).
     * @param To Upper codepoint bound (inclusive).
     * @param Count Number of characters to generate.
     * @return std::basic_string<Ret> The generated string.
     * @note Returns empty string if Count <= 0.
     */
    template <Char Ret = char>
    std::basic_string<Ret> RandomStr(TwisterAny<>& Gen, u32 From, u32 To, const idx Count) {
        if (Count <= 0) return {};
        CheckRange(From, To);

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
     * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
     * @param CharSet Source character set (string or vector of chars).
     * @param Count Number of characters to generate.
     * @return std::basic_string<Ret> The generated string.
     * @note Returns empty string if CharSet is empty or Count <= 0.
     */
    template <Char Ret = char>
    std::basic_string<Ret> RandomStr(TwisterAny<>& Gen, const CharSet auto& CharSet, const idx Count) {
        if (CharSet.empty() || Count <= 0) return {};

        std::basic_string<Ret> Out;
        Out.reserve(Count);

        DistInt<idx> Dist(0, CharSet.size() - 1);
        for (idx i = 0; i < Count; ++i) {
            Out.push_back(
                scast<Ret>(CharSet[Dist(Gen)])
            );
        }

        return Out;
    }
}

/** Single range chars with custom Twister **/
namespace Tools::Random {
    // Generate random char from codepoint range
    inline char RandomSChar(TwisterAny<>& Gen, u32 From, u32 To) {
        CheckRange(From, To);
        return RandomChar<char>(Gen, From, To);
    }

    // Generate random wchar from codepoint range
    inline wchar RandomWChar(TwisterAny<>& Gen, u32 From, u32 To) {
        CheckRange(From, To);
        return RandomChar<wchar>(Gen, From, To);
    }
}

/** String range chars with custom Twister **/
namespace Tools::Random {
    // Generate Standard STRing std::string from given range
    inline str RandomSStr(TwisterAny<>& Gen, u32 From, u32 To, const idx Count) {
        CheckRange(From, To);
        return RandomStr<char>(Gen, From, To, Count);
    }

    // Generate Wide STRing std::wstring from given range
    inline wstr RandomWStr(TwisterAny<>& Gen, u32 From, u32 To, const idx Count) {
        CheckRange(From, To);
        return RandomStr<wchar>(Gen, From, To, Count);
    }
}

/** String charset with custom Twister **/
namespace Tools::Random {
    // Generate Standard STRing std::string from charset (str, vec<char>) with custom Twister
    str RandomSStr(TwisterAny<>& Gen, const OneOf<vec<char>, str> auto& CharSet, const idx Count) {
        return RandomStr<char>(Gen, CharSet, Count);
    }

    // Generate Wide STRing std::wstring from charset (wstr, vec<wchar>) with custom Twister
    wstr RandomWStr(TwisterAny<>& Gen, const OneOf<vec<wchar>, wstr> auto& CharSet, const idx Count) {
        return RandomStr<wchar>(Gen, CharSet, Count);
    }
}

#endif

/* ---- End: Random/RString.Custom.hpp ---- */
