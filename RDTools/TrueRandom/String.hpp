/* ---- Begin: TrueRandom/String.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_STRING
#define TOOLS_TRUE_RANDOM_STRING 11a

#include "_Common.hpp"

/** Valid String charsets **/
namespace rdt::TrueRandom {
    /**
     * @brief Concept for valid character set containers.
     * Matches std::string variants and vectors of character types.
     */
    template <typename T>
    concept CharSet = OneOf<T,
        str, wstr, str16, str32,
        vec<char>, vec<wchar>, vec<char16>, vec<char32>
    >;
    /// @brief Validates codepoint range does not exceed Unicode max (0x10FFFF).
    inline void CheckRangeChar(const u32& From, const u32& To) {
        if(From > 0x10FFFF || To > 0x10FFFF) {
            throw std::out_of_range(
                std::format("invalid range from={}, to={}, not in range 0x10FFFF ()", From, To, 0x10FFFF)
            );
        }
    }

    /* Unified Char + Generic checker */
    /// @brief Unified range checker: swaps if inverted + validates Unicode bounds.
    inline void CheckRangeStr(u32& From, u32& To) {
        CheckRange(From, To);       // swap if From > To
        CheckRangeChar(From, To);   // throw error if From/To larger tha 0x10FFFF
    }
}

/** Single char **/
namespace rdt::TrueRandom {
    /**
     * @brief Generate a single random character from a codepoint range.
     *
     * Generic template — no default parameter values.
     *
     * @tparam Ret Character type for result. Default type: char.
     * @param From Lower codepoint bound (inclusive).
     * @param To Upper codepoint bound (inclusive).
     * @return Random character in [From, To].
     * @throws std::out_of_range if codepoints exceed 0x10FFFF.
     */
    template <Char Ret = char>
    Ret RandomChar(u32 From, u32 To) {
        CheckRangeStr(From, To);

        Generator Gen;

        const auto CodePoint = DistInt<u32>(From, To)(Gen);
        return scast<Ret>(CodePoint);
    }

    /**
     * @brief Generate a single random character from a character set.
     *
     * @tparam Ret Character type for result. Default type: char.
     * @param CharSet Container of characters to choose from.
     * @return Random character from set. Returns zero-char if set is empty.
     */
    template <Char Ret = char>
    Ret RandomChar(const CharSet auto& CharSet) {
        if (CharSet.empty()) return Ret{};

        Generator Gen;

        const idx Index = DistInt<idx>(0, CharSet.size() - 1)(Gen);
        return scast<Ret>(CharSet[Index]);
    }
}

/** Generic String Generation **/
namespace rdt::TrueRandom {
    /**
     * @brief Generate a string of random characters from a codepoint range.
     *
     * Generic template — no default parameter values.
     *
     * @tparam Ret Character type for resulting string. Default type: char.
     * @param From Lower codepoint bound (inclusive).
     * @param To Upper codepoint bound (inclusive).
     * @param Count Number of characters to generate.
     * @return std::basic_string<Ret> The generated string.
     * @note Returns empty string if Count == 0.
     * @throws std::out_of_range if codepoints exceed 0x10FFFF.
     */
    template <Char Ret = char>
    std::basic_string<Ret> RandomStr(u32 From, u32 To, const idx Count) {
        if (Count <= 0) return {};
        CheckRangeStr(From, To);

        Generator Gen;

        std::basic_string<Ret> Out;
        Out.reserve(Count);

        DistInt<u32> Dist(From, To);
        for (idx i = 0; i < Count; ++i) {
            Out.push_back(scast<Ret>(Dist(Gen)));
        }

        return Out;
    }

    /**
     * @brief Generate a string of random characters from a character set.
     *
     * Generic template — no default parameter values.
     *
     * @tparam Ret Character type for resulting string. Default type: char.
     * @param CharSet Container of characters to choose from.
     * @param Count Number of characters to generate.
     * @return std::basic_string<Ret> The generated string.
     *         Returns empty string if set is empty or count is 0.
     */
    template <Char Ret = char>
    std::basic_string<Ret> RandomStr(const CharSet auto& CharSet, const idx Count) {
        if (CharSet.empty() || Count <= 0) return {};

        Generator Gen;

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

#endif

/* ---- End: TrueRandom/String.hpp ---- */
