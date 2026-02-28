#pragma once

#ifndef TOOLS_OS_WIN32_FILES_HPP
#define TOOLS_OS_WIN32_FILES_HPP

/* ONLY STANDARD LIBS ARE ALLOWED */
#include <fileapi.h>
#include <windows.h>

#include "../Types.hpp"


/* Files I/O + system */
namespace Tools::Win32::File {
    cstr static cstr_safe(strview s, str& temp) {
        if (s.data()[s.size()] == '\0')
            return s.data();

        temp.assign(s);
        return temp.c_str();
    }

    bool WriteFile(strview path, strview text){
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

    str ReadFile(strview path) {
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


    bool Exists(strview path) {
        str temp;
        cstr p = cstr_safe(path, temp);

        DWORD attr = GetFileAttributesA(p);
        return attr != INVALID_FILE_ATTRIBUTES;
    }

    bool Remove(strview path) {
        str temp;
        cstr p = cstr_safe(path, temp);

        return DeleteFileA(p);
    }

    bool Move(strview from, strview to) {
        str ftmp, ttmp;
        cstr f = cstr_safe(from, ftmp);
        cstr t = cstr_safe(to, ttmp);

        return MoveFileA(f, t);
    }
}

#endif