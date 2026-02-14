#pragma once

#include "OS.hpp"
#include "Types.hpp"

namespace Tools::Styling {
    // Centered Text with Borders
    str PrintMid(const str& text = "Hello", char borderChar = '=', int offset = 0, bool printing = false) {
        int termWidth = OS::Terminal::TerminalSizeWidth(offset);
        
        int padding = (termWidth - static_cast<int>(text.size()) - 4) / 2;

        str border = str(padding, borderChar);
        str content = border + "[" + text + "]" + border;
        
        if (printing) return content;
        std::cout << content << std::endl;
        return "";
    }
}