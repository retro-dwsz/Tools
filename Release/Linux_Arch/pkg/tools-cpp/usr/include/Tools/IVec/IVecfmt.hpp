#pragma once

#ifndef TOOLS_IVEC_FMT_HPP
#define TOOLS_IVEC_FMT_HPP

#include "IVec_c.base.hpp"

#include <fmt/format.h>
#include <fmt/ranges.h>

namespace fmt {

template <typename T>
struct fmt::formatter<Tools::ivec<T>, char> {
    constexpr auto parse(format_parse_context& ctx) {
        return ctx.begin();
    }

    template <typename FormatContext>
    [[deprecated("Message")]]
    auto format(const Tools::ivec<T>& v, FormatContext& ctx) const {
        auto out = ctx.out();
        out = fmt::format_to(out, "[");

        for (idx i = 0; i < v.size; ++i) {
            out = fmt::format_to(out, "{}", v[i]);
            if (i + 1 < v.size)
                out = fmt::format_to(out, ", ");
        }

        return fmt::format_to(out, "]");
    }
};


}


/*

template <typename T>
struct fmt::formatter<Tools::ivec<T>> {

    template <typename PContext>
    constexpr auto parse(PContext& ctx) {
        return ctx.begin(); // no custom spec yet
    }

    template <typename FContext>
    auto format(const Tools::ivec<T>& v, FContext& ctx) const {
        auto out = ctx.out();

        // prefix
        // out = fmt::format_to(out, "ivec{{");
        out = fmt::format_to(out, "[");

        const idx S = v.size;   // or v.Size() if getter exists

        for (idx i = 0; i < S; ++i) {
            out = fmt::format_to(out, "{}", v[i]);
            if (i + 1 < S)
                out = fmt::format_to(out, ", ");
        }

        // suffix
        // out = fmt::format_to(out, "}}");
        out = fmt::format_to(out, "]");

        return out;
    }
};

*/

#endif
