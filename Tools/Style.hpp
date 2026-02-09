#pragma once

#include <format>
#include <string>
#include <algorithm>
#include <cstdint>
#include <regex>

// #include <fmt/format.h>

namespace Tools::Styling {
    using str = std::string;        // Main string
    using wstr = std::wstring;      // Wide string (Do we even need this?)

    struct Color {
        uint8_t r, g, b;
    };

    str Colorize(const str& Text, const uint64_t Hex) {
        // Extract RGB channels
        uint8_t r = (Hex >> 16) & 0xFF;
        uint8_t g = (Hex >> 8) & 0xFF;
        uint8_t b = Hex & 0xFF;

        // ANSI escape sequence (truecolor)
        return std::format("\033[38;2;{};{};{}m{}\033[0m", r, g, b, Text);
    }

    // Helper function to extract RGB components from a 32-bit color value
    void ExtractRGB(uint32_t Alpha, uint8_t& Red, uint8_t& Green, uint8_t& Blue) {
        Red = (Alpha >> 16) & 0xFF;     // Red
        Green = (Alpha >> 8) & 0xFF;    // Green
        Blue = Alpha & 0xFF;            // Blue
    }

    // Proper hex parser (handles "0x" and decimal)
    uint32_t ParseHex(const str& s) {
        if (s.empty()) return 0;
        uint32_t val = 0;
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
    uint32_t BlendRGB(uint32_t color_v, int alpha) {
        uint8_t r, g, b;
        ExtractRGB(color_v, r, g, b);

        // Blend with black (0x000000) for transparency
        r = static_cast<uint8_t>(r * (alpha / 100.0));
        g = static_cast<uint8_t>(g * (alpha / 100.0));
        b = static_cast<uint8_t>(b * (alpha / 100.0));

        return (r << 16) | (g << 8) | b;
    }

    uint8_t BlendRGB(uint8_t fg, uint8_t bg, int alpha) {
        return static_cast<uint8_t>((fg * alpha + bg * (100 - alpha)) / 100);
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
    str ColorFG(str Text = "Hello, world!", uint32_t color_tx = 0xFF8A46, int alpha = 100) {
        uint8_t r, g, b;
        if (alpha < 100) {
            uint32_t blended_color = BlendRGB(color_tx, alpha);
            ExtractRGB(blended_color, r, g, b);
        } else {
            ExtractRGB(color_tx, r, g, b);
        }
        return "\033[38;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
    }

    // Background color with opacity
    str ColorBG(str Text = "Hello, world!", uint32_t color_bg = 0x092655, int alpha = 100) {
        uint8_t r, g, b;
        if (alpha < 100) {
            uint32_t blended_color = BlendRGB(color_bg, alpha);
            ExtractRGB(blended_color, r, g, b);
        } else {
            ExtractRGB(color_bg, r, g, b);
        }
        return "\033[48;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
    }

    // Foreground color with opacity using struct Color
    str ColorizeFG(const str& text, Color rgb) {
        return std::format("\033[38;2;{};{};{}m{}\033[0m", rgb.r, rgb.g, rgb.b, text);
    }

    // Background color with opacity using struct Color
    str ColorizeBG(const str& text, Color rgb) {
        return std::format("\033[48;2;{};{};{}m{}\033[0m", rgb.r, rgb.g, rgb.b, text);
    }

    /* ---- To reset mess you've made before ---- */
    void Reset(str& Text){
        static const std::regex ansi_escape("\x1B\\[[0-9;]*m");
        Text = std::regex_replace(Text, ansi_escape, "");
    }
}
