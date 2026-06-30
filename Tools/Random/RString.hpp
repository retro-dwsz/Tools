#pragma once

#ifndef TOOLS_RANDOM_RSTRING_HPP
#define TOOLS_RANDOM_RSTRING_HPP

#include "_Common.hpp"

namespace Tools::Random {
    using namespace Tools::Cast;

    // template <typename T>
    // concept StringLike = OneOf<std::decay_t<T>, str, wstr>;

    template <typename ReturnType>
    requires OneOf<ReturnType, char, wchar, str, wstr>
    ReturnType RandomCharPicker(const OneOf<str, wstr, vec<str>, vec<wstr>> auto& Text) {
        sthread RdDevice rd;
        sthread Twister64 Gen64(rd());

        if (Text.size() == 0) {
            return ReturnType{};
        }

        idx MaxIndex = Text.size() - 1;
        idx RdIndex  = scast<idx>(DistInt<i64>(0, MaxIndex)(Gen64));

        const auto& element = Text[RdIndex];

        // Convert to requested type
        if constexpr (std::is_same_v<std::decay_t<decltype(element)>, ReturnType>) {
            return element;
        } else if constexpr (std::is_same_v<ReturnType, char> || std::is_same_v<ReturnType, wchar>) {
            return element.empty() ? ReturnType{} : element[0];
        } else {
            return ReturnType(element.begin(), element.end());
        }
    };

    template <typename CharSetType>
    requires OneOf<std::decay_t<CharSetType>, str, vec<str>>
    str RandomStrGenerator(const CharSetType& CharSet, idx Count) {
        if (CharSet.empty() || Count == 0) return {};

        sthread RdDevice RdDev;
        sthread Twister64 Gen64(RdDev());

        str Result{};
        Result.reserve(Count);

        DistInt<i64> NResult(0, CharSet.size() - 1);

        for (idx i = 0; i < Count; i++) {
            idx Index = scast<idx>(NResult(Gen64));

            const auto& Element = CharSet[Index];

            if constexpr (std::is_same_v<std::decay_t<decltype(Element)>, char>) {
                Result.push_back(Element);
            } else {
                Result.append(Element);
            }
        }
        return Result;
    }

    // Overload for std::wstring
    template <typename CharSetType>
    requires OneOf<std::decay_t<CharSetType>, wstr, vec<wstr>>
    wstr RandomStrGeneratorW(const CharSetType& CharSet, idx Count) {
        if (CharSet.empty() || Count == 0) return {};

        sthread RdDevice RdDev;
        sthread Twister64 Gen64(RdDev());

        wstr Result{};
        Result.reserve(Count);

        DistInt<i64> NResult(0, CharSet.size() - 1);

        for (idx i = 0; i < Count; i++) {
            idx Index = scast<idx>(NResult(Gen64));
            const auto& element = CharSet[Index];

            if constexpr (std::is_same_v<std::decay_t<decltype(element)>, wchar>) {
                Result.push_back(element);
            } else {
                Result.append(element);
            }
        }
        return Result;
    }
}

#endif