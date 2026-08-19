#pragma once

#ifndef TOOLS_OS_APPLE_TERMINAL_HPP
#define TOOLS_OS_APPLE_TERMINAL_HPP


#include "../Types.hpp"

/* Apple / POSIX terminal includes */
#include <sys/ioctl.h>  // ioctl, TIOCGWINSZ
#include <unistd.h>     // STDOUT_FILENO, isatty
#include <cstdio>       // FILE*, stdout, fileno
#include <iostream>

// Terminal utils
namespace rdt::OS::Terminal {

    inline i32 TerminalSize(cstr DIR = "X", const i32 offset = 0) {
        struct winsize ws{};

        // Try stdout first (most common for CLI tools)
        int fd = STDOUT_FILENO;

        // Fallback if not a TTY (piped output, etc.)
        if (!isatty(fd)) {
            fd = STDIN_FILENO;
            if (!isatty(fd)) {
                fd = STDERR_FILENO;
                if (!isatty(fd)) {
                    return 0; // No terminal attached
                }
            }
        }

        if (ioctl(fd, TIOCGWINSZ, &ws) == -1) {
            return 0; // Failed to query terminal
        }

        // DIR convention: "X" = width (cols), "Y" = height (rows)
        if (DIR && DIR[0] == 'Y') {
            return static_cast<i32>(ws.ws_row) + offset;
        }

        // Default to width
        return static_cast<i32>(ws.ws_col) + offset;
    }

    inline i32 TerminalSizeWidth(const i32 offset = 0) {
        return TerminalSize("X", offset);
    }

    inline i32 TerminalSizeHeight(const i32 offset = 0) {
        return TerminalSize("Y", offset);
    }

    inline umap<cstr, i32> TerminalSizeMap() {
        return umap<cstr, i32>{
            {"X", TerminalSizeWidth(0)},
            {"Y", TerminalSizeHeight(0)}
        };
    }

     void Clear(const bool clear_scrollback = true) {
        // If not a real terminal (pipe/file), do nothing
        if (!isatty(STDOUT_FILENO)) return;

        if (clear_scrollback) {
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
