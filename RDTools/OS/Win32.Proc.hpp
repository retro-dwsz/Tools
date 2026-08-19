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
namespace rdt::OS::Process {
    template <typename T>
    T ReadProcess(const idx PID, const uintptr_t Address){
        HANDLE Handle = OpenProcess(
            PROCESS_VM_READ,
            FALSE,
            (DWORD)PID
        );

        T Value{};
        if (!Handle) return Value;

        SIZE_T Bytes = 0;
        ReadProcessMemory(
            Handle,
            (LPCVOID)Address,
            &Value,
            sizeof(T),
            &Bytes
        );

        CloseHandle(Handle);
        return Value;
    }

    template <typename T>
    bool WriteProcess(const idx PID, const uintptr_t Address, T data){
        HANDLE Handle = OpenProcess(
            PROCESS_VM_WRITE | PROCESS_VM_OPERATION,
            FALSE,
            (DWORD)PID
        );

        if (!Handle) return false;

        SIZE_T Bytes = 0;
        BOOL Success = WriteProcessMemory(
            Handle,
            (LPVOID)Address,
            &data,
            sizeof(T),
            &Bytes
        );

        CloseHandle(Handle);
        return Success && Bytes == sizeof(T);
    }

    /* Current process */
    inline bool IsAdmin() {
        auto IsAdmin = FALSE;
        HANDLE Token = nullptr;

        if (!OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &Token))
            return false;

        SID_IDENTIFIER_AUTHORITY NtAuth = SECURITY_NT_AUTHORITY;
        PSID AdminGroup = nullptr;

        AllocateAndInitializeSid(
            &NtAuth,
            2,
            SECURITY_BUILTIN_DOMAIN_RID,
            DOMAIN_ALIAS_RID_ADMINS,
            0,0,0,0,0,0,
            &AdminGroup
        );

        CheckTokenMembership(Token, AdminGroup, &IsAdmin);

        FreeSid(AdminGroup);
        CloseHandle(Token);

        return IsAdmin;
    }

    /* Other process */
    inline bool IsAdmin(const idx pid) {
        HANDLE Proc = OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION, FALSE, (DWORD)pid);
        if (!Proc) return false;

        HANDLE Token = nullptr;
        if (!OpenProcessToken(Proc, TOKEN_QUERY, &Token)) {
            CloseHandle(Proc);
            return false;
        }

        BOOL IsAdmin = FALSE;
        SID_IDENTIFIER_AUTHORITY NtAuth = SECURITY_NT_AUTHORITY;
        PSID AdminGroup = nullptr;

        AllocateAndInitializeSid(
            &NtAuth,
            2,
            SECURITY_BUILTIN_DOMAIN_RID,
            DOMAIN_ALIAS_RID_ADMINS,
            0,0,0,0,0,0,
            &AdminGroup
        );

        CheckTokenMembership(Token, AdminGroup, &IsAdmin);

        FreeSid(AdminGroup);
        CloseHandle(Token);
        CloseHandle(Proc);

        return IsAdmin;
    }
}

#endif