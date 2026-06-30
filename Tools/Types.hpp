#pragma once

#include "Types/Common.hpp"
#ifndef TOOLS_TYPES_HPP
#define TOOLS_TYPES_HPP

#include "Types/Base.hpp"

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
        u8, u16, u32, u64, sidx,
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
        i8, i16, i32, i64, sidx
    >;

    template <typename T>
    concept UnsigedInt = OneOf<T,
        u8, u16, u32, u64, idx
    >;

    // Native integers and floats
    template <typename T>
    concept NtvInteger = OneOf<T,
        i32, i64
    >;

    template <typename T>
    concept NtvFloat = OneOf<T,
        f32, f64
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
    concept PStr = OneOf<T,
        char, uchar, schar,
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
    concept StringViews = OneOf<T,
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