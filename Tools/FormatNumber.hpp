#pragma once

#ifndef TOOLS_FORMAT_NUMBER_HPP
#define TOOLS_FORMAT_NUMBER_HPP

#include "FeatureCheck.hpp"

#include "Types.hpp"

#include <iostream>
#include <cstdint>
#include <format>
#include <iomanip>
#include <cctype>
#include <cmath>

namespace Tools::FormatNumber {
    /* Internal Helper functions */
    namespace {
        template <Integer T>
        str static FormatIntegerPart(T value, char Separator, i32 GroupSize) {
            if (GroupSize <= 0) GroupSize = 3; // safety

            bool negative = false;
            if constexpr (std::signed_integral<T>) {
                if (value < 0) {
                    negative = true;
                    value = -value; // careful: avoid UB for INT_MIN? We'll assume it's handled or use unsigned logic
                }
            }

            str numStr = std::to_string(value);
            str result;

            i32 len = static_cast<i32>(numStr.length());
            i32 firstGroup = len % GroupSize;
            if (firstGroup == 0) firstGroup = GroupSize;

            // First group (may be shorter)
            result.append(numStr.begin(), numStr.begin() + firstGroup);

            // Remaining groups
            for (i32 i = firstGroup; i < len; i += GroupSize) {
                result += Separator;
                result.append(numStr.begin() + i, numStr.begin() + i + GroupSize);
            }

            if (negative) {
                result.insert(0, "-");
            }

            return result;
        }

        template <Float T>
        str static FormatFloat(T n, char Separator, char DecimalChar, i32 GroupSize) {
            if (GroupSize <= 0) GroupSize = 3;

            // Handle special cases
            if (std::isnan(n)) return "nan";
            if (std::isinf(n)) return n > 0 ? "inf" : "-inf";

            std::ostringstream oss;
            oss << std::fixed << std::setprecision(6) << n;
            str raw = oss.str();

            // Find decimal point
            size_t dotPos = raw.find('.');
            if (dotPos == str::npos) {
                // No decimal? Treat as integer
                return FormatIntegerPart(static_cast<long long>(n), Separator, GroupSize);
            }

            // Extract integer and fractional parts
            str intPartStr = raw.substr(0, dotPos);
            str fracPartStr = raw.substr(dotPos + 1);

            // Trim trailing zeros from fractional part
            fracPartStr.erase(fracPartStr.find_last_not_of('0') + 1, str::npos);

            // Format integer part (watch sign!)
            T intPartValue = (n >= 0) ? std::floor(n) : std::ceil(n);
            str formattedInt = FormatIntegerPart(static_cast<long long>(intPartValue), Separator, GroupSize);

            // Combine
            str result = formattedInt;
            if (!fracPartStr.empty()) {
                result += DecimalChar;
                result += fracPartStr;
            }

            return result;
        }
    }

    /* Defaults */
    /* For i8..i64 && u8..u64 */
    template <Integer T>
    str Format(const T n) {
        return FormatIntegerPart(n, '\'', 3);
    }

    /* for f32, f64, and fld */
    template <Float T>
    str Format(const T n) {
        return FormatFloat(n, '\'', '.', 3);
    }

    /* Customs */
    /* For i8..i64 && u8..u64 */
    template <Integer T>
    str Format(const T n, const char Separator, const i32 Digits) {
        return FormatIntegerPart(n, Separator, Digits);
    }

    /* for f32, f64, and fld */
    template <Float T>
    str Format(const T n, const char Separator, const i32 Digits) {
        return FormatFloat(n, Separator, '.', Digits); // default decimal is '.'
    }

    template <Float T>
    str Format(const T n, const char Separator, const char Decimal, const i32 Digits) {
        return FormatFloat(n, Separator, Decimal, Digits);
    }
}


namespace Tools::FormatNumber {
    void test(){
        vec<str> a = {
            /* i8..i64 */
            Format(i8{INT8_MAX}, '\'', 3), Format(i16{INT16_MAX}, '\'', 3), Format(i32{INT32_MAX}, '\'', 3), Format(i64{INT32_MAX}, '\'', 3),

            /* u8..u64 */
            Format(u8{INT8_MAX}, '\'', 3), Format(u16{INT16_MAX}, '\'', 3), Format(u32{INT32_MAX}, '\'', 3), Format(u64{INT32_MAX}, '\'', 3),

            /* f32, f64, fld */
            Format(f32{12'713.14}, '\'', ',', 3), Format(f64{12'713.14}, '\'', ',', 3), Format(fld{12'713.14}, '\'', ',', 3),
        };
        std::cout << std::format(R"(
            i8:  {}
            i16: {}
            i32: {}
            i64: {}

            u8:  {}
            u16: {}
            u32: {}
            u64: {}

            f32: {}
            f64: {}
            fld: {}
            )",
            a[0], a[1], a[2], a[3],
            a[4], a[5], a[6], a[7],
            a[8], a[9], a[10]
        );
    }
}

#endif
