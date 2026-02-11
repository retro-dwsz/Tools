#pragma once

#include "Types.hpp"
#include <format>
#include <algorithm>
#include <regex>

#define sconst static const

namespace Tools::Styling {
    // using str = std::string;        // Main string
    // using wstr = std::wstring;      // Wide string (Do we even need this?)

    struct Color {
        u8 r, g, b;
    };

    str Colorize(cref<str> Text, const u64 Hex) {
        // Extract RGB channels
        u8 r = (Hex >> 16) & 0xFF;
        u8 g = (Hex >> 8) & 0xFF;
        u8 b = Hex & 0xFF;

        // ANSI escape sequence (truecolor)
        return std::format("\033[38;2;{};{};{}m{}\033[0m", r, g, b, Text);
    }

    // Helper function to extract RGB components from a 32-bit color value
    void ExtractRGB(u32& Alpha, u8& Red, u8& Green, u8& Blue) {
        Red = (Alpha >> 16) & 0xFF;     // Red
        Green = (Alpha >> 8) & 0xFF;    // Green
        Blue = Alpha & 0xFF;            // Blue
    }

    // Proper hex parser (handles "0x" and decimal)
    u32 ParseHex(cref<str> s) {
        if (s.empty()) return 0;
        u32 val = 0;
        try {
            size_t idx = 0;
            val = std::stoul(s, &idx, 0); // auto-detect base (handles 0x)
        } catch (...) {
            printf("%s", std::format("Invalid color value '{}', using default!", s).c_str());
            val = 0x9BC8EA;
        }
        return val;
    }

    // Helper function to blend colors based on opacity
    u32 BlendRGB(u32 color_v, i32 alpha) {
        u8 r, g, b;
        ExtractRGB(color_v, r, g, b);

        // Blend with black (0x000000) for transparency
        r = static_cast<u8>(r * (alpha / 100.0));
        g = static_cast<u8>(g * (alpha / 100.0));
        b = static_cast<u8>(b * (alpha / 100.0));

        return (r << 16) | (g << 8) | b;
    }

    u8 BlendRGB(u8 fg, u8 bg, i32 alpha) {
        return static_cast<u8>((fg * alpha + bg * (100 - alpha)) / 100);
    }

    /* ---- To make everything after "0x" caps */
    str CapsPtr(str s) {
        if (s.starts_with("0x") || s.starts_with("0X")) {
            s = s.substr(2);
        }
        std::ranges::transform(s, s.begin(), ::toupper);
        return "0x" + s;
    }

    /* ---- Basic styles ---- */
    // Bold text
    str Bold(str Text = "Hello, world!") {
        return "\033[1m" + Text + "\033[0m";
    }

    // Italic text
    str Italic(str Text = "Hello, world!") {
        return "\033[3m" + Text + "\033[0m";
    }

    // Underline text
    str Under(str Text = "Hello, world!") {
        return "\033[4m" + Text + "\033[0m";
    }

    // Strikethrough text
    str Strike(str Text = "Hello, world!") {
        return "\033[9m" + Text + "\033[0m";
    }

    /* ---- Coloring styles ---- */
    // Foreground color with opacity
    str ColorFG(str Text = "Hello, world!", u32 color_tx = 0xFF8A46, i32 alpha = 100) {
        u8 r, g, b;
        if (alpha < 100) {
            u32 blended_color = BlendRGB(color_tx, alpha);
            ExtractRGB(blended_color, r, g, b);
        } else {
            ExtractRGB(color_tx, r, g, b);
        }
        return "\033[38;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
    }

    // Background color with opacity
    str ColorBG(str Text = "Hello, world!", u32 color_bg = 0x092655, i32 alpha = 100) {
        u8 r, g, b;
        if (alpha < 100) {
            u32 blended_color = BlendRGB(color_bg, alpha);
            ExtractRGB(blended_color, r, g, b);
        } else {
            ExtractRGB(color_bg, r, g, b);
        }
        return "\033[48;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
    }

    // Foreground color with opacity using struct Color
    str ColorizeFG(cref<str> text, Color rgb) {
        return std::format("\033[38;2;{};{};{}m{}\033[0m", rgb.r, rgb.g, rgb.b, text);
    }

    // Background color with opacity using struct Color
    str ColorizeBG(cref<str> text, Color rgb) {
        return std::format("\033[48;2;{};{};{}m{}\033[0m", rgb.r, rgb.g, rgb.b, text);
    }

    /* ---- To reset mess you've made before ---- */
    void Reset(str& Text){
        sconst std::regex ansi_escape("\x1B\\[[0-9;]*m");
        Text = std::regex_replace(Text, ansi_escape, "");
    }
}
