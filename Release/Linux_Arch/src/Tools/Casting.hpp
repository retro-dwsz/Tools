#pragma once

#ifndef TOOLS_CASTING_HPP
#define TOOLS_CASTING_HPP

// ------------------------------------------------------------
// Tools::Cast
// Lightweight casting helpers.
//
// Notes!
// - This is NOT replacement of system types
// - This file only pack long casting keywords
//
// Alias mapping:
//   static_cast      -> scast
//   dynamic_cast     -> dcast
//   const_cast       -> ccast
//   reinterpret_cast -> rcast
//   std::any_cast    -> acast
//
// Usage:
//   auto x = Tools::Cast::scast<double>(i);
//   auto p = Tools::Cast::dcast<Base*>(derived);
//   auto v = Tools::Cast::acast<int>(any_val);
//
// ------------------------------------------------------------

#include <any>
#include <utility>

namespace Tools::Cast {

    // scast<T>(value)
    //
    // Alias for static_cast.
    //
    // - Compile time conversion
    // - Can be evaluated on compile-time if you use constexpr
    // - Zero runtime overhead
    //
    // Used for:
    // - Numeric conversion
    // - Upcast/downcast non-polymorphic
    template <typename To, typename From>
    constexpr To scast(From&& value) noexcept {
        return static_cast<To>(std::forward<From>(value));
    }

    // dcast<T>(value)
    //
    // Alias for dynamic_cast.
    //
    // - ONLY for pointers and references
    // - Needs RTTI
    // - Runtime-only (not constexpr compatible)
    //
    // Used for:
    // - Downcast polymorphic which needs runtime checking
    template <typename To, typename From>
    To dcast(From&& value) {
        return dynamic_cast<To>(std::forward<From>(value));
    }

    // ccast<T>(value)
    //
    // Alias for const_cast.
    //
    // - Deletes/adds qualifier "const"
    // - Not changing base type
    //
    // WARNING:
    // - Deleting const from absolute const object will cause Undefined Behaviour
    template <typename To, typename From>
    constexpr To ccast(From&& value) noexcept {
        return const_cast<To>(std::forward<From>(value));
    }

    // rcast<T>(value)
    //
    // Alias for reinterpret_cast.
    //
    // - Bit-level cast
    // - Most dangerous
    // - Always for last resort
    //
    // Use ONLY if:
    // - You don't know memory layout
    // - No other safe alternatives
    template <typename To, typename From>
    constexpr To rcast(From&& value) noexcept {
        return reinterpret_cast<To>(std::forward<From>(value));
    }

    // acast<T>(std::any)
    //
    // Alias for std::any_cast.
    //
    // - Runtime checked
    // - Will throw std::bad_any_cast if type is wrong/bad
    template <typename To>
    To acast(const std::any& a) {
        return std::any_cast<To>(a);
    }
}

namespace Tools::Cast {
    // cast<T>(value)
    //
    // "One-door" casting API.
    //
    // Philosophy:
    // - Default to static_cast
    // - Not trying to be smart
    //
    // Note:
    // - This Function is intended to be simple
    // - If you need RTTI / const removal / bit cast,
    //   use scast / dcast / ccast / rcast
    template <typename To, typename From>
    constexpr To cast(From&& value) {
        return scast<To>(std::forward<From>(value));
    }
}

#ifdef FLAT_TOOLS_CAST
using Tools::Cast;
#endif

#endif