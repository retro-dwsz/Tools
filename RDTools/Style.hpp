#pragma once

#ifndef TOOLS_STYLE_HPP
#define TOOLS_STYLE_HPP

#include "FeatureCheck.hpp"
#include "Casting.hpp"
#include "Types.hpp"
#include "Random.hpp"

#include <print>
#include <ranges>
#include <format>
#include <algorithm>
#include <regex>

using namespace rdt::Cast;
#define sconst static const

/* Struct for color */
namespace rdt::Style {
    using namespace rdt::Random;

    /* Color struct for easier config */
    struct Color {
        u8 R, G, B;

        Color(const u8 R = 0, const u8 G = 0, const u8 B = 0) {
            this->R = R;
            this->G = G;
            this->B = B;
        };

        Color(const u32 Hex) {
            this->R = (Hex >> 16) & 0xFF;
            this->G = (Hex >> 8) & 0xFF;
            this->B = Hex & 0xFF;
        }

        Color(const str& Hex = "0xFFFFFF") {
            if (Hex.empty()) return;
            u32 val = 0;
            try {
                idx idx = 0;
                val = std::stoul(Hex, &idx, 0); // auto-detect base (handles 0x)
            } catch (...) {
                std::println("Invalid color value '{}', using default!", Hex);
                val = 0x9BC8EA;
            }
            this->R = (val >> 16) & 0xFF;
            this->G = (val >> 8) & 0xFF;
            this->B = val & 0xFF;
        };
    };

    // Return new
    inline Color RandomColor(u8 Min, u8 Max) {
        CheckRange(Min, Max);
        const vec Src = RandomNumsVI(3, Min, Max);
        vec<u8> C(Src.size());

        std::ranges::transform(Src, C.begin(), [](const auto& n){
            return scast<u8>(n);
        });

        return Color(C[0], C[1], C[2]);
    };

    // Make in-place
    inline void RandomColor(u8 Min, u8 Max, Color& Coloring) {
        Coloring = RandomColor(Min, Max);
    };
}

/* Return new */
namespace rdt::Style {
    /* Orders */

    // Reverse string
    inline str Reverse(const strview& Text) {
        str Result;
        for(auto& i : Text | std::views::reverse){
            Result.push_back(i);
        }

        return Result;
    }

    // Make all to uppercase
    inline str Upper(const strview& Text) {
        str result(Text);
        std::ranges::transform(result, result.begin(), [](char c) {
            return std::toupper(c);
        });
        return result;
    }

    // Make all to lowercase
    inline str Lower(const strview& Text) {
        str result(Text);
        std::ranges::transform(result, result.begin(), [](char c) {
            return std::tolower(c);
        });
        return result;
    }

    // Sort chars based on unicode code
    inline str Sort(const strview& Text) {

        vec<char> Re(Text.begin(), Text.end());

        std::ranges::sort(Re);
        str Result(Re.begin(), Re.end());

        return Result;
    }

    /* Debug */
    // Put each character on a vector
    inline vec<str> Debug(const strview& Text) {
        vec<str> Result;
        Result.reserve(Text.size());
        for (char c : Text) {
            Result.emplace_back(1, c);
        }
        return Result;
    }

    /* Styles (using ANSI Escape Codes) */
    // \033[0m is cdoe for RESET style at the end of a text
    inline str Bold(const strview& Text) {
        return std::format("\033[1m{}\033[0m", Text);
    }

    inline str Italic(const strview& Text) {
        return std::format("\033[3m{}\033[0m", Text);
    }

    inline str Underline(const strview& Text) {
        return std::format("\033[4m{}\033[0m", Text);
    }

    inline str Strike(const strview& Text) {
        return std::format("\033[9m{}\033[0m", Text);
    }

    /* Coloring (True Color RGB 24-bit) */
    inline str ColorFG(const strview& Text, const Color& FG) {
        // 38;2;R;G;B is ANSI for Foreground True Color
        return std::format("\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, Text);
    }

    inline str ColorFG(const strview& Text, const u32& FGc) {
        Color FG(FGc);
        return std::format("\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, Text);
    }

    inline str ColorBG(const strview& Text, const Color& BG) {
        // 48;2;R;G;B is ANSI for Background True Color
        return std::format("\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, Text);
    }

    inline str ColorBG(const strview& Text, const u32& BGc) {
        Color BG(BGc);
        return std::format("\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, Text);
    }

    inline str Reset(const strview& Text) {
        static const std::regex ansi_regex("\\x1B\\[[0-9;]*m");
        return std::regex_replace(str(Text), ansi_regex, "");
    }
}


/* Modify in-place */
namespace rdt::Style {
    /* Orders */
    inline void Reverse(str* Tx) {
        idx n = Tx->length();
        for (idx i = 0; i < n / 2; i++) {
            std::swap(Tx[i], Tx[n - i - 1]);
        }
    };

    // Make all to uppercase
    inline void Upper(str* Text) {
        std::ranges::transform(*Text, Text->begin(), [](unsigned char c) {
            return std::toupper(c);
        });
    }

    // Make all to lowercase
    inline void Lower(str* Text) {
        std::ranges::transform(*Text, Text->begin(), [](unsigned char c) {
            return std::tolower(c);
        });
    }

    inline void Sort(str* Text) {
        std::ranges::sort(*Text);
    }

    /* Debug */
    inline void Debug(const strview& Text, vec<char>& Destination) {
        Destination.clear();
        Destination.reserve(Text.size());
        for (auto c : Text) {
            Destination.push_back(c);
        }
    }

    /* Styles */
    inline void Bold(str* Text) {
        *Text = std::format("\033[1m{}\033[0m", *Text);
    }

    inline void Italic(str* Text) {
        *Text = std::format("\033[3m{}\033[0m", *Text);
    }

    inline void Underline(str* Text) {
        *Text = std::format("\033[4m{}\033[0m", *Text);
    }

    inline void Strike(str* Text) {
        *Text = std::format("\033[9m{}\033[0m", *Text);
    }

    /* Coloring */
    inline void ColorFG(str* Text, const Color& FG) {
        *Text = std::format("\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, *Text);
    }

    inline void ColorBG(str* Text, const Color& BG) {
        *Text = std::format("\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, *Text);
    }

    inline void Reset(str* Text) {
        if (!Text) return;
        static const std::regex ansi_regex("\\x1B\\[[0-9;]*m");
        *Text = std::regex_replace(*Text, ansi_regex, "");
    }
}

#endif
