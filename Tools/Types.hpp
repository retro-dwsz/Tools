#pragma once

#ifndef TOOLS_TYPES_HPP
#define TOOLS_TYPES_HPP

#include "Types/Types.common.hpp"

#include "Types/Types.int.hpp"
#include "Types/Types.uint.hpp"
#include "Types/Types.float.hpp"

#include "Types/Types.string.hpp"
#include "Types/Types.containers.hpp"
#include "Types/Types.pointer.hpp"
#include "Types/Types.memory.hpp"

#include "Types/Types.clock.hpp"

#if __has_include(<cxxabi.h>) && defined(ITANIUM_DMGL)
    #include <cxxabi.h>
    str RemoveMangle(const str& mangled, bool WithArgs = true) {
        int status = 0;

        std::unique_ptr<char, void(*)(void*)> demangled{
            abi::__cxa_demangle(mangled.c_str(), nullptr, nullptr, &status),
            std::free
        };

        str out = (status == 0 && demangled)
            ? demangled.get()
            : mangled;

        if (!WithArgs) {
            auto pos = out.find('(');
            if (pos != str::npos)
                out.erase(pos);
        }

        return out;
    }
#elif defined(MSVC_DMGL)
    #include <windows.h>
    #include <dbghelp.h>
    #pragma comment(lib, "Dbghelp.lib")

    str RemoveMangle(const str& mangled, bool WithArgs = true) {
        char buffer[2048];

        DWORD flags = WithArgs
            ? UNDNAME_COMPLETE
            : UNDNAME_NO_ARGUMENTS;

        if (UnDecorateSymbolName(
                mangled.c_str(),
                buffer,
                sizeof(buffer),
                flags
            )) {
            return buffer;
        }

        return mangled;
    }
#endif

#endif
