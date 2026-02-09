#pragma once

#include <cmath>
#include "Types.hpp"
#include "Casting.hpp"

namespace Tools::Round {
    double BankersRound(double x) {
        double intpart;
        double frac = std::modf(x, &intpart);

        if (std::fabs(frac) == 0.5) {
            return (Cast::scast<long long>(intpart) % 2 == 0)
                ? intpart
                : intpart + std::copysign(1.0, x);
        }
        return std::round(x);
    }

    template <Numbers T>
    T Round(const T value, const int digits) {
        static_assert(std::is_arithmetic_v<T>, "Round only supports numbers");

        if constexpr (std::is_integral_v<T>) {
            if (digits >= 0) return value;

            T factor = Cast::scast<T>(std::pow(10, -digits));
            return Cast::scast<T>(
                BankersRound(Cast::scast<double>(value) / factor) * factor
            );
        } else {
            double factor = std::pow(10.0, digits);
            return Cast::scast<T>(
                BankersRound(Cast::scast<double>(value) * factor) / factor
            );
        }
    }
}
