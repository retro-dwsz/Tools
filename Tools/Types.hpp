#pragma once

#ifndef TOOLS_TYPES_HPP
#define TOOLS_TYPES_HPP

#include "FeatureCheck.hpp"

#include "Types/Common.hpp"

#include "Types/Int.hpp"
#include "Types/UInt.hpp"
#include "Types/Float.hpp"

#include "Types/String.hpp"
#include "Types/Containers.hpp"
#include "Types/Pointer.hpp"
#include "Types/Memory.hpp"

#include "Types/Time.hpp"

template <typename T>
void CheckRange(T& Min, T& Max) {
    if (Max < Min) std::swap(Min, Max);
}

template <typename T>
std::pair<T, T> CheckRangeR(T Min, T Max) {
    if (Max < Min) return std::pair<T, T>(Max, Min);
}

template <typename T, typename U>
bool TypeCompare(const U&) {
    return std::same_as<std::decay_t<U>, T>;
}

#define MakeAliasFunction(Original, Aliased)    \
                                                \
template <typename... Args>                     \
decltype(auto) Aliased(Args&&... args) {        \
    return std::invoke(                         \
        Original,                               \
        std::forward<Args>(args)...             \
    );                                          \
}

// inline constexpr auto Aliased =                \
// [](auto&&... args) -> decltype(auto) {         \
//     return Original(                           \
//         std::forward<decltype(args)>(args)...  \
//     );                                         \
// }

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
#elif __has_include(<windows.h>) && defined(MSVC_DMGL)
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
