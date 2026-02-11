#pragma once

#include <stdexcept>
#include <algorithm>
#include <regex>

#include "Types.hpp"
#include <iostream>
#include <format>

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

namespace Tools::CommonW {
    struct Color {
        u8 r, g, b;
    };

    // Helper function to extract RGB components from a 32-bit color value
    // return Color{R, G, B}
    Color GetRGB(const u32& hex) {
        return Color{
            static_cast<u8>((hex >> 16) & 0xFF),
            static_cast<u8>((hex >> 8) & 0xFF),
            static_cast<u8>(hex & 0xFF)
        };
    }

    // Input from each channel, return as useable u32
    u32 GetHex(i32& R, i32& G, i32& B) {
        if (R < 0) R = 0; if (R > 255) R = 255;
        if (G < 0) G = 0; if (G > 255) G = 255;
        if (B < 0) B = 0; if (B > 255) B = 255;
        return (R << 16) | (G << 8) | B;
    }
    
    // Proper hex parser (handles "0x" and decimal)
    // Input as string, return as useable u32
    u32 GetHex(cref<str> s) {
        if (s.empty()) return 0;

        try {
            size_t idx = 0;
            return std::stoul(s, &idx, 0);
        } catch (...) {
            std::cout << std::format ("Invalid hex '{}', using fallback 0x9BC8EA", s);
            return 0x9BC8EA;
        }
    }

    // Helper function to blend hex colors based on opacity
    u32 BlendAlpha(cref<u32> color, cref<i32> alpha) {
        Color c = GetRGB(color);
        float t = alpha / 100.0f;

        i32 r = static_cast<i32>(c.r * t);
        i32 g = static_cast<i32>(c.g * t);
        i32 b = static_cast<i32>(c.b * t);

        return GetHex(r, g, b);
    }

    // Inline alpha-blending to write to each channell
    void BlendAlpha(u8& Red, u8& Green, u8& Blue, cref<u32> Alpha) {
        Red = (Alpha >> 16) & 0xFF;     // Red
        Green = (Alpha >> 8) & 0xFF;    // Green
        Blue = Alpha & 0xFF;            // Blue
    }

    // Helper function to blend back and fore colors based on opacity
    u32 BlendFBG(cref<u32> fg, cref<u32> bg, cref<i32> alpha) {
        float t = alpha / 100.0f;

        Color A = GetRGB(fg);
        Color B = GetRGB(bg);

        i32 r = static_cast<i32>(A.r * t + B.r * (1 - t));
        i32 g = static_cast<i32>(A.g * t + B.g * (1 - t));
        i32 b = static_cast<i32>(A.b * t + B.b * (1 - t));

        return GetHex(r, g, b);
    }
}

namespace Tools::StylingW {
    // Basic colorization
    /* inline */
    str Colorize(cref<str> Text, cref<u64>Hex) {
        // Extract RGB channels
        u8 r = (Hex >> 16) & 0xFF;
        u8 g = (Hex >> 8) & 0xFF;
        u8 b = Hex & 0xFF;

        // ANSI escape sequence (truecolor)
        return std::format(
            "\033[38;2;{};{};{}m{}\033[0m",
            r, g, b, Text
        );
    }

    /* ---- To make everything after "0x" caps */
    /* inline */
    str CapsPtr(str& s) {
        if (s.starts_with("0x") || s.starts_with("0X")) {
            s = s.substr(2);
        } else {
            throw(std::invalid_argument("Invalid pointer address"));
        }
        std::ranges::transform(s, s.begin(), ::toupper);
        return "0x" + s;
    }

    /* ---- Basic styles ---- */
    // Bold text
    /* inline */
    str Bold(cref<str> Text) {
        // return "\033[1m" + Text + "\033[0m";
        return std::format("\033[1m{}\033[0m", Text);
    }

    // Italic text
    /* inline */
    str Italic(cref<str> Text) {
        // return "\033[3m" + Text + "\033[0m";
        return std::format("\033[3m{}\033[0m", Text);
    }
    
    // Underline text
    /* inline */
    str Under(cref<str> Text) {
        // return "\033[4m" + Text + "\033[0m";
        return std::format("\033[4m{}\033[0m", Text);
    }
    
    // Strikethrough text
    /* inline */
    str Strike(cref<str> Text) {
        // return "\033[9m" + Text + "\033[0m";
        return std::format("\033[9m{}\033[0m", Text);
    }

    /* ---- Coloring styles ---- */
    // Foreground color with opacity
    /* inline */
    str ColorFG(cref<str> Text, u32 color_tx = 0xFF8A46, i32 alpha = 100) {
        u8 r, g, b;
        if (alpha < 100) {
            u32 blended_color = CommonW::BlendAlpha(color_tx, alpha);
            CommonW::BlendAlpha(r, g, b, blended_color);
        } else {
            CommonW::BlendAlpha(r, g, b, color_tx);
        }
        // return "\033[38;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
        return std::format(
            "\033[38;2;{};{};{}m{}\033[0m",
            std::to_string(r), std::to_string(g), std::to_string(b), Text
        );
    }

    // Background color with opacity
    /* inline */
    str ColorBG(cref<str> Text, u32 color_bg = 0x092655, i32 alpha = 100) {
        u8 r, g, b;
        if (alpha < 100) {
            u32 blended_color = CommonW::BlendAlpha(color_bg, alpha);
            CommonW::BlendAlpha(r, g, b, blended_color);
        } else {
            CommonW::BlendAlpha(r, g, b, color_bg);
        }
        // return "\033[48;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
        return std::format(
            "\033[48;2;{};{};{}m{}\033[0m",
            std::to_string(r), std::to_string(g), std::to_string(b), Text
        );
    }

    // Foreground color with opacity using struct Color
    /* inline */
    str ColorFG(cref<str> text, CommonW::Color& rgb) {
        return std::format(
            "\033[38;2;{};{};{}m{}\033[0m",
            std::to_string(rgb.r), std::to_string(rgb.g), std::to_string(rgb.b), text
        );
    }

    // Background color with opacity using struct Color
    /* inline */
    str ColorBG(cref<str> text, CommonW::Color& rgb) {
        return std::format(
            "\033[48;2;{};{};{}m{}\033[0m",
            std::to_string(rgb.r), std::to_string(rgb.g), std::to_string(rgb.b), text
        );
    }

    /* ---- To reset mess you've made before ---- */
    /* inline */
    str Reset(cref<str> Text){
        sconst std::regex ansi_escape("\x1B\\[[0-9;]*m");
        return std::regex_replace(Text, ansi_escape, "");
    }
}

namespace Tools::StylingW {
    // Basic colorization
    /* DEP */ /* inline */
    wstr Colorize(cref<wstr> Text, const u64 Hex) {
        // Extract RGB channels
        u8 r = (Hex >> 16) & 0xFF;
        u8 g = (Hex >> 8) & 0xFF;
        u8 b = Hex & 0xFF;

        // ANSI escape sequence (truecolor)
        return wstr(L"\033[38;2;")
            + std::to_wstring(r)
            + wstr(L";")
            + std::to_wstring(g)
            + wstr(L";")
            + std::to_wstring(b)
            + wstr(L"m")
            + Text
            + wstr(L"033[0m");
        /*
        return std::format(
            L"\033[38;2;{};{};{}m{}\033[0m",
            std::to_wstring(r),
            std::to_wstring(g),
            std::to_wstring(b),
            wstr(Text)
        );
        */
    }

    /* ---- To make everything after "0x" caps */
    /* DEP */ /* inline */
    wstr CapsPtr(wstr& s) {
        if (s.starts_with(L"0x") || s.starts_with(L"0X")) {
            s = s.substr(2);
        } else {
            throw(std::invalid_argument("Invalid pointer address"));
        }
        std::ranges::transform(s, s.begin(), ::toupper);
        return L"0x" + s;
    }

    /* ---- Basic styles ---- */
    // Bold text
    /* DEP */ /* inline */
    wstr Bold(cref<wstr> Text) {        
        return wstr(L"\033[1m") + Text + wstr(L"\033[0m");

        /*
        return std::format(
            L"\033[1m{}\033[0m",
            wstr(Text)
        );
        */
    }

    // Italic text
    /* DEP */ /* inline */
    wstr Italic(cref<wstr> Text) {
        return wstr(L"\033[3m") + Text + wstr(L"\033[0m");
        /* 
        return std::format(
            L"\033[3m{}\033[0m",
            wstr(Text)
        );
        */
    }

    // Underline text
    /* DEP */ /* inline */
    wstr Under(cref<wstr> Text) {
        return wstr(L"\033[4m") + Text + wstr(L"\033[0m");
        /*
        return std::format(
            L"\033[4m{}\033[0m",
            wstr(Text)
        );
        */
    }

    // Strikethrough text
    /* DEP */ /* inline */
    wstr Strike(cref<wstr> Text) {
        return wstr(L"\033[9m") + Text + wstr(L"\033[0m");
        /*
        return std::format(
            L"\033[9m{}\033[0m",
            wstr(Text)
        );
        */
    }

    /* ---- Coloring styles ---- */
    // Foreground color with opacity
    /* DEP */ /* inline */
    wstr ColorFG(cref<wstr> Text, u32 color_tx = 0xFF8A46, i32 alpha = 100) {
        u8 r, g, b;
        if (alpha < 100) {
            u32 blended_color = CommonW::BlendAlpha(color_tx, alpha);
            CommonW::BlendAlpha(r, g, b, blended_color);
        } else {
            CommonW::BlendAlpha(r, g, b, color_tx);
        }
        return wstr(L"\033[38;2;")
            + std::to_wstring(r)
            + wstr(L";")
            + std::to_wstring(g)
            + wstr(L";")
            + std::to_wstring(b)
            + wstr(L"m")
            + wstr(Text)
            + wstr(L"\033[0m");
        /*
        return std::format(
            L"\033[38;2;{};{};{}m{}\033[0m",
            std::to_wstring(r),
            std::to_wstring(g),
            std::to_wstring(b),
            wstr(Text)
        );
        */
    }

    // Background color with opacity
    /* DEP */ /* inline */
    wstr ColorBG(cref<wstr> Text, u32 color_bg = 0x092655, i32 alpha = 100) {
        u8 r, g, b;
        if (alpha < 100) {
            u32 blended_color = CommonW::BlendAlpha(color_bg, alpha);
            CommonW::BlendAlpha(r, g, b, blended_color);
        } else {
            CommonW::BlendAlpha(r, g, b, color_bg);
        }
        return wstr(L"\033[48;2;")
            + std::to_wstring(r)
            + wstr(L";")
            + std::to_wstring(g)
            + wstr(L";")
            + std::to_wstring(b)
            + wstr(L"m")
            + wstr(Text)
            + wstr(L"\033[0m");
        /*
        return std::format(
            L"\033[48;2;{};{};{}m{}\033[0m",
            std::to_wstring(r),
            std::to_wstring(g),
            std::to_wstring(b),
            wstr(Text)
        );
        */
    }

    // Foreground color with opacity using struct Color
    /* DEP */ /* inline */
    wstr ColorFG(cref<wstr> Text, CommonW::Color& rgb) {
        return wstr(L"\033[48;2;")
            + std::to_wstring(rgb.r)
            + wstr(L";")
            + std::to_wstring(rgb.g)
            + wstr(L";")
            + std::to_wstring(rgb.b)
            + wstr(L"m")
            + wstr(Text)
            + wstr(L"\033[0m");
        /*
        return std::format(
            L"\033[38;2;{};{};{}m{}\033[0m",
            std::to_wstring(rgb.r),
            std::to_wstring(rgb.g),
            std::to_wstring(rgb.b),
            wstr(Text)
        );
        */
    }

    // Background color with opacity using struct Color
    /* DEP */ /* inline */
    wstr ColorBG(cref<wstr> Text, CommonW::Color& rgb) {
        return wstr(L"\033[48;2;")
            + std::to_wstring(rgb.r)
            + wstr(L";")
            + std::to_wstring(rgb.g)
            + wstr(L";")
            + std::to_wstring(rgb.b)
            + wstr(L"m")
            + wstr(Text)
            + wstr(L"\033[0m");
        /*
        return std::format(
            L"\033[48;2;{};{};{}m{}\033[0m",
            std::to_wstring(rgb.r),
            std::to_wstring(rgb.g),
            std::to_wstring(rgb.b),
            wstr(Text)
        );
        */
    }

    /* ---- To reset mess you've made before ---- */
    /* DEP */ /* inline */
    wstr Reset(cref<wstr> Text){
        sconst std::wregex ansi_escape(L"\x1B\\[[0-9;]*m");
        return std::regex_replace(Text, ansi_escape, L"");
    }
}


