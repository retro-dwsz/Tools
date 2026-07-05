#pragma once

#ifndef TOOLS_EXPERIMENTAL_VNUM_FN_OPR_HPP
#define TOOLS_EXPERIMENTAL_VNUM_FN_OPR_HPP

#include "VNum_base.hpp"

/* Basic Operators */
namespace ToolsExperimental {
    VNum& VNum::Add(const VNum& Other){
        *this = *this + Other;
        return *this;
    }

    VNum& VNum::Sub(const VNum& Other){
        *this = *this - Other;
        return *this;
    }

    VNum& VNum::Mul(const VNum& Other){
        *this = *this * Other;
        return *this;
    }

    VNum& VNum::Div(const VNum& Other){
        *this = *this / Other;
        return *this;
    }
}

/* Advanced Operators */
/* Power to Nth */
namespace ToolsExperimental {
    namespace Detail {
        // Helper: Check if VNum is a pure integer (no decimal part)
        inline bool IsPureInteger(const VNum& Num) {
            return Num.GetData().second.empty();
        }

        // Helper: Convert VNum magnitude to i64 for loop control (safe for reasonable exponents)
        // Returns -1 if too large or negative
        inline i64 ToI64Safe(const VNum& Num) {
            if (Num.GetIsNegative()) return -1;
            if (Num.GetData().first.size() > 19) return -1; // Overflow guard for i64

            i64 Val = 0;
            for (u8 d : Num.GetData().first) {
                Val = Val * 10 + d;
            }
            return Val;
        }
    }

    VNum& VNum::Pow(const VNum& Other) {
        // Handle base cases
        if (Other.DataInt.size() == 1 && Other.DataInt[0] == 0 && Other.DataDec.empty()) {
            // Any number ^ 0 = 1
            this->DataInt = {1};
            this->DataDec.clear();
            this->IsNegative = false;
            return *this;
        }

        if (this->DataInt.size() == 1 && this->DataInt[0] == 0 && this->DataDec.empty()) {
            // 0 ^ positive = 0
            if (!Other.IsNegative) {
                return *this;
            }
            // 0 ^ negative is undefined (infinity), return 0 as safe default
            this->DataInt = {0};
            this->DataDec.clear();
            return *this;
        }

        // Check if exponent is a pure integer
        if (!Detail::IsPureInteger(Other)) {
            // TODO: Implement fractional power via exp(ln(x)*y) when Ln/Exp are ready
            // For now, return 0 or keep current value to indicate unsupported operation
            return *this;
        }

        i64 ExpVal = Detail::ToI64Safe(Other);
        if (ExpVal < 0) {
            // Negative integer exponent: A^-n = 1 / (A^n)
            // We can calculate positive power first, then divide
            VNum positive_exp = Other;
            positive_exp.IsNegative = false;

            VNum temp_base = *this;
            temp_base.Pow(positive_exp); // Recursive call for positive part

            // Now do 1 / temp_base
            VNum one("1");
            *this = one / temp_base;
            return *this;
        }

        // Exponentiation by Squaring for positive integer exponent
        VNum Result("1");
        VNum Base = *this;
        i64 NResult = ExpVal;

        while (NResult > 0) {
            if (NResult % 2 == 1) {
                Result = Result * Base;
            }
            Base = Base * Base;
            NResult /= 2;
        }

        *this = Result;
        return *this;
    }
}

/* Root to Nth power */
namespace ToolsExperimental {
    namespace Detail {
        // Helper: Generate 10^k as VNum (e.g., k=2 -> 100)
        inline VNum PowerOf10(idx k) {
            VNum Result;
            Result.GetData().first.clear();
            Result.GetData().second.clear();
            // Result.IsNegative = false;
            if (k == 0) {
                Result.GetData().first.push_back(1);
            } else {
                Result.GetData().first.push_back(1);
                for (idx i = 0; i < k; ++i) Result.GetData().first.push_back(0);
            }
            return Result;
        }
    }

    VNum& VNum::Root(const VNum& Power) {
        // Handle root of zero
        if (this->DataInt.size() == 1 && this->DataInt[0] == 0 && this->DataDec.empty()) {
            return *this;
        }

        // Power must be a positive pure integer for this real-domain algorithm
        i64 n = Detail::ToI64Safe(Power);
        if (n <= 0) {
            // Unsupported: fractional, negative, or zero power (requires exp/ln)
            return *this;
        }

        if (n == 1) {
            return *this; // 1st root is the number itself
        }

        // Cannot take even root of negative number in real domain (results in complex)
        if (this->IsNegative && (n % 2 == 0)) {
            this->DataInt = {0};
            this->DataDec.clear();
            this->IsNegative = false;
            return *this;
        }

        bool was_negative = this->IsNegative;
        this->IsNegative = false; // Work with absolute magnitude

        VNum S = *this;
        VNum N_native(n);
        VNum N_minus_1(n - 1);

        // Smart Initial Guess: 10^(integer_digits / n)
        // This provides a very close starting point for rapid convergence
        idx guess_exp = S.DataInt.size() / n;
        VNum x = Detail::PowerOf10(guess_exp);
        VNum x_next;

        // Newton-Raphson converges quadratically.
        // 100 iterations is more than enough for thousands of digits of precision.
        const idx MAX_ITER = 100;

        // Temporarily increase DecimalLimit for intermediate calculations
        // to prevent precision truncation errors from accumulating.
        idx original_limit = this->DecimalLimit;
        idx calc_limit = original_limit + 20; // 20 guard digits

        S.DecimalLimit = calc_limit;
        N_native.DecimalLimit = calc_limit;
        N_minus_1.DecimalLimit = calc_limit;

        for (idx i = 0; i < MAX_ITER; ++i) {
            // 1. Calculate x_k^{n-1}
            VNum x_pow = x;
            x_pow.DecimalLimit = calc_limit;
            x_pow.Pow(N_minus_1);

            // 2. Calculate S / x_k^{n-1}
            VNum term2 = S / x_pow;

            // 3. Calculate (n-1) * x_k
            VNum term1 = x * N_minus_1;

            // 4. Numerator = term1 + term2
            VNum numerator = term1 + term2;
            numerator.DecimalLimit = calc_limit;

            // 5. x_{k+1} = numerator / n
            x_next = numerator / N_native;
            x_next.DecimalLimit = calc_limit;

            // Convergence check: if x hasn't changed within our working precision
            if (x_next.DataInt == x.DataInt && x_next.DataDec == x.DataDec) {
                x = x_next;
                break;
            }

            x = x_next;
        }

        *this = x;
        this->IsNegative = was_negative; // Restore sign (valid for odd roots of negative numbers)
        this->ApplyDecimalLimit(original_limit); // Restore original limit and truncate guard digits

        return *this;
    }
}

/* Root to 2nd and 3rd power */
namespace ToolsExperimental {
    VNum& VNum::Sqrt(){
        return this->Root(2);
    }

    VNum& VNum::Cbrt(){
        return this->Root(3);
    }

}

#endif