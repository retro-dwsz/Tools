/* ---- Begin: IVec/Format.fmt.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_FORMAT_FMT_HPP
#define TOOLS_IVEC_FORMAT_FMT_HPP

#include "Base.Class.hpp"

// Formatter for fmt::format
// Inherit parse() from std::formatter<T> → supports {:.2f}, {:x}, etc.

/// @file Format.fmt.hpp
/// @brief Optional custom fmt::formatter for rdt::ivec<T>.
///
/// Do NOT include this file together with <fmt/ranges.h> in the same
///    translation unit. They conflict due to SFINAE ambiguity.
///
/// Usage:
///   - For basic {} formatting: just use <fmt/ranges.h> (no custom formatter needed)
///   - For format spec forwarding ({:.2f}, {:x}, etc.): include THIS file instead
///
/// This formatter uses .begin()/.end() iterators, maintaining full flexibility
/// with any iterator-based algorithm or range adapter.

#if __has_include(<fmt/format.h>)
#include <fmt/format.h>
template <typename T>
struct fmt::formatter<rdt::ivec<T>, char> : fmt::formatter<T> {
    template <typename FormatContext>
    auto format(const rdt::ivec<T>& v, FormatContext& ctx) const {
        auto out = ctx.out();
        out = fmt::format_to(out, "[");
        for (idx i = 0; i < v.size(); ++i) {
            if (i > 0) out = fmt::format_to(out, ", ");

            // Forward format spec to each element via base class
            out = formatter<T>::format(v[i], ctx);
        }
        return fmt::format_to(out, "]");
    }
};
#endif

#endif

/* ---- End: IVec/Format.fmt.hpp ---- */
