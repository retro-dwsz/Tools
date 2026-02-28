#pragma once

#ifndef TOOLS_OS_WIN32_TERMINAL_HPP
#define TOOLS_OS_WIN32_TERMINAL_HPP

/* ONLY STANDARD LIBS ARE ALLOWED */
// #include <unistr.h>
#include <fileapi.h>
#include <windows.h>
#include <winnt.h>
#include <winspool.h>

#include <iostream>
#include <format>
#include "../Types.hpp"

/* Get current terminal size
 * Directions: X for horizontal (return), Y for vertical (return), B for both (print)
 */
namespace Tools::OS::Terminal {
    i32 TerminalSize(cstr DIR = "X", i32 offset = 0) {
        CONSOLE_SCREEN_BUFFER_INFO CSBI;

        // Get console screen buffer info
        if (!GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &CSBI)) {
            fprintf(stderr, "Failed to retrieve console screen buffer info.\n");
            return -1; // Indicate failure
        }

        // Calculate columns and rows
        i32 cols = CSBI.srWindow.Right - CSBI.srWindow.Left + 1;
        i32 rows = CSBI.srWindow.Bottom - CSBI.srWindow.Top + 1;

        // Handle input based on COR
        if (strcmp(DIR, "B") == 0) {
            std::cout << std::format("Columns:{}d\n", cols);
            std::cout << std::format("Rows: {}\n", rows);
            return 0; // Indicate success
        } else if (strcmp(DIR, "X") == 0) {
            return cols + offset;
        } else if (strcmp(DIR, "Y") == 0) {
            return rows + offset;
        } else {
            return 0; // Default return value for invalid input
        }
    }

    i32 TerminalSizeWidth(i32 offset = 0){
        return TerminalSize("X", offset);
    }

    i32 TerminalSizeHeight(i32 offset = 0){
        return TerminalSize("Y", offset);
    }

    umap<cstr, i32> TerminalSizeMap(){
        return umap<cstr, i32>{
            {"X", TerminalSizeWidth(0)},
            {"Y", TerminalSizeHeight(0)}
        };
    }

    void Clear() {
        HANDLE hStdOut = GetStdHandle(STD_OUTPUT_HANDLE);
        DWORD mode = 0;
        if (!GetConsoleMode(hStdOut, &mode)) {
            return;
        }

        const DWORD originalMode = mode;
        mode |= ENABLE_VIRTUAL_TERMINAL_PROCESSING;
        if (!SetConsoleMode(hStdOut, mode)) {
            return;
        }

        PCWSTR sequence = L"\x1b[2J\x1b[3J"; // Clear display and scrollback
        DWORD written = 0;
        WriteConsoleW(hStdOut, sequence, (DWORD)wcslen(sequence), &written, NULL);

        SetConsoleMode(hStdOut, originalMode); // Restore original mode
    }
}

#endif