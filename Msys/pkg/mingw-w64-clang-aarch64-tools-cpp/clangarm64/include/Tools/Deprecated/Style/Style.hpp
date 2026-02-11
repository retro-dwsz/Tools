#pragma once

#include <cstdint>
#include <string>

#define DEP [[__warning__("Maybe unstable because of std::wstring behaviour")]]

using str = std::string;
using wstr = std::wstring;

// Utilities
namespace Tools::StyleCommon {
    struct Color {
        uint8_t r, g, b;
    };

    // Helper function to extract RGB components from a 32-bit color value
    // return Color{R, G, B}
    Color GetRGB(const uint32_t& hex);

    // Input from each channel, return as useable uint32_t
    uint32_t GetHex(const int& R, const int& G, const int& B);
    
    // Proper hex parser (handles "0x" and decimal)
    // Input as string, return as useable uint32_t
    uint32_t BlendAlpha(const uint32_t& color, const int& alpha);
    
    // Helper function to blend hex colors based on opacity
    void BlendAlpha(uint8_t& Red, uint8_t& Green, uint8_t& Blue, const uint32_t& Alpha);
    
    // Helper function to blend back and fore colors based on opacity
    uint32_t BlendFBG(const uint32_t& fg, const uint32_t& bg, const int& alpha);
}

// For std::stirng
namespace Tools::Styling {

    /* ---- To make everything after "0x" caps */
    str CapsPtr(str& s);

    /* ---- Basic styles ---- */
    // Bold text
    str Bold(const str& Text);

    // Italic text
    str Italic(const str& Text);

    // Underline text
    str Under(const str& Text);

    // Strikethrough text
    str Strike(const str& Text);

    /* ---- Coloring styles ---- */
    // Foreground color with opacity
    str ColorFG(const str& Text, uint32_t color_tx = 0xFF8A46, int alpha = 100);

    // Foreground color with opacity using struct Color
    str ColorFG(const str& text, Tools::StyleCommon::Color rgb);

    // Background color with opacity
    str ColorBG(const str& Text, uint32_t color_bg = 0x092655, int alpha = 100);

    // Background color with opacity using struct Color
    str ColorBG(const str& text, Tools::StyleCommon::Color rgb);

    /* ---- To reset mess you've made before ---- */
    str Reset(const str& Text);
}

// for std::wstring 
namespace Tools::StylingW {
    // Basic colorization
    /* DEP */ wstr Colorize(const wstr& Text, const uint64_t Hex);

    /* ---- To make everything after "0x" caps */
    /* DEP */ wstr CapsPtr(wstr& s);

    /* ---- Basic styles ---- */
    // Bold text
    /* DEP */ wstr Bold(const wstr& Text);

    // Italic text
    /* DEP */ wstr Italic(const wstr& Text);

    // Underline text
    /* DEP */ wstr Under(const wstr& Text);

    // Strikethrough text
    /* DEP */ wstr Strike(const wstr& Text);

    /* ---- Coloring styles ---- */
    // Foreground color with opacity
    /* DEP */ wstr ColorFG(const wstr& Text, uint32_t color_tx = 0xFF8A46, int alpha = 100);

    // Foreground color with opacity using struct Color
    /* DEP */ wstr ColorFG(const wstr& text, Tools::StyleCommon::Color rgb);

    // Background color with opacity
    /* DEP */ wstr ColorBG(const wstr& Text, uint32_t color_bg = 0x092655, int alpha = 100);

    // Background color with opacity using struct Color
    /* DEP */ wstr ColorBG(const wstr& text, Tools::StyleCommon::Color rgb);

    /* ---- To reset mess you've made before ---- */
    /* DEP */ wstr Reset(const wstr& Text);
}
