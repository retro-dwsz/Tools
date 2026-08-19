#pragma once

#ifndef TOOLS_TYPES_BASE_HPP
#define TOOLS_TYPES_BASE_HPP

#include "../FeatureCheck.hpp"

#include "Common.hpp"

#include "Int.hpp"
#include "Int.Fast.hpp"
#include "Int.Atomic.hpp"
#include "Int.Atomic.Fast.hpp"
#include "Int.Least.hpp"
#include "Int.Atomic.Least.hpp"

#include "UInt.hpp"
#include "UInt.Fast.hpp"
#include "UInt.Atomic.hpp"
#include "UInt.Atomic.Fast.hpp"
#include "UInt.Least.hpp"
#include "UInt.Atomic.Least.hpp"

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

// #define MakeAliasFunction(Original, Aliased)    \
//                                                 \
// template <typename... Args>                     \
// decltype(auto) Aliased(Args&&... args) {        \
//     return std::invoke(                         \
//         Original,                               \
//         std::forward<Args>(args)...             \
//     );                                          \
// }

// using ai8        = std::atomic_int8_t;
// using ai16       = std::atomic_int16_t;
// using ai32       = std::atomic_int32_t;
// using ai64       = std::atomic_int64_t;

// using au8        = std::atomic_uint8_t;
// using au16       = std::atomic_uint16_t;
// using au32       = std::atomic_uint32_t;
// using au64       = std::atomic_uint64_t;

/* All types in rdt/Types/#.hpp only */
template <typename T, typename T1, typename T2, idx S>
concept ToolsTypes = OneOf<T,
    /* Signed Integers */
    i8, i16, i32, i64, sidx,

    /* Fast Signed Integers */
    fi8, fi16, fi32, fi64,

    /* Atomic Signed Integers */
    ai8, ai16, ai32, ai64,

    /* Atomic Fast Signed Integers */
    afi8, afi16, afi32, afi64,

    /* Signed Integer with "at least" size */
    il8, il16, il32, il64,

    /* Atomic Signed Integer with "at least" size */
    ail8, ail16, ail32, ail64,

    /* Unsigned Integers */
    u8, u16, u32, u64, idx,

    /* Fast Unsigned Integers */
    fu8, fu16, fu32, fu64,

    /* Atomic Unsigned Integers */
    au8, au16, au32, au64,

    /* Atomic Fast Unsigned Integers */
    afu8, afu16, afu32, afu64,

    /* Unsiged Signed Integer with "at least" size */
    ul8, ul16, ul32, ul64,

    /* Atomic Unsiged Signed Integer with "at least" size */
    aul8, aul16, aul32, aul64,

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
    vec<T1>, arr<T1, S>,
    map<T1, T2>, umap<T1, T2>,
    set<T1>, uset<T1>,
    pair<T1, T2>,
    initl<T1>, span<T1>,
    tuple<T1>, list<T1>,

    /* Type Containers */
    topt<T1>, tvar<T1>, texp<T1, T2>,

    /* C Pointers */
    ptr<T1>,        // Pointer
    ptrcd<T1>,      // Poniter to Contsant Data
    cptr<T1>,       // Constant Pointer to Data
    cptrcd<T1>,     // Constant Pointer to Constant Data
    i32p, u32p,     // 32-bit Pointers

    /* C++ Smart Pointers */
    uptr<T1>, sptr<T1>, wptr<T1>,

    /* Time Stamps */
    rdt::Time::Clock,
    rdt::Time::SClock,
    rdt::Time::HClock,
    rdt::Time::Units::ns,
    rdt::Time::Units::us,
    rdt::Time::Units::ms,
    rdt::Time::Units::sec,
    rdt::Time::Units::min,
    rdt::Time::Units::hrs,
    rdt::Time::Units::days,
    rdt::Time::Units::weeks,
    rdt::Time::Units::months
>;

// /* All types in rdt/Types/#.hpp only with std::variant */
// template <typename T1, typename T2, idx S>
// const tvar<
//     /* Signed Integers */
//     i8, i16, i32, i64, sidx,
//
//     /* Unsigned Integers */
//     u8, u16, u32, u64, idx,
//
//     /* Floating Points */
//     f32, f64, fld,
//
//     /* C Strings */
//     cstr, cwstr, cstr16, cstr32,
//
//     /* C++ Strings */
//     str, strview, sstream, ostream,
//
//     /* C++ String View */
//     wstr, wstrview, wsstream, wostream,
//
//     /* 16&32-bit Strings */
//     str16, str16view,
//     str32, str32view,
//
//     /* Value Containers */
//     vec<T1>, arr<T1, S>,
//     map<T1, T2>, umap<T1, T2>,
//     set<T1>, uset<T1>,
//     pair<T1, T2>,
//     initl<T1>, span<T1>,
//     tuple<T1>, list<T1>,
//
//     /* Type Containers */
//     topt<T1>, tvar<T1>, texp<T1, T2>,
//
//     /* C Pointers */
//     ptr<T1>,     // Pointer
//     ptrcd<T1>,   // Poniter to Contsant Data
//     cptr<T1>,    // Constant Pointer to Data
//     cptrcd<T1>,  // Constant Pointer to Constant Data
//     i32p, u32p, // 32-bit Pointers
//
//     /* C++ Smart Pointers */
//     uptr<T1>, sptr<T1>, wptr<T1>,
//
//     /* Time Stamps */
//     rdt::Time::Clock,
//     rdt::Time::SClock,
//     rdt::Time::HClock,
//     rdt::Time::Units::ns,
//     rdt::Time::Units::us,
//     rdt::Time::Units::ms,
//     rdt::Time::Units::sec,
//     rdt::Time::Units::min,
//     rdt::Time::Units::hrs,
//     rdt::Time::Units::days,
//     rdt::Time::Units::weeks,
//     rdt::Time::Units::months
// > ToolsTypesVariant;

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
