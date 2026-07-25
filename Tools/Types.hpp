#pragma once

#ifndef TOOLS_TYPES_HPP
#define TOOLS_TYPES_HPP

#include "Types/Base.hpp"
#include "Types/Common.hpp"

/*
namespace Tools::Types {
    template <typename T>
    requires OneOf<T, f32, f64, fld>
    T Pi() {
        if constexpr (TypeCompare<T, f32>) {
            return T{3.1415926f};
        } else if constexpr (TypeCompare<T, f64>) {
            return T{3.14159265358979323};
        } else {
            return T{3.14159265358979323846264338327950L};
        }
    }

    template <typename T = f32>
    requires OneOf<T, f32, f64, fld>
    T E() {
        if constexpr (TypeCompare<T, f32> ) {
            return T{2.7182818f};
        } else if constexpr (TypeCompare<T, f64> ) {
            return T{2.71828182845904523};
        } else if constexpr (TypeCompare<T, fld> ) {
            return T{2.71828182845904523536028747135266L};
        }
    };

    void TestTypes() {
        auto a = Pi<f32>();
        auto b = E<f32>();
    }
}
*/

/* Basic Classification */
namespace Tools::Types {
    template <typename T>
    concept Primitive = OneOf<T,
        /* Signed Ints */
        i8, i16, i32, i64, idx,

        /* Unsigned Ints */
        u8, u16, u32, u64, sidx,

        /* Floating Points */
        f32, f64, fld,

        /* C Strings */
        cstr, cwstr, cstr16, cstr32
    >;
}

/* Segmented Classification */

/* Numbers */
namespace Tools::Types {
    // All in one
    template <typename T>
    concept Number = OneOf<T,
        i8, i16, i32, i64, idx,
        fi8, fi16, fi32, fi64,
        ai8, ai16, ai32, ai64,
        afi8, afi16, afi32, afi64,

        u8, u16, u32, u64, sidx,
        fu8, fu16, fu32, fu64,
        au8, au16, au32, au64,
        afu8, afu16, afu32, afu64,

        f32, f64, fld
    >;

    template <typename T>
    concept Integer = OneOf<T,
        /* Signed Ints */
        i8, i16, i32, i64, idx,

        /* Unsigned Ints */
        u8, u16, u32, u64, sidx
    >;

    template <typename T>
    concept Float = OneOf<T,
        f32, f64, fld
    >;

    template <typename T>
    concept SignedInt = OneOf<T,
        i8, i16, i32, i64, sidx,    // Native
        fi8, fi16, fi32, fi64,      // Fast
        ai8, ai16, ai32, ai64,      // Atomic
        afi8, afi16, afi32, afi64   // Atomic Fast
    >;

    template <typename T>
    concept UnsignedInt = OneOf<T,
        u8, u16, u32, u64, idx,     // Native
        fu8, fu16, fu32, fu64,      // Fast
        au8, au16, au32, au64,      // Atomic
        afu8, afu16, afu32, afu64   // Atomic Fast
    >;

    template <typename T>
    concept CSize = OneOf<T,
        idx, sidx
    >;

    // Commonlu used native integers and floats
    template <typename T>
    concept NtvInteger = OneOf<T,
        i32, i64
    >;

    template <typename T>
    concept NtvFloat = OneOf<T,
        f32, f64
    >;
}

// Extended Intger
namespace Tools::Types {
    template <typename T>
    concept ExtNum = OneOf<T,
        /* Fast Signed Integers */
        fi8, fi16, fi32, fi64,

        /* Atomic Signed Integers */
        ai8, ai16, ai32, ai64,

        /* Atomic Fast Signed Integers */
        afi8, afi16, afi32, afi64,
        /* Fast Unsigned Integers */
        fu8, fu16, fu32, fu64,

        /* Atomic Unsigned Integers */
        au8, au16, au32, au64,

        /* Atomic Fast Unsigned Integers */
        afu8, afu16, afu32, afu64
    >;
}

// Extended Intger types segmented
namespace Tools::Types {
    /* Fast Signed Integers */
    template <typename T>
    concept FInt = OneOf<T,
        fi8, fi16, fi32, fi64
    >;

    /* Atomic Signed Integers */
    template <typename T>
    concept AInt = OneOf<T,
        ai8, ai16, ai32, ai64
    >;

    /* Atomic Fast Signed Integers */
    template <typename T>
    concept AFInt = OneOf<T,
        afi8, afi16, afi32, afi64
    >;

    /* Fast Unsigned Integers */
    template <typename T>
    concept FUInt = OneOf<T,
        fu8, fu16, fu32, fu64
    >;

    /* Atomic Unsigned Integers */
    template <typename T>
    concept AUInt = OneOf<T,
        au8, au16, au32, au64
    >;

    /* Atomic Fast Unsigned Integers */
    template <typename T>
    concept AFUInt = OneOf<T,
        afu8, afu16, afu32, afu64
    >;
}

/* Strings */
namespace Tools::Types {
    template <typename T>
    concept AllString = OneOf<T,
        /* C++ Strings */
        str, strview, sstream, ostream,

        /* C++ String View */
        wstr, wstrview, wsstream, wostream,

        /* Wider Strings */
        str16, str16view, str32, str32view
    >;

    template <typename T>
    concept CPStr = OneOf<T,
        char, u_char, s_char,
        wchar, char16, char32
    >;

    template <typename T>
    concept CString = OneOf<T,
        cstr, cwstr, cstr16, cstr32
    >;

    /* C++ Basic Strings */
    template <typename T>
    concept String = OneOf<T,
        str, strview, sstream, ostream
    >;

    /* C++ Wide Strings */
    template <typename T>
    concept WString = OneOf<T,
        wstr, wstrview, wsstream, wostream
    >;

    /* C++ Wider Strings */
    template <typename T>
    concept XString = OneOf<T,
        str16, str16view,
        str32, str32view
    >;

    /* String views */
    template <typename T>
    concept StringView = OneOf<T,
        strview,    // Standard
        wstrview,   // Wide
        str16view,  // 16-bit
        str32view   // 32-bit
    >;
}

/* Containers */
namespace Tools::Types {
    template <typename T1, typename T2, const idx S>
    concept VContainter = OneOf<T1,
        vec<T1>, arr<T1, S>,
        map<T1, T2>, umap<T1, T2>,
        set<T1>, uset<T1>,
        pair<T1, T2>,
        initl<T1>, span<T1>,
        tuple<T1>, list<T1>
    >;

    template <typename T, typename E>
    concept TContainer = OneOf<T,
        topt<T>, tvar<T>, texp<T, E>
    >;

    template <typename T>
    concept GContainer = std::ranges::range<T>;
}

/* Pointers */
namespace Tools::Types {
    template <typename T>
    concept Pointer = OneOf<T,
        /* C Pointers */
        ptr<T>, ptrcd<T>, cptr<T>, cptrcd<T>,

        /* Fixed 32-bit Pointer */
        i32p, u32p,

        /* C++ Smart Pointers */
        uptr<T>, sptr<T>, wptr<T>
    >;

    template <typename T>
    concept CPtr = OneOf<T,
        ptr<T>, ptrcd<T>, cptr<T>, cptrcd<T>,
        i32p, u32p
    >;

    template <typename T>
    concept CPPSPtr = OneOf<T,
        uptr<T>, sptr<T>, wptr<T>
    >;
}

/* For Tools.Time */
namespace Tools::Types {
    template <typename T>
    concept TimeClock = OneOf<T,
        Tools::Time::Clock,
        Tools::Time::SClock,
        Tools::Time::HClock
    >;

    template <typename T>
    concept TimeUnit = OneOf<T,
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
}

namespace Tools::Types {
    template <typename T>
    concept Ref = OneOf<T, T&, const T&>;
}

#endif