#pragma once

#ifndef TOOLS_TYPES_BASE_HPP
#define TOOLS_TYPES_BASE_HPP

#include "../FeatureCheck.hpp"

#include "Common.hpp"

#include "Int.hpp"
#include "UInt.hpp"
#include "Float.hpp"

#include "String.hpp"
#include "Containers.hpp"
#include "Pointer.hpp"
#include "Memory.hpp"
#include "Time.hpp"

#include <type_traits>

template <typename T>
void CheckRange(T& Min, T& Max) {
    if (Max < Min) std::swap(Min, Max);
}

template <typename T>
std::pair<T, T> CheckRangeR(T Min, T Max) {
    if (Max < Min) return std::pair<T, T>(Max, Min);
}

// template <typename T1, typename T2>
// constexpr bool TypeCompare(const T1&) {
//     return std::is_same_v<T2, T1>;
// }

// template <typename T1, typename T2>
// constexpr bool TypeCompare(const T1&, const T2&) {
//     return std::is_same_v<T1, T2>;
// }

template <typename T1, typename T2>
constexpr bool TypeCompare = std::is_same_v<T1, T2>;


#define MakeAliasFunction(Original, Aliased)    \
                                                \
template <typename... Args>                     \
decltype(auto) Aliased(Args&&... args) {        \
    return std::invoke(                         \
        Original,                               \
        std::forward<Args>(args)...             \
    );                                          \
}

/* All types in Tools/Types/#.hpp only */
template <typename T, typename A, idx S>
concept ToolsTypes = OneOf<
    /* Signed Integers */
    i8, i16, i32, i64, sidx,

    /* Unsigned Integers */
    u8, u16, u32, u64, idx,

    /* Floating Points */
    f32, f64, fld,

    /* C Strings */
    cstr, cwstr, cstr16, cstr32,

    /* C++ Strings */
    str, strview, sstream, ostream,

    /* C++ String View */
    wstr, wstrview, wsstream, wostream,

    /* 16&32-bit Strings */
    str16, str16view,
    str32, str32view,

    /* Value Containers */
    vec<T>, arr<T, S>,
    map<T, A>, umap<T, A>,
    set<T>, uset<T>,
    pair<T, A>,
    initl<T>, span<T>,
    tuple<T>, list<T>,

    /* Type Containers */
    topt<T>, tvar<T>, texp<T, A>,

    /* C Pointers */
    ptr<T>,     // Pointer
    ptrcd<T>,   // Poniter to Contsant Data
    cptr<T>,    // Constant Pointer to Data
    cptrcd<T>,  // Constant Pointer to Constant Data
    i32p, u32p, // 32-bit Pointers

    /* C++ Smart Pointers */
    uptr<T>, sptr<T>, wptr<T>,

    /* Time Stamps */
    Tools::Time::Clock,
    Tools::Time::SClock,
    Tools::Time::HClock,
    Tools::Time::Units::ns,
    Tools::Time::Units::us,
    Tools::Time::Units::ms,
    Tools::Time::Units::sec,
    Tools::Time::Units::min,
    Tools::Time::Units::hrs,
    Tools::Time::Units::days,
    Tools::Time::Units::weeks,
    Tools::Time::Units::months
>;

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
