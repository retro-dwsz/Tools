#pragma once

#ifndef TOOLS_OS_WIN32_ENV_HPP
#define TOOLS_OS_WIN32_ENV_HPP

#include <windows.h>
#include <Lmcons.h>

#include "../Types.hpp"

// Names & Accounts
namespace Tools::Win32::Env {
    str GetUserName(){
        TCHAR UserName[UNLEN + 1];
        DWORD Size = UNLEN + 1;

        if (::GetUserName(UserName, &Size)) {
            return UserName;
        } else {
            return std::format("Failed to get username. Error: {}", GetLastError());
        };
    };

    str GetUserDomainName(){
        return std::getenv("USERDOMAIN");
    }
}

// Networks & Machine info
namespace Tools::Win32::Env {
    str GetMachineName() {
        char buffer[MAX_COMPUTERNAME_LENGTH + 1];
        DWORD size = sizeof(buffer);
        if (::GetComputerNameA(buffer, &size)) {
            return str(buffer);
        }
        return "";
    }

    bool Is64BitOperatingSystem() {
    #if defined(_WIN64)
        return true;
    #elif defined(_WIN32)
        BOOL isWow64 = FALSE;
        typedef BOOL(WINAPI* LPFN_ISWOW64PROCESS)(HANDLE, PBOOL);
        LPFN_ISWOW64PROCESS fnIsWow64Process = (LPFN_ISWOW64PROCESS)GetProcAddress(
            GetModuleHandleA("kernel32"), "IsWow64Process");

        if (NULL != fnIsWow64Process) {
            if (!fnIsWow64Process(GetCurrentProcess(), &isWow64)) {
                return false;
            }
        }
        return isWow64 != FALSE;
    #else
        return false;
    #endif
    }
}

// Directories & Paths
namespace Tools::Win32::Env {
    str GetCurrentDirectory() {
        char buffer[MAX_PATH];
        DWORD bytes = ::GetCurrentDirectoryA(MAX_PATH, buffer);
        if (bytes > 0) {
            return str(buffer);
        }
        return "";
    }

    void SetCurrentDirectory(const str& path) {
        ::SetCurrentDirectoryA(path.c_str());
    }

    str GetSystemDirectory() {
        char buffer[MAX_PATH];
        UINT bytes = ::GetSystemDirectoryA(buffer, MAX_PATH);
        if (bytes > 0) {
            return str(buffer);
        }
        return "";
    }
}

// Variables & Command Line
namespace Tools::Win32::Env {
    str GetCommandLineArgs() {
        return str(::GetCommandLineA());
    }

    str GetEnvironmentVariable(const str& variable) {
        DWORD bufferSize = ::GetEnvironmentVariableA(variable.c_str(), NULL, 0);
        if (bufferSize == 0) return "";

        std::vector<char> buffer(bufferSize);
        ::GetEnvironmentVariableA(variable.c_str(), buffer.data(), bufferSize);
        return str(buffer.data());
    }

    void SetEnvironmentVariable(const str& variable, const str& value) {
        if (value.empty()) {
            ::SetEnvironmentVariableA(variable.c_str(), NULL);
        } else {
            ::SetEnvironmentVariableA(variable.c_str(), value.c_str());
        }
    }
}

#endif