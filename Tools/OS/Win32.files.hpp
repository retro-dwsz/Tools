#pragma once

#ifndef TOOLS_OS_WIN32_FILES_HPP
#define TOOLS_OS_WIN32_FILES_HPP

/* ONLY STANDARD LIBS ARE ALLOWED */
#include <fileapi.h>
#include <windows.h>

#include "../Types.hpp"


/* Files I/O + system */
namespace Tools::Win32::File {
    cstr static Normalize(const strview& s, str& temp) {
        if (s.data()[s.size()] == '\0')
            return s.data();

        temp.assign(s);
        return temp.c_str();
    }

    bool WriteFile(const strview& path, const strview& text){
        str temp;
        cstr Path = Normalize(path, temp);

        HANDLE h = CreateFileA(
            Path,
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

    str ReadFile(const strview& path) {
        str temp;
        cstr Path = Normalize(path, temp);

        HANDLE h = CreateFileA(
            Path,
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


    bool Exists(const strview& path) {
        str temp;
        cstr Path = Normalize(path, temp);

        DWORD attr = GetFileAttributesA(Path);
        return attr != INVALID_FILE_ATTRIBUTES;
    }

    bool Remove(const strview& path) {
        str temp;
        cstr Path = Normalize(path, temp);

        return DeleteFileA(Path);
    }

    bool Move(const strview& from, const strview& to) {
        str ftmp, ttmp;
        cstr f = Normalize(from, ftmp);
        cstr t = Normalize(to, ttmp);

        return MoveFileA(f, t);
    }
}

#endif