#pragma once

#ifndef TOOLS_OS_LINUX_TERMINAL_HPP
#define TOOLS_OS_LINUX_TERMINAL_HPP

#include "../Types.hpp"

#include <sys/ioctl.h>   // ioctl, winsize, Linux only!
#include <unistd.h>      // STDOUT_FILENO
#include <cstdio>        // fileno, stdout
#include <iostream>

// Terminal utils
namespace Tools::OS::Terminal{
    __declspec(__noinline__)
    idx TerminalSize(cstr DIR = "X", const idx offset = 0){
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
            return static_cast<idx>(ws.ws_col) - offset;
        }
        else if (d == 'Y' || d == 'y') {
            return static_cast<idx>(ws.ws_row) - offset;
        }

        // Unknown direction fallback = width (safe default)
        return static_cast<idx>(ws.ws_col) - offset;
    }

    inline idx TerminalSizeWidth(const idx offset = 0){
        return TerminalSize("X", offset);
    }

    inline idx TerminalSizeHeight(const idx offset = 0){
        return TerminalSize("Y", offset);
    }

    inline umap<cstr, idx> TerminalSizeMap(){
        return umap<cstr, idx>{
            {"X", TerminalSizeWidth(0)},
            {"Y", TerminalSizeHeight(0)}
        };
    }

     void Clear(const bool ClearScrollback = true) {
        // If not a real terminal (pipe/file), do nothing
        if (!isatty(STDOUT_FILENO)) return;

        if (ClearScrollback) {
            // Clear screen + scrollback + move cursor home
            std::cout << "\x1b[2J\x1b[3J\x1b[H";
        } else {
            // Clear visible screen only + move cursor home
            std::cout << "\x1b[2J\x1b[H";
        }

        std::cout.flush();
    }
}
#endif
