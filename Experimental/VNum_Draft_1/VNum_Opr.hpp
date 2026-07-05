#pragma once

#ifndef TOOLS_EXPERIMENTAL_VNUM_OPR_HPP
#define TOOLS_EXPERIMENTAL_VNUM_OPR_HPP

#include "VNum_base.hpp"

#include <algorithm>

// PRIVATE HELPER IMPLEMENTATIONS
namespace ToolsExperimental {
    // Compare two magnitude vectors (MSD-first)
    // Returns: -1 if a < b, 0 if a == b, +1 if a > b
    int VNum::CompareMagnitudes(const vec<u8>& A, const vec<u8>& B) {
        if (A.size() != B.size()) {
            return (A.size() < B.size()) ? -1 : 1;
        }
        for (idx i = 0; i < A.size(); ++i) {
            if (A[i] != B[i]) {
                return (A[i] < B[i]) ? -1 : 1;
            }
        }
        return 0;
    }

    // Unsigned addition of two MSD-first digit vectors
    // Result is also MSD-first
    vec<u8> VNum::AddMagnitudes(const vec<u8>& A, const vec<u8>& B) {
        vec<u8> result;
        u8 carry = 0;

        // Process from LSD to MSD
        auto it_a = A.rbegin();
        auto it_b = B.rbegin();

        while (it_a != A.rend() || it_b != B.rend() || carry > 0) {
            u8 da = (it_a != A.rend()) ? *it_a++ : 0;
            u8 db = (it_b != B.rend()) ? *it_b++ : 0;

            u16 sum = static_cast<u16>(da) + static_cast<u16>(db) + carry;
            result.push_back(static_cast<u8>(sum % 10));
            carry = static_cast<u8>(sum / 10);
        }

        // Result was built LSD-first, reverse to MSD-first
        std::ranges::reverse(result);
        return result;
    }

    // Unsigned subtraction: assumes A >= B (magnitude)
    // Result is MSD-first, normalized (no leading zeros except single 0)
    vec<u8> VNum::SubMagnitudes(const vec<u8>& A, const vec<u8>& B) {
        vec<u8> result;
        i16 borrow = 0;

        auto it_a = A.rbegin();
        auto it_b = B.rbegin();

        while (it_a != A.rend()) {
            i16 da = static_cast<i16>(*it_a++);
            i16 db = (it_b != B.rend()) ? static_cast<i16>(*it_b++) : 0;

            i16 diff = da - db - borrow;
            if (diff < 0) {
                diff += 10;
                borrow = 1;
            } else {
                borrow = 0;
            }
            result.push_back(static_cast<u8>(diff));
        }

        // Reverse to MSD-first
        std::ranges::reverse(result);

        // Normalize: remove leading zeros
        idx first_non_zero = 0;
        while (first_non_zero < result.size() && result[first_non_zero] == 0) {
            first_non_zero++;
        }
        if (first_non_zero > 0) {
            result.erase(result.begin(), result.begin() + first_non_zero);
        }
        if (result.empty()) {
            result.push_back(0);
        }

        return result;
    }

    // Align decimals of two VNums into separate int/dec vectors
    void VNum::AlignDecimals(
        const VNum& A, const VNum& B,
        vec<u8>& a_int, vec<u8>& a_dec,
        vec<u8>& b_int, vec<u8>& b_dec
    ) {
        a_int = A.DataInt;
        a_dec = A.DataDec;
        b_int = B.DataInt;
        b_dec = B.DataDec;

        // Pad shorter decimal with trailing zeros
        if (a_dec.size() < b_dec.size()) {
            a_dec.resize(b_dec.size(), 0);
        } else if (b_dec.size() < a_dec.size()) {
            b_dec.resize(a_dec.size(), 0);
        }

        // Pad shorter integer with leading zeros
        if (a_int.size() < b_int.size()) {
            vec<u8> padded(b_int.size() - a_int.size(), 0);
            padded.insert(padded.end(), a_int.begin(), a_int.end());
            a_int = std::move(padded);
        } else if (b_int.size() < a_int.size()) {
            vec<u8> padded(a_int.size() - b_int.size(), 0);
            padded.insert(padded.end(), b_int.begin(), b_int.end());
            b_int = std::move(padded);
        }
    }
}

// PUBLIC OPERATOR IMPLEMENTATIONS
namespace ToolsExperimental {
    // Addition
    VNum VNum::operator+(const VNum& Other) const {
        VNum Result;
        idx Limit = std::max(this->DecimalLimit, Other.DecimalLimit);

        // 1. SAME SIGN: Add magnitudes, keep sign
        if (this->IsNegative == Other.IsNegative) {
            vec<u8> a_int, a_dec, b_int, b_dec;
            AlignDecimals(*this, Other, a_int, a_dec, b_int, b_dec);

            Result.DataDec = AddMagnitudes(a_dec, b_dec);

            idx MaxDec = std::max(a_dec.size(), b_dec.size());
            u8 IntCarry = 0;
            if (Result.DataDec.size() > MaxDec) {
                IntCarry = Result.DataDec[0];
                Result.DataDec.erase(Result.DataDec.begin());
            }

            vec<u8> CarryVec = (IntCarry > 0) ? vec<u8>{IntCarry} : vec<u8>{0};
            vec<u8> IntSum = AddMagnitudes(a_int, b_int);
            if (IntCarry > 0) {
                IntSum = AddMagnitudes(IntSum, CarryVec);
            }
            Result.DataInt = IntSum;
            Result.IsNegative = this->IsNegative;
        }
        // 2. DIFFERENT SIGNS: Subtract smaller from larger
        else {
            vec<u8> a_int, a_dec, b_int, b_dec;
            AlignDecimals(*this, Other, a_int, a_dec, b_int, b_dec);

            idx int_len = a_int.size(); // Panjang integer sudah pasti sama setelah di-align

            // Gabungkan Int dan Dec menjadi satu vektor magnitude utuh
            vec<u8> mag_a = a_int;
            mag_a.insert(mag_a.end(), a_dec.begin(), a_dec.end());

            vec<u8> mag_b = b_int;
            mag_b.insert(mag_b.end(), b_dec.begin(), b_dec.end());

            int cmp = CompareMagnitudes(mag_a, mag_b);

            if (cmp == 0) {
                // Magnitude sama persis tapi beda tanda (misal 5 + -5) -> Hasilnya 0
                Result.DataInt = {0};
                Result.DataDec.clear();
                Result.IsNegative = false;
            } else {
                vec<u8> larger_mag, smaller_mag;
                bool result_negative;

                // Tentukan mana yang lebih besar dan apa tanda hasilnya
                if (cmp > 0) {
                    larger_mag = mag_a;
                    smaller_mag = mag_b;
                    result_negative = this->IsNegative;
                } else {
                    larger_mag = mag_b;
                    smaller_mag = mag_a;
                    result_negative = Other.IsNegative;
                }

                // Reduce magnitude (leading zero on result has striped)
                vec<u8> sub_res = SubMagnitudes(larger_mag, smaller_mag);

                // The padding trci: Kembalikan ukuran ke semula agar posisi koma tidak geser
                vec<u8> padded_sub(larger_mag.size() - sub_res.size(), 0);
                padded_sub.insert(padded_sub.end(), sub_res.begin(), sub_res.end());

                // Split kembali ke Int dan Dec berdasarkan int_len
                Result.DataInt.assign(padded_sub.begin(), padded_sub.begin() + int_len);
                Result.DataDec.assign(padded_sub.begin() + int_len, padded_sub.end());
                Result.IsNegative = result_negative;

                // Normalisasi DataInt (Hapus leading zeros sisa padding)
                idx first_non_zero = 0;
                while (first_non_zero < Result.DataInt.size() && Result.DataInt[first_non_zero] == 0) {
                    first_non_zero++;
                }
                if (first_non_zero > 0) {
                    Result.DataInt.erase(Result.DataInt.begin(), Result.DataInt.begin() + first_non_zero);
                }
                if (Result.DataInt.empty()) {
                    Result.DataInt.push_back(0);
                }
            }
        }

        // 3. FINAL CLEANUP
        Result.ApplyDecimalLimit(Limit);

        // Handle -0
        if (Result.DataInt.size() == 1 && Result.DataInt[0] == 0 && Result.DataDec.empty()) {
            Result.IsNegative = false;
        }

        return Result;
    }

    // Subtraction: a - b == a + (-b)
    VNum VNum::operator-(const VNum& Other) const {
        VNum NegOther = Other;
        NegOther.IsNegative = !Other.IsNegative;
        NegOther.DecimalLimit = this->DecimalLimit;
        return *this + NegOther;
    }
}

/* Multiply stuffs */
namespace ToolsExperimental {
    // Private Helpers for Multiplication
    vec<u8> VNum::MulByDigit(const vec<u8>& Mag, u8 Digit) {
        if (Digit == 0) return {0};
        vec<u8> Result;
        u8 Carry = 0;
        for (auto it = Mag.rbegin(); it != Mag.rend(); ++it) {
            u16 prod = static_cast<u16>(*it) * Digit + Carry;
            Result.push_back(static_cast<u8>(prod % 10));
            Carry = static_cast<u8>(prod / 10);
        }
        if (Carry > 0) Result.push_back(Carry);
        std::ranges::reverse(Result);
        return Result;
    }

    vec<u8> VNum::AddShifted(const vec<u8>& Acc, const vec<u8>& Partial, idx Shift) {
        // Pad partial with 'Shift' zeros at the end (right side = lower significance in MSD-first? NO!)
        // In MSD-first, shifting LEFT means appending zeros to the RIGHT
        // Actually for grade-school: partial[i] is shifted i positions from right
        // So we need to add zeros to the RIGHT of partial for LSD-aligned addition
        // But since we process B from LSD, shift increases each iteration

        vec<u8> ShiftedPartial = Partial;
        // Append Shift zeros to the right (these are less significant digits)
        // Wait - in MSD-first representation, appending to right = adding less significant digits
        // For grade-school multiply processing B from LSD:
        //   digit at position p from right produces partial that needs p trailing zeros
        // But trailing zeros in MSD-first = appended at end
        ShiftedPartial.resize(ShiftedPartial.size() + Shift, 0);

        return AddMagnitudes(Acc, ShiftedPartial);
    }

    // Public Operator
    VNum VNum::operator*(const VNum& Other) const {
        VNum Result;
        idx Limit = std::max(this->DecimalLimit, Other.DecimalLimit);

        // Determine Result sign
        Result.IsNegative = (this->IsNegative != Other.IsNegative);

        // Combine int+dec into flat magnitude for both operands
        vec<u8> MagA = this->DataInt;
        MagA.insert(MagA.end(), this->DataDec.begin(), this->DataDec.end());

        vec<u8> MagB = Other.DataInt;
        MagB.insert(MagB.end(), Other.DataDec.begin(), Other.DataDec.end());

        // Total decimal digits in Result
        idx TotalDec = this->DataDec.size() + Other.DataDec.size();

        // Grade-school multiplication: iterate B from LSD
        vec<u8> Accumulator = {0};
        idx ShiftCount = 0;

        vec<u8> Partial{};
        for (auto it = MagB.rbegin(); it != MagB.rend(); ++it) {
            Partial = MulByDigit(MagA, *it);
            Accumulator = AddShifted(Accumulator, Partial, ShiftCount);
            ShiftCount++;
        }

        // Split Result into Int and Dec based on total_dec
        if (TotalDec == 0 || Accumulator.size() <= TotalDec) {
            // All digits are decimal (or no decimal)
            if (Accumulator.size() <= TotalDec) {
                // Pad with leading zeros for integer part
                Result.DataInt = {0};
                vec<u8> padded(TotalDec - Accumulator.size(), 0);
                padded.insert(padded.end(), Accumulator.begin(), Accumulator.end());
                Result.DataDec = padded;
            } else {
                Result.DataInt = {0};
                Result.DataDec = Accumulator;
            }
        } else {
            idx int_len = Accumulator.size() - TotalDec;
            Result.DataInt.assign(Accumulator.begin(), Accumulator.begin() + int_len);
            Result.DataDec.assign(Accumulator.begin() + int_len, Accumulator.end());
        }

        // Normalize
        idx fnz = 0;
        while (fnz < Result.DataInt.size() && Result.DataInt[fnz] == 0) fnz++;
        if (fnz > 0) Result.DataInt.erase(Result.DataInt.begin(), Result.DataInt.begin() + fnz);
        if (Result.DataInt.empty()) Result.DataInt.push_back(0);

        Result.ApplyDecimalLimit(Limit);

        if (Result.DataInt.size() == 1 && Result.DataInt[0] == 0 && Result.DataDec.empty()) {
            Result.IsNegative = false;
        }

        return Result;
    }
}

/* Division stuffs */

namespace ToolsExperimental {
    bool VNum::TrySubtract(vec<u8>& Remainder, const vec<u8>& Divisor) {
        if (CompareMagnitudes(Remainder, Divisor) < 0) return false;
        Remainder = SubMagnitudes(Remainder, Divisor);
        return true;
    }

    VNum VNum::operator/(const VNum& Other) const {
        // ⚠️ Division by zero check
        bool other_is_zero = (Other.DataInt.size() == 1 && Other.DataInt[0] == 0 && Other.DataDec.empty());
        if (other_is_zero) {
            // You could throw an exception here
            // For now, return 0 as safe default
            return VNum();
        }

        VNum Result;
        idx Limit = std::max(this->DecimalLimit, Other.DecimalLimit);
        Result.IsNegative = (this->IsNegative != Other.IsNegative);

        // Flatten both to pure integer magnitudes
        vec<u8> dividend = this->DataInt;
        dividend.insert(dividend.end(), this->DataDec.begin(), this->DataDec.end());

        vec<u8> divisor = Other.DataInt;
        divisor.insert(divisor.end(), Other.DataDec.begin(), Other.DataDec.end());

        // Adjust for decimal places:
        // dividend has this->DataDec.size() implicit decimals
        // divisor has Other.DataDec.size() implicit decimals
        // Result should have (dividend_dec - divisor_dec) implicit decimals
        // But we'll compute as integers and set scale afterward
        i64 scale_diff = static_cast<i64>(this->DataDec.size()) - static_cast<i64>(Other.DataDec.size());

        // Long division
        vec<u8> quotient;
        vec<u8> remainder = {0};

        // Process each digit of dividend
        for (u8 digit : dividend) {
            // Bring down next digit: remainder = remainder * 10 + digit
            // Multiply remainder by 10 (shift left in base-10)
            // Simple approach: append digit and normalize
            if (remainder.size() == 1 && remainder[0] == 0) {
                remainder = {digit};
            } else {
                remainder.push_back(digit);
                // Remove any accidental leading zeros
                while (remainder.size() > 1 && remainder[0] == 0) {
                    remainder.erase(remainder.begin());
                }
            }

            // Find how many times divisor fits into remainder (0-9)
            u8 q_digit = 0;
            while (TrySubtract(remainder, divisor)) {
                q_digit++;
                if (q_digit >= 9) break; // Safety: max single digit quotient
            }
            quotient.push_back(q_digit);
        }

        // Continue for decimal places up to DecimalLimit
        idx dec_digits_produced = 0;
        idx target_dec = (scale_diff >= 0) ? static_cast<idx>(scale_diff) : 0;
        // We need extra decimal digits beyond natural scale
        idx extra_needed = Limit;

        while (dec_digits_produced < extra_needed) {
            // Bring down 0
            if (remainder.size() == 1 && remainder[0] == 0) {
                remainder = {0};
            } else {
                remainder.push_back(0);
                while (remainder.size() > 1 && remainder[0] == 0) {
                    remainder.erase(remainder.begin());
                }
            }

            u8 q_digit = 0;
            while (TrySubtract(remainder, divisor)) {
                q_digit++;
                if (q_digit >= 9) break;
            }
            quotient.push_back(q_digit);
            dec_digits_produced++;
        }

        // Now split quotient into Int and Dec
        // Natural integer digits = quotient.size() - target_dec - extra_needed...
        // Actually simpler: integer part length = original dividend_int_len adjusted by scale
        idx natural_int_len = this->DataInt.size();
        if (scale_diff < 0) {
            // Divisor had more decimals, so result gains integer digits
            natural_int_len += static_cast<idx>(-scale_diff);
        } else if (scale_diff > 0) {
            natural_int_len -= static_cast<idx>(scale_diff);
            if (natural_int_len == 0) natural_int_len = 1; // At least one digit
        }

        // Ensure quotient has enough digits
        while (quotient.size() < natural_int_len + extra_needed) {
            quotient.insert(quotient.begin(), 0);
        }

        if (natural_int_len >= quotient.size()) {
            Result.DataInt = quotient;
            Result.DataDec.clear();
        } else {
            Result.DataInt.assign(quotient.begin(), quotient.begin() + natural_int_len);
            Result.DataDec.assign(quotient.begin() + natural_int_len, quotient.end());
        }

        // Normalize Int
        idx fnz = 0;
        while (fnz < Result.DataInt.size() && Result.DataInt[fnz] == 0) fnz++;
        if (fnz > 0) Result.DataInt.erase(Result.DataInt.begin(), Result.DataInt.begin() + fnz);
        if (Result.DataInt.empty()) Result.DataInt.push_back(0);

        Result.ApplyDecimalLimit(Limit);

        if (Result.DataInt.size() == 1 && Result.DataInt[0] == 0 && Result.DataDec.empty()) {
            Result.IsNegative = false;
        }

        return Result;
    }
}

#endif