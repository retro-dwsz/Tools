#pragma once

#ifndef TOOLS_EXPERIMENTAL_STYLE_HPP
#define TOOLS_EXPERIMENTAL_STYLE_HPP

#include "../Types.hpp"
#include "../Casting.hpp"
#include "../Random.hpp"

#include <cwctype>
#include <ranges>
#include <algorithm>

namespace ToolsExperimental::StyleStr {

/* Struct for color */
namespace Tools::Style {
    using namespace ::Tools::Random;

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

        Color(const str Hex = "0xFFFFFF") {
            if (Hex.empty()) return;
            u32 val = 0;
            try {
                size_t idx = 0;
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
    Color RandomColor(u8 Min, u8 Max) {
        CheckRange(Min, Max);
        auto C = RandomNumsVI(3, Min, Max)
            | std::views::transform(
            [](const auto& n){
                return scast<u8>(n);
            })
            | std::ranges::to<vec>();

        return Color(C[0], C[1], C[2]);
    };

    // Make in-place (Kita pakai Reference '&')
    void RandomColor(u8 Min, u8 Max, Color& Coloring){
        Coloring = RandomColor(Min, Max);
    };
}

/* Return new */
namespace Tools::Style {
    /* Orders */

    // Reverse string
    str Reverse(const strview& Text) {
        str Result;
        for(auto& i : Text | std::views::reverse){
            Result.push_back(i);
        }

        return Result;
    }

    // Make all to uppercase
    str Upper(const strview& Text) {
        str result(Text);
        // C++23 Ranges: Transformasi setiap karakter
        std::ranges::transform(result, result.begin(), [](unsigned char c) {
            return std::toupper(c);
        });
        return result;
    }

    // Make all to lowercase
    str Lower(const strview& Text) {
        str result(Text);
        std::ranges::transform(result, result.begin(), [](unsigned char c) {
            return std::tolower(c);
        });
        return result;
    }

    // Sort chars based on unicode code
    str Sort(const strview& Text) {

        vec<char> Re(Text.begin(), Text.end());

        std::ranges::sort(Re);
        str Result(Re.begin(), Re.end());

        return Result;
    }

    /* Debug */
    // Put each character on a vector
    vec<str> Debug(const strview& Text) {
        vec<str> Result;
        Result.reserve(Text.size());
        for (char c : Text) {
            Result.emplace_back(1, c);
        }
        return Result;
    }

    /* Styles (using ANSI Escape Codes) */
    // \033[0m is cdoe for RESET style at the end of a text

    str Bold(const strview& Text) {
        return std::format("\033[1m{}\033[0m", Text);
    }

    str Italic(const strview& Text) {
        return std::format("\033[3m{}\033[0m", Text);
    }

    str Underline(const strview& Text) {
        return std::format("\033[4m{}\033[0m", Text);
    }

    str Strike(const strview& Text) {
        return std::format("\033[9m{}\033[0m", Text);
    }

    /* Coloring (True Color RGB 24-bit) */
    str ColorFG(const strview& Text, const Color& FG) {
        // 38;2;R;G;B is ANSI for Foreground True Color
        return std::format("\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, Text);
    }

    str ColorBG(const strview& Text, const Color& BG) {
        // 48;2;R;G;B is ANSI for Background True Color
        return std::format("\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, Text);
    }
}


/* Modify in-place */
namespace Tools::Style {
    /* Orders */
    void Reverse(str* Tx){
        idx n = Tx->length();
        for (idx i = 0; i < n / 2; i++) {
            std::swap(Tx[i], Tx[n - i - 1]);
        }
    };

    // Make all to uppercase
    void Upper(str* Text) {
        std::ranges::transform(*Text, Text->begin(), [](unsigned char c) {
            return std::toupper(c);
        });
    }

    // Make all to lowercase
    void Lower(str* Text) {
        std::ranges::transform(*Text, Text->begin(), [](unsigned char c) {
            return std::tolower(c);
        });
    }

    void Sort(str* Text) {
        std::ranges::sort(*Text);
    }

    /* Debug */
    void Debug(const strview& Text, vec<char>& Destination) {
        Destination.clear();
        Destination.reserve(Text.size());
        for (auto c : Text) {
            Destination.push_back(c);
        }
    }

    /* Styles */
    void Bold(str* Text) {
        *Text = std::format("\033[1m{}\033[0m", *Text);
    }

    void Italic(str* Text) {
        *Text = std::format("\033[3m{}\033[0m", *Text);
    }

    void Underline(str* Text) {
        *Text = std::format("\033[4m{}\033[0m", *Text);
    }

    void Strike(str* Text) {
        *Text = std::format("\033[9m{}\033[0m", *Text);
    }

    /* Coloring */
    void ColorFG(str* Text, const Color& FG) {
        *Text = std::format("\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, *Text);
    }

    void ColorBG(str* Text, const Color& BG) {
        *Text = std::format("\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, *Text);
    }
}

}

namespace ToolsExperimental::StyleWStr {

/* Struct for color */
namespace Tools::StyleW {
    using namespace ::Tools::Random;
    struct Color {
        u8 R, G, B;
        Color(const u8 R = 0, const u8 G = 0, const u8 B = 0){
            this->R = R;
            this->G = G;
            this->B = B;
        };
    };

    Color RandomColor(u8 Min, u8 Max) {
        CheckRange(Min, Max);
        auto C = RandomNumsVI(3, Min, Max)
            | std::views::transform(
            [](const auto& n){
                return scast<u8>(n);
            })
            | std::ranges::to<vec>();

        return Color(C[0], C[1], C[2]);
    };

    void RandomColor(u8 Min, u8 Max, Color& Coloring){
        Coloring = RandomColor(Min, Max);
    };
}

/* Make new retrun (const wstrview& Text) */
namespace Tools::StyleW {
    using namespace ::Tools::Cast;
    [[nodiscard]] wstr Reverse(wstrview Text) {
        wstr result(Text);
        std::ranges::reverse(result);
        return result;
    }

    [[nodiscard]] wstr Upper(wstrview Text) {
        wstr result(Text);
        std::ranges::transform(result, result.begin(), [](wchar c) {
            // Cast to wchar because towupper return wint_t
            return scast<wchar>(std::towupper(c));
        });
        return result;
    }

    [[nodiscard]] wstr Lower(wstrview Text) {
        wstr result(Text);
        std::ranges::transform(result, result.begin(), [](wchar c) {
            return scast<wchar>(std::towlower(c));
        });
        return result;
    }

    [[nodiscard]] wstr Sort(wstrview Text) {
        wstr result(Text);
        std::ranges::sort(result);
        return result;
    }

    [[nodiscard]] vec<wchar> Debug(wstrview Text) {
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
    [[nodiscard]] wstr Bold(wstrview Text) {
        return std::format(L"\033[1m{}\033[0m", Text);
    }

    [[nodiscard]] wstr Italic(wstrview Text) {
        return std::format(L"\033[3m{}\033[0m", Text);
    }

    [[nodiscard]] wstr Underline(wstrview Text) {
        return std::format(L"\033[4m{}\033[0m", Text);
    }

    [[nodiscard]] wstr Strike(wstrview Text) {
        return std::format(L"\033[9m{}\033[0m", Text);
    }

    /* Coloring (Wide True Color RGB) */
    [[nodiscard]] wstr ColorFG(wstrview Text, const Color& FG) {
        return std::format(L"\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, Text);
    }

    [[nodiscard]] wstr ColorBG(wstrview Text, const Color& BG) {
        return std::format(L"\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, Text);
    }
}

/* Modifly in place, always use pointer (*wstr Text) */
namespace Tools::StyleW {
    void Reverse(wstr* Text) {
        if(!Text){
            std::ranges::reverse(*Text);
        }
    };

    void Upper(wstr* Text) {
       std::ranges::transform(*Text, Text->begin(), [](wchar c) {
            return scast<wchar>(std::towupper(c));
        });
    };

    void Lower(wstr* Text) {
       std::ranges::transform(*Text, Text->begin(), [](wchar c) {
            return scast<wchar>(std::towlower(c));
        });
    };

    void Sort(wstr* Text) {
        if (!Text) return;
        std::ranges::sort(*Text);
    };

    void Debug(const wstrview& Text, vec<wchar>& Destination) {
        Destination.clear();
        Destination.reserve(Text.size());
        for (wchar_t c : Text) {
            Destination.push_back(c);
        }
    };

    void Bold(wstr* Text) {
        if (!Text) return;
        *Text = std::format(L"\033[1m{}\033[0m", *Text);
    };

    void Italic(wstr* Text) {
        if (!Text) return;
        *Text = std::format(L"\033[3m{}\033[0m", *Text);
    }

    void Underline(wstr* Text) {
        if (!Text) return;
        *Text = std::format(L"\033[4m{}\033[0m", *Text);
    }

    void Strike(wstr* Text) {
        if (!Text) return;
        *Text = std::format(L"\033[9m{}\033[0m", *Text);
    }

    void ColorFG(wstr* Text, const Color& FG) {
        if (!Text) return;
        *Text = std::format(L"\033[38;2;{};{};{}m{}\033[0m", FG.R, FG.G, FG.B, *Text);
    }

    void ColorBG(wstr* Text, const Color& BG) {
        if (!Text) return;
        *Text = std::format(L"\033[48;2;{};{};{}m{}\033[0m", BG.R, BG.G, BG.B, *Text);
    }

}

}

#endif