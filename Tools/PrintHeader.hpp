#pragma once

#include "Types.hpp"

#ifdef __WIN32
#include "Win32/Win32.terminal.hpp"
#endif

namespace Tools::Styling {
    // Centered Text with Borders
    str PrintMid(const str& text = "Hello", char borderChar = '=', int offset = 2, bool printing = false) {
        #ifdef __WIN32
        int termWidth = Win32::Terminal::TerminalSizeWidth(0) + offset;
        #endif
        
        
        int padding = (termWidth - static_cast<int>(text.size()) - 4) / 2;

        str border = str(padding, borderChar);
        str content = border + "[" + text + "]" + border;
        
        if (printing) return content;
        std::cout << content << std::endl;
        return "";
    }
}