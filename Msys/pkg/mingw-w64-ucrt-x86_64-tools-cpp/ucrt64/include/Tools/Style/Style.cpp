#include <stdexcept>
#include <string>
#include <algorithm>
#include <cstdint>
#include <regex>

#include <print>
#include <format>

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
// #define DEP [[deprecated("Maybe unstable because of std::wstring behaviour")]]

using str = std::string;
using wstr = std::wstring;

#ifdef OLD_LIB
namespace Tools::Common {
    struct Color {
        uint8_t r, g, b;
    };
    
    // FIXME! Scrambled function upon copying stuffs 😭

    // Helper function to extract RGB components from a 32-bit color value
    /* inline */
    void ExtractRGB(uint8_t& Red, uint8_t& Green, uint8_t& Blue, uint32_t Alpha) {
        Red = (Alpha >> 16) & 0xFF;     // Red
        Green = (Alpha >> 8) & 0xFF;    // Green
        Blue = Alpha & 0xFF;            // Blue
    }

    // Proper hex parser (handles "0x" and decimal)
    /* inline */
    uint32_t ParseHex(const str& s) {
        if (s.empty()) return 0;
        uint32_t val = 0;
        try {
            size_t idx = 0;
            val = std::stoul(s, &idx, 0); // auto-detect base (handles 0x)
        } catch (...) {
            std::println("Invalid color value '{}', using default!", s);
            val = 0x9BC8EA;
        }
        return val;
    }

    // Helper function to blend colors based on opacity
    /* inline */
    uint32_t BlendRGB(uint32_t color_v, int32_t alpha) {
        uint8_t r, g, b;
        ExtractRGB(r, g, b, alpha);

        // Blend with black (0x000000) for transparency
        r = static_cast<uint8_t>(r * (alpha / 100.0));
        g = static_cast<uint8_t>(g * (alpha / 100.0));
        b = static_cast<uint8_t>(b * (alpha / 100.0));

        return (r << 16) | (g << 8) | b;
    }

    // Helper function to blend back and fore colors based on opacity
    /* inline */
    uint32_t BlendRGB(uint32_t fg, uint32_t bg, int alpha) {
        return (fg * alpha + bg * (100 - alpha)) / 100;
    }
}
#endif

namespace Tools::Common {
    struct Color {
        uint8_t r, g, b;
    };

    // Helper function to extract RGB components from a 32-bit color value
    // return Color{R, G, B}
    Color GetRGB(const uint32_t& hex) {
        return Color{
            static_cast<uint8_t>((hex >> 16) & 0xFF),
            static_cast<uint8_t>((hex >> 8) & 0xFF),
            static_cast<uint8_t>(hex & 0xFF)
        };
    }

    // Input from each channel, return as useable uint32_t
    uint32_t GetHex(int& R, int& G, int& B) {
        if (R < 0) R = 0; if (R > 255) R = 255;
        if (G < 0) G = 0; if (G > 255) G = 255;
        if (B < 0) B = 0; if (B > 255) B = 255;
        return (R << 16) | (G << 8) | B;
    }
    
    // Proper hex parser (handles "0x" and decimal)
    // Input as string, return as useable uint32_t
    uint32_t GetHex(const str& s) {
        if (s.empty()) return 0;

        try {
            size_t idx = 0;
            return std::stoul(s, &idx, 0);
        } catch (...) {
            std::println("Invalid hex '{}', using fallback 0x9BC8EA", s);
            return 0x9BC8EA;
        }
    }

    // Helper function to blend hex colors based on opacity
    uint32_t BlendAlpha(const uint32_t& color, const int& alpha) {
        Color c = GetRGB(color);
        float t = alpha / 100.0f;

        int r = static_cast<int>(c.r * t);
        int g = static_cast<int>(c.g * t);
        int b = static_cast<int>(c.b * t);

        return GetHex(r, g, b);
    }

    // Inline alpha-blending to write to each channell
    void BlendAlpha(uint8_t& Red, uint8_t& Green, uint8_t& Blue, const uint32_t& Alpha) {
        Red = (Alpha >> 16) & 0xFF;     // Red
        Green = (Alpha >> 8) & 0xFF;    // Green
        Blue = Alpha & 0xFF;            // Blue
    }

    // Helper function to blend back and fore colors based on opacity
    uint32_t BlendFBG(const uint32_t& fg, const uint32_t& bg, const int& alpha) {
        float t = alpha / 100.0f;

        Color A = GetRGB(fg);
        Color B = GetRGB(bg);

        int r = static_cast<int>(A.r * t + B.r * (1 - t));
        int g = static_cast<int>(A.g * t + B.g * (1 - t));
        int b = static_cast<int>(A.b * t + B.b * (1 - t));

        return GetHex(r, g, b);
    }
}

namespace Tools::Styling {
    // Basic colorization
    /* inline */
    str Colorize(const str& Text, const uint64_t Hex) {
        // Extract RGB channels
        uint8_t r = (Hex >> 16) & 0xFF;
        uint8_t g = (Hex >> 8) & 0xFF;
        uint8_t b = Hex & 0xFF;

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
    str Bold(const str& Text) {
        // return "\033[1m" + Text + "\033[0m";
        return std::format("\033[1m{}\033[0m", Text);
    }

    // Italic text
    /* inline */
    str Italic(const str& Text) {
        // return "\033[3m" + Text + "\033[0m";
        return std::format("\033[3m{}\033[0m", Text);
    }
    
    // Underline text
    /* inline */
    str Under(const str& Text) {
        // return "\033[4m" + Text + "\033[0m";
        return std::format("\033[4m{}\033[0m", Text);
    }
    
    // Strikethrough text
    /* inline */
    str Strike(const str& Text) {
        // return "\033[9m" + Text + "\033[0m";
        return std::format("\033[9m{}\033[0m", Text);
    }

    /* ---- Coloring styles ---- */
    // Foreground color with opacity
    /* inline */
    str ColorFG(const str& Text, uint32_t color_tx = 0xFF8A46, int alpha = 100) {
        uint8_t r, g, b;
        if (alpha < 100) {
            uint32_t blended_color = Tools::Common::BlendAlpha(color_tx, alpha);
            Tools::Common::BlendAlpha(r, g, b, blended_color);
        } else {
            Tools::Common::BlendAlpha(r, g, b, color_tx);
        }
        // return "\033[38;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
        return std::format(
            "\033[38;2;{};{};{}m{}\033[0m",
            std::to_string(r), std::to_string(g), std::to_string(b), Text
        );
    }

    // Background color with opacity
    /* inline */
    str ColorBG(const str& Text, uint32_t color_bg = 0x092655, int alpha = 100) {
        uint8_t r, g, b;
        if (alpha < 100) {
            uint32_t blended_color = Tools::Common::BlendAlpha(color_bg, alpha);
            Tools::Common::BlendAlpha(r, g, b, blended_color);
        } else {
            Tools::Common::BlendAlpha(r, g, b, color_bg);
        }
        // return "\033[48;2;" + std::to_string(r) + ";" + std::to_string(g) + ";" + std::to_string(b) + "m" + Text + "\033[0m";
        return std::format(
            "\033[48;2;{};{};{}m{}\033[0m",
            std::to_string(r), std::to_string(g), std::to_string(b), Text
        );
    }

    // Foreground color with opacity using struct Color
    /* inline */
    str ColorFG(const str& text, Tools::Common::Color rgb) {
        return std::format(
            "\033[38;2;{};{};{}m{}\033[0m",
            std::to_string(rgb.r), std::to_string(rgb.g), std::to_string(rgb.b), text
        );
    }

    // Background color with opacity using struct Color
    /* inline */
    str ColorBG(const str& text, Tools::Common::Color rgb) {
        return std::format(
            "\033[48;2;{};{};{}m{}\033[0m",
            std::to_string(rgb.r), std::to_string(rgb.g), std::to_string(rgb.b), text
        );
    }

    /* ---- To reset mess you've made before ---- */
    /* inline */
    str Reset(const str& Text){
        static const std::regex ansi_escape("\x1B\\[[0-9;]*m");
        return std::regex_replace(Text, ansi_escape, "");
    }
}

namespace Tools::StylingW {
    // Basic colorization
    /* DEP */ /* inline */
    wstr Colorize(const wstr& Text, const uint64_t Hex) {
        // Extract RGB channels
        uint8_t r = (Hex >> 16) & 0xFF;
        uint8_t g = (Hex >> 8) & 0xFF;
        uint8_t b = Hex & 0xFF;

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
    wstr Bold(const wstr& Text) {        
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
    wstr Italic(const wstr& Text) {
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
    wstr Under(const wstr& Text) {
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
    wstr Strike(const wstr& Text) {
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
    wstr ColorFG(const wstr& Text, uint32_t color_tx = 0xFF8A46, int alpha = 100) {
        uint8_t r, g, b;
        if (alpha < 100) {
            uint32_t blended_color = Tools::Common::BlendAlpha(color_tx, alpha);
            Tools::Common::BlendAlpha(r, g, b, blended_color);
        } else {
            Tools::Common::BlendAlpha(r, g, b, color_tx);
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
    wstr ColorBG(const wstr& Text, uint32_t color_bg = 0x092655, int alpha = 100) {
        uint8_t r, g, b;
        if (alpha < 100) {
            uint32_t blended_color = Tools::Common::BlendAlpha(color_bg, alpha);
            Tools::Common::BlendAlpha(r, g, b, blended_color);
        } else {
            Tools::Common::BlendAlpha(r, g, b, color_bg);
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
    wstr ColorFG(const wstr& Text, Tools::Common::Color rgb) {
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
    wstr ColorBG(const wstr& Text, Tools::Common::Color rgb) {
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
    wstr Reset(const wstr& Text){
        static const std::wregex ansi_escape(L"\x1B\\[[0-9;]*m");
        return std::regex_replace(Text, ansi_escape, L"");
    }
}