#pragma once

#ifndef TOOLS_STYLE_W_HPP
#define TOOLS_STYLE_W_HPP

#include "FeatureCheck.hpp"
#include "Types.hpp"
#include "Random.hpp"

#include <format>
#include <regex>

#define sconst static const

/*
Compile this file: clang++ -c Style.cpp -o Style.o
                   clang++ -shared Style.cpp -o Style.dll
Make archive:      ar rcs Style.a Style.o
Compile and Link:  clang++ -o test.cpp -o test.exe -lStyle
                   clang++ Style.dll test.cpp -o test.exe
*/

// #define FMT_HEADER_ONLY
// #include <fmt/format.h>
// #include <fmt/color.h>
// #include <fmt/xchar.h>

#define DEP [[__warning__("Maybe unstable because of std::wstring behaviour")]]

/* Make new retrun (const wstrview& Text) */
namespace rdt::Style {
    using namespace ::rdt::Cast;
    wstr ReverseW(const wstrview& Text) {
        wstr result(Text);
        std::ranges::reverse(result);
        return result;
    }

    wstr UpperW(const wstrview& Text) {
        wstr result(Text);
        std::ranges::transform(result, result.begin(), [](wchar c) {
            // Cast to wchar because towupper return wint_t
            return scast<wchar>(std::towupper(c));
        });
        return result;
    }

    wstr LowerW(const wstrview& Text) {
        wstr result(Text);
        std::ranges::transform(result, result.begin(), [](wchar c) {
            return scast<wchar>(std::towlower(c));
        });
        return result;
    }

    wstr SortW(const wstrview& Text) {
        wstr result(Text);
        std::ranges::sort(result);
        return result;
    }

    vec<wchar> DebugW(const wstrview& Text) {
        vec<wchar> result;
        result.reserve(Text.size());
        for (wchar c : Text) {
            result.push_back(c);
        }
        return result;
    }

    /* Styles (Wide ANSI Escape Codes)
    * Use 'L' prefix for literal wide string
    */
    wstr BoldW(const wstrview& Text) {
        return std::format(L"\033[1m{}\033[0m", Text);
    }

    wstr ItalicW(const wstrview& Text) {
        return std::format(L"\033[3m{}\033[0m", Text);
    }

    wstr UnderlineW(const wstrview& Text) {
        return std::format(L"\033[4m{}\033[0m", Text);
    }

    wstr StrikeW(const wstrview& Text) {
        return std::format(L"\033[9m{}\033[0m", Text);
    }

    /* Coloring (Wide True Color RGB) */
    wstr ColorFGW(const wstrview& Text, const Color& FG) {
        return std::format(L"\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, Text);
    }

    wstr ColorBGW(const wstrview& Text, const Color& BG) {
        return std::format(L"\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, Text);
    }

    wstr ResetW(const wstrview& Text) {
        // Perhatikan prefix 'L' untuk wide regex (std::wregex) dan wide string literal
        static const std::wregex ansi_regex(L"\\x1B\\[[0-9;]*m");
        return std::regex_replace(wstr(Text), ansi_regex, L"");
    }
}

/* Modifly in place, always use pointer (*wstr Text) */
namespace rdt::Style {
    void ReverseW(wstr* Text) {
        if(!Text) return;
        std::ranges::reverse(*Text);
    };

    void UpperWW(wstr* Text) {
       std::ranges::transform(*Text, Text->begin(), [](wchar c) {
            return scast<wchar>(std::towupper(c));
        });
    };

    void LowerWW(wstr* Text) {
       std::ranges::transform(*Text, Text->begin(), [](wchar c) {
            return scast<wchar>(std::towlower(c));
        });
    };

    void SortW(wstr* Text) {
        if (!Text) return;
        std::ranges::sort(*Text);
    };

    void DebugW(const wstrview& Text, vec<wchar>& Destination) {
        Destination.clear();
        Destination.reserve(Text.size());
        for (wchar_t c : Text) {
            Destination.push_back(c);
        }
    };

    void BoldW(wstr* Text) {
        if (!Text) return;
        *Text = std::format(L"\033[1m{}\033[0m", *Text);
    };

    void ItalicW(wstr* Text) {
        if (!Text) return;
        *Text = std::format(L"\033[3m{}\033[0m", *Text);
    }

    void UnderlineW(wstr* Text) {
        if (!Text) return;
        *Text = std::format(L"\033[4m{}\033[0m", *Text);
    }

    void StrikeW(wstr* Text) {
        if (!Text) return;
        *Text = std::format(L"\033[9m{}\033[0m", *Text);
    }

    void ColorFGW(wstr* Text, const Color& FG) {
        if (!Text) return;
        *Text = std::format(L"\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, *Text);
    }

    void ColorBGW(wstr* Text, const Color& BG) {
        if (!Text) return;
        *Text = std::format(L"\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, *Text);
    }

    void ResetW(wstr* Text) {
        if (!Text) return; // Null-check
        static const std::wregex ansi_regex(L"\\x1B\\[[0-9;]*m");
        *Text = std::regex_replace(*Text, ansi_regex, L"");
    }
}

#endif
