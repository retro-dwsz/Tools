#pragma once

#ifndef TOOLS_OS_WIN32_PROC_HPP
#define TOOLS_OS_WIN32_PROC_HPP

/* ONLY STANDARD LIBS ARE ALLOWED */
#include <fileapi.h>
#include <windows.h>
#include <winnt.h>
#include <winspool.h>

#include "../Types.hpp"

/* Process hacks */
namespace Tools::OS::Process {
    template <typename T>
    T ReadProcess(idx PID, uintptr_t Address){
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

#endif