#pragma once

#include <cstdint>
#include <fileapi.h>
#include <windows.h>

/* ONLY STANDARD LIBS ARE ALLOWED */
#include <iostream>
#include <format>
#include <winnt.h>
#include <winspool.h>
#include "Types.hpp"

namespace Tools::Win32 {
    cstr cstr_safe(strv s, str& temp);
}

inline cstr Tools::Win32::cstr_safe(strv s, str& temp) {
    if (s.data()[s.size()] == '\0')
        return s.data();

    temp.assign(s);
    return temp.c_str();
}


namespace Tools::Win32 {
    /* Terminals */
    namespace Terminal {
        i32 TerminalSize(cstr DIR, i32 offset);
        i32 TerminalSizeWidth(i32 offset);
        i32 TerminalSizeHeight(i32 offset);
    }

    /* File I/Os + File system */
    namespace File {
        bool WriteFile(strv path, strv text);
        str  ReadFile(strv path);

        bool Exists(strv path);
        bool Remove(strv path);
        bool Move(strv from, strv to);
    }
    
    /* Metadata */
    namespace Metadata {
        struct Meta {
            u64 size;
            u64 created;
            u64 modified;
            bool readonly;
            bool hidden;
        };
        
        /* Getter & Setter? */
        Meta GetMetadata(strv Path);
        void     SetMetadata(Meta& Meta);
    }

    /* Process hacks */
    namespace Process {
        template <typename T>
        T ReadFromProcess(idx PID, u32 Address);

        template <typename T>
        void WriteProcess(idx PID, u32 Address, T data);

        bool IsAdmin();
        bool IsAdmin(idx PID);
    }

    /* Sleep */
    namespace Sleep {
        inline void SleepMs(u32 ms);

        void SleepPrecise(f64 ms);
    }
}

/* Get current terminal size
 * Directions: X for horizontal (return), Y for vertical (return), B for both (print)
 */
namespace Tools::Win32::Terminals {
    i32 TerminalSize(cstr DIR, i32 offset) {
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

    i32 TerminalSizeWidth(i32 offset){
        return TerminalSize("X", offset);
    }

    i32 TerminalSizeHeight(i32 offset){
        return TerminalSize("X", offset);
    }
}

/* Files I/O + system */
namespace Tools::Win32::File {
    bool WriteFile(strv path, strv text){
        str temp;
        cstr p = cstr_safe(path, temp);

        HANDLE h = CreateFileA(
            p,
            GENERIC_WRITE,
            0,
            nullptr,
            CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL,
            nullptr
        );

        if (h == INVALID_HANDLE_VALUE) {return false;}

        DWORD written = 0;
        BOOL ok = ::WriteFile(
            h,
            text.data(),
            (DWORD)text.size(),
            &written,
            nullptr
        );

        CloseHandle(h);
        return ok && written == text.size();
    }

    str ReadFile(strv path) {
        str temp;
        cstr p = cstr_safe(path, temp);

        HANDLE h = CreateFileA(
            p,
            GENERIC_READ,
            FILE_SHARE_READ,
            nullptr,
            OPEN_EXISTING,
            FILE_ATTRIBUTE_NORMAL,
            nullptr
        );

        if (h == INVALID_HANDLE_VALUE)
            return {};

        LARGE_INTEGER size;
        GetFileSizeEx(h, &size);

        str out;
        out.resize(size.QuadPart);

        DWORD read = 0;
        ::ReadFile(
            h,
            out.data(),
            (DWORD)out.size(),
            &read,
            nullptr
        );

        CloseHandle(h);
        return out;
    }


    bool Exists(strv path) {
        str temp;
        cstr p = cstr_safe(path, temp);

        DWORD attr = GetFileAttributesA(p);
        return attr != INVALID_FILE_ATTRIBUTES;
    }

    bool Remove(strv path) {
        str temp;
        cstr p = cstr_safe(path, temp);

        return DeleteFileA(p);
    }

    bool Move(strv from, strv to) {
        str ftmp, ttmp;
        cstr f = cstr_safe(from, ftmp);
        cstr t = cstr_safe(to, ttmp);

        return MoveFileA(f, t);
    }
}

/* Sleep function using winapi */
namespace Tools::Win32::Sleep {
    inline void SleepMs(u32 ms) {
        ::Sleep(ms);
    }

    void SleepPrecise(f64 ms) {
        LARGE_INTEGER freq, start, now;
        QueryPerformanceFrequency(&freq);
        QueryPerformanceCounter(&start);

        double target = ms * freq.QuadPart;

        while (true) {
            QueryPerformanceCounter(&now);
            if (now.QuadPart - start.QuadPart >= target)
            break;

            ::Sleep(0); // yield CPU slice
        }
    }
}

/* Process hacks */
namespace Tools::Win32::Process {
    template <typename T>
    T ReadFromProcess(idx PID, uintptr_t Address){
        HANDLE h = OpenProcess(
            PROCESS_VM_READ,
            FALSE,
            (DWORD)PID
        );

        T value{};
        if (!h) return value;

        SIZE_T bytes = 0;
        ReadProcessMemory(
            h,
            (LPCVOID)Address,
            &value,
            sizeof(T),
            &bytes
        );

        CloseHandle(h);
        return value;
    }

    template <typename T>
    bool WriteProcess(idx PID, uintptr_t Address, T data){
        HANDLE h = OpenProcess(
            PROCESS_VM_WRITE | PROCESS_VM_OPERATION,
            FALSE,
            (DWORD)PID
        );

        if (!h) return false;

        SIZE_T bytes = 0;
        BOOL ok = WriteProcessMemory(
            h,
            (LPVOID)Address,
            &data,
            sizeof(T),
            &bytes
        );

        CloseHandle(h);
        return ok && bytes == sizeof(T);
    }

    /* Current process */
    bool IsAdmin() {
        BOOL isAdmin = FALSE;
        HANDLE token = nullptr;

        if (!OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &token))
            return false;

        SID_IDENTIFIER_AUTHORITY NtAuth = SECURITY_NT_AUTHORITY;
        PSID adminGroup = nullptr;

        AllocateAndInitializeSid(
            &NtAuth,
            2,
            SECURITY_BUILTIN_DOMAIN_RID,
            DOMAIN_ALIAS_RID_ADMINS,
            0,0,0,0,0,0,
            &adminGroup
        );

        CheckTokenMembership(token, adminGroup, &isAdmin);

        FreeSid(adminGroup);
        CloseHandle(token);

        return isAdmin;
    }

    /* Other process */
    bool IsAdmin(idx pid) {
        HANDLE proc = OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION, FALSE, (DWORD)pid);
        if (!proc) return false;

        HANDLE token = nullptr;
        if (!OpenProcessToken(proc, TOKEN_QUERY, &token)) {
            CloseHandle(proc);
            return false;
        }

        BOOL isAdmin = FALSE;
        SID_IDENTIFIER_AUTHORITY NtAuth = SECURITY_NT_AUTHORITY;
        PSID adminGroup = nullptr;

        AllocateAndInitializeSid(
            &NtAuth,
            2,
            SECURITY_BUILTIN_DOMAIN_RID,
            DOMAIN_ALIAS_RID_ADMINS,
            0,0,0,0,0,0,
            &adminGroup
        );

        CheckTokenMembership(token, adminGroup, &isAdmin);

        FreeSid(adminGroup);
        CloseHandle(token);
        CloseHandle(proc);

        return isAdmin;
    }
}