#pragma once

#ifndef TOOLS_PRINT_HEADER_HPP
#define TOOLS_PRINT_HEADER_HPP

#include "FeatureCheck.hpp"

#include <format>
#include "OS.hpp"
#include "Types.hpp"

namespace rdt::Styling {
    // Centered Text with Borders
    str PrintMid(const str& Text = "Hello", const char borderChar = '=', const u32 offset = 0, const bool printing = false) {
        const i32 termWidth = OS::Terminal::TerminalSizeWidth(offset);

        const i32 padding = (termWidth - static_cast<i32>(Text.size()) - 4) / 2;

        const str border = str(padding, borderChar);
        const str content = border + "[" + Text + "]" + border;

        if (printing){
            return content;
        } else {
            std::cout << std::format("{}", content);
            // std::cout << content << std::endl;
        }
        return "";
    }
}

#endif
