#pragma once

#ifndef TOOLS_EXPERIMENTAL_VNUM_FMT_HPP
#define TOOLS_EXPERIMENTAL_VNUM_FMT_HPP

#if __has_include(<fmt/format.h>)

#include <fmt/format.h>

#include "VNum_Master.hpp"

// fmt::formatter specialization untuk VNum
template <>
struct fmt::formatter<ToolsExperimental::VNum> {
    constexpr auto parse(fmt::format_parse_context& ctx) {
        return ctx.begin(); // Tidak ada format spec khusus untuk sekarang
    }

    template <typename FormatContext>
    auto format(const ToolsExperimental::VNum& Num, FormatContext& ctx) const {
        return fmt::format_to(ctx.out(), "{}", Num.ToStr());
    }
};
#else
#pragma warning "No {fmt} library detected!"
#endif

#endif