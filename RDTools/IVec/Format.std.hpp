/* ---- Begin: IVec/Format.std.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_FORMAT_STD_HPP
#define TOOLS_IVEC_FORMAT_STD_HPP

#include "Base.Class.hpp"

// Formatter for std::format
// Inherit parse() from std::formatter<T> → supports {:.2f}, {:x}, etc.

/// @file Format.std.hpp
/// @brief Optional custom std::formatter for rdt::ivec<T>.
///
/// Provides format spec forwarding ({:.2f}, {:x}, etc.) for std::format.
/// Include this file only when you need spec forwarding beyond what
/// std::ranges provides by default.

#if __has_include(<format>) && defined(__cpp_lib_format)
#include <format>
template <typename T>
struct std::formatter<rdt::ivec<T>, char> : std::formatter<T> {
    template <typename FormatContext>
    auto format(const rdt::ivec<T>& v, FormatContext& ctx) const {
        auto out = ctx.out();
        out = std::format_to(out, "[");
        for (idx i = 0; i < v.size(); ++i) {
            if (i > 0) out = std::format_to(out, ", ");

            // Forward format spec to each element
            out = std::formatter<T, char>::format(v[i], ctx);
        }
        return std::format_to(out, "]");
    }
};
#endif

#endif

/* ---- End: IVec/Format.std.hpp ---- */
