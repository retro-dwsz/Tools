#pragma once

#include <cmath>
#include "Types.hpp"
#include "Casting.hpp"

namespace Tools::Round {
    f64 static BankersRound(f64 x) {
        f64 intpart;
        f64 frac = std::modf(x, &intpart);

        if (std::fabs(frac) == 0.5) {
            return (Cast::scast<long long>(intpart) % 2 == 0)
                ? intpart
                : intpart + std::copysign(1.0, x);
        }
        return std::round(x);
    }

    template <Float T>
    T Round(const T value, const i32 digits) {
        static_assert(std::is_arithmetic_v<T>, "Round only supports numbers");

        if constexpr (std::is_integral_v<T>) {
            if (digits >= 0) return value;

            T factor = Cast::scast<T>(std::pow(10, -digits));
            return Cast::scast<T>(
                BankersRound(Cast::scast<f64>(value) / factor) * factor
            );
        } else {
            f64 factor = std::pow(10.0, digits);
            return Cast::scast<T>(
                BankersRound(Cast::scast<f64>(value) * factor) / factor
            );
        }
    }
}

template f32 Tools::Round::Round(const f32 value, const i32 digits);
template f64 Tools::Round::Round(const f64 value, const i32 digits);
template fld Tools::Round::Round(const fld value, const i32 digits);
