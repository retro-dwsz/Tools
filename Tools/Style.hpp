#pragma once

#ifndef TOOLS_STYLE_HPP
#define TOOLS_STYLE_HPP

#include "FeatureCheck.hpp"
#include "Casting.hpp"
#include "Types.hpp"

#include <ranges>
#include <format>
#include <algorithm>
#include <regex>

using namespace Tools::Cast;
#define sconst static const

namespace Tools::Styling {
    // using str = std::string;        // Main string
    // using wstr = std::wstring;      // Wide string (Do we even need this?)

    str Reverse(const str& Tx){
        str Result;
        for(auto& i : Tx | std::views::reverse){
            Result.push_back(i);
        }

        return Result;
    }

    void ReverseInl(str& Tx){
        idx n = Tx.length();
        for (idx i = 0; i < n / 2; i++) {
            std::swap(Tx[i], Tx[n - i - 1]);
        }
    };

    struct Color {
        u8 r, g, b;
    };

    str Colorize(const str& Text, const u64 Hex) {
        // Extract RGB channels
        u8 r = (Hex >> 16) & 0xFF;
        u8 g = (Hex >> 8) & 0xFF;
        u8 b = Hex & 0xFF;

        // ANSI escape sequence (truecolor)
        return std::format("\033[38;2;{};{};{}m{}\033[0m", r, g, b, Text);
    }

    // Helper function to extract RGB components from a 32-bit color value
    void static ExtractRGB(u32& Alpha, u8& Red, u8& Green, u8& Blue) {
        Red = (Alpha >> 16) & 0xFF;     // Red
        Green = (Alpha >> 8) & 0xFF;    // Green
        Blue = Alpha & 0xFF;            // Blue
    }

    // Proper hex parser (handles "0x" and decimal)
    u32 ParseHex(const str& s) {
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
        u8 R, G, B;
        ExtractRGB(color_v, R, G, B);

        // Blend with black (0x000000) for transparency
        R = scast<u8>(R * (alpha / 100.0));
        G = scast<u8>(G * (alpha / 100.0));
        B = scast<u8>(B * (alpha / 100.0));

        return (R << 16) | (G << 8) | B;
    }

    u8 BlendRGB(u8 fg, u8 bg, i32 alpha) {
        return scast<u8>((fg * alpha + bg * (100 - alpha)) / 100);
    }

    /* ---- To make everything after "0x" caps */
    str CapsPtr(str& Text) {
        if (Text.starts_with("0x") || Text.starts_with("0X")) {
            Text = Text.substr(2);
        }
        std::ranges::transform(Text, Text.begin(), ::toupper);
        return "0x" + Text;
    }

    /* ---- Basic styles ---- */
    // Bold text
    str Bold(const str& Text = "Hello, world!") {
        return "\033[1m" + Text + "\033[0m";
    }

    // Italic text
    str Italic(const str& Text = "Hello, world!") {
        return "\033[3m" + Text + "\033[0m";
    }

    // Underline text
    str Under(const str& Text = "Hello, world!") {
        return "\033[4m" + Text + "\033[0m";
    }

    // Strikethrough text
    str Strike(const str& Text = "Hello, world!") {
        return "\033[9m" + Text + "\033[0m";
    }

    /* ---- Coloring styles ---- */
    // Foreground color with opacity
    str ColorFG(const str& Text = "Hello, world!", u32 FGColor = 0xFF8A46, i32 alpha = 100) {
        u8 r, g, b;
        if (alpha < 100) {
            u32 blended_color = BlendRGB(FGColor, alpha);
            ExtractRGB(blended_color, r, g, b);
        } else {
            ExtractRGB(FGColor, r, g, b);
        }
        return "\033[38;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
    }

    // Background color with opacity
    str ColorBG(const str& Text = "Hello, world!", u32 BGColor = 0x092655, i32 alpha = 100) {
        u8 r, g, b;
        if (alpha < 100) {
            u32 blended_color = BlendRGB(BGColor, alpha);
            ExtractRGB(blended_color, r, g, b);
        } else {
            ExtractRGB(BGColor, r, g, b);
        }
        return "\033[48;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
    }

    // Foreground color with opacity using struct Color
    str ColorFG(const str Text, Color TextColor) {
        return std::format("\033[38;2;{};{};{}m{}\033[0m", TextColor.r, TextColor.g, TextColor.b, Text);
    }

    // Background color with opacity using struct Color
    str ColorBG(const str Text, Color TextColor) {
        return std::format("\033[48;2;{};{};{}m{}\033[0m", TextColor.r, TextColor.g, TextColor.b, Text);
    }

    /* ---- To reset mess you've made before ---- */
    void Reset(str& Text){
        sconst std::regex ansi_escape("\x1B\\[[0-9;]*m");
        Text = std::regex_replace(Text, ansi_escape, "");
    }
}

#endif
