#pragma once

#include "../Types.hpp"

#include <sys/ioctl.h>   // ioctl, winsize, Linux only!
#include <unistd.h>      // STDOUT_FILENO
#include <cstdio>        // fileno, stdout

// Terminal utils
namespace Tools::OS::Terminal{
    __declspec(__noinline__)
    i32 TerminalSize(cstr DIR = "X", const i32 offset = 0){
        struct winsize ws{};

        // Try stdout first (most common)
        if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) == -1) {
            // Fallback to stdin if needed (rare edge case)
            if (ioctl(STDIN_FILENO, TIOCGWINSZ, &ws) == -1) {
                return 0; // no TTY (redirected output, etc.)
            }
        }

        const char d = DIR && DIR[0] ? DIR[0] : 'X';

        if (d == 'X' || d == 'x') {
            return static_cast<i32>(ws.ws_col) - offset;
        }
        else if (d == 'Y' || d == 'y') {
            return static_cast<i32>(ws.ws_row) - offset;
        }

        // Unknown direction fallback = width (safe default)
        return static_cast<i32>(ws.ws_col) - offset;
    }

    inline i32 TerminalSizeWidth(const i32 offset = 0){
        return TerminalSize("X", offset);
    }

    inline i32 TerminalSizeHeight(const i32 offset = 0){
        return TerminalSize("Y", offset);
    }

    inline umap<cstr, i32> TerminalSizeMap(){
        return umap<cstr, i32>{
            {"X", TerminalSizeWidth(0)},
            {"Y", TerminalSizeHeight(0)}
        };
    }
}