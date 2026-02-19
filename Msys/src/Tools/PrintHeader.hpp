#pragma once

#include <format>
#include "OS.hpp"
#include "Types.hpp"

namespace Tools::Styling {
    // Centered Text with Borders
    str PrintMid(const str& text = "Hello", char borderChar = '=', i32 offset = 0, bool printing = false) {
        i32 termWidth = OS::Terminal::TerminalSizeWidth(offset);

        i32 padding = (termWidth - static_cast<i32>(text.size()) - 4) / 2;

        str border = str(padding, borderChar);
        str content = border + "[" + text + "]" + border;

        if (printing){
            return content;
        } else {
            std::cout << std::format("{}", content);
            // std::cout << content << std::endl;
        }
        return "";
    }
}
