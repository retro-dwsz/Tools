/* File:
 * Tools/Experimental/VNum.hpp
 */

#pragma once

#ifndef TOOLS_EXPERIMENTAL_VNUM_CTOR_HPP
#define TOOLS_EXPERIMENTAL_VNUM_CTOR_HPP

#include "VNum_base.hpp"

// 0. Helper
namespace ToolsExperimental {
    template <Integer I>
    idx GetLen(I Num) {
        if (Num == 0) return 1;
        idx Len = 0;
        using UT = std::make_unsigned_t<I>;
        UT AbsVal = (Num < 0) ? scast<UT>(-(Num + 1)) + 1u
                               : scast<UT>(Num);
        while (AbsVal > 0) {
            ++Len;
            AbsVal /= 10;
        }
        return Len;
    }

    template <Integer I>
    u8 GetDigitL(I Num, idx Pos = 1) {
        if (Pos == 0) Pos = 1;
        idx Len = GetLen(Num);
        if (Pos > Len) return 0;

        using UT = std::make_unsigned_t<I>;
        UT AbsVal = (Num < 0) ? scast<UT>(-(Num + 1)) + 1u
                               : scast<UT>(Num);

        UT Divisor = 1;
        for (idx i = 0; i < Len - Pos; ++i) Divisor *= 10;

        return scast<u8>((AbsVal / Divisor) % 10);
    }

    template <Integer I>
    u8 GetDigitR(I Num, idx Pos = 1) {
        if (Pos == 0) Pos = 1;

        using UT = std::make_unsigned_t<I>;
        UT AbsVal = (Num < 0) ? scast<UT>(-(Num + 1)) + 1u
                               : scast<UT>(Num);

        UT Divisor = 1;
        for (idx i = 1; i < Pos; ++i) Divisor *= 10;

        return scast<u8>((AbsVal / Divisor) % 10);
    }

    template <Float F>
    constexpr idx GetPrecision() {
        if constexpr (std::is_same_v<F, f32>) return 7;
        else if constexpr (std::is_same_v<F, f64>) return 17;
        else if constexpr (std::is_same_v<F, fld>) return 34;
        else return 17;
    }

    template <Float F>
    str FloatToStr(const F& Num) {
        constexpr idx Precision = GetPrecision<F>();
        return std::format("{:.{}g}", Num, Precision);
    }
}

namespace ToolsExperimental::Detail {

    // Split a u8 value into individual digits (e.g., 21 -> {2, 1}, 5 -> {5})
    inline void AppendDigits(vec<u8>& out, u8 val) {
        if (val == 0) {
            out.push_back(0);
            return;
        }
        vec<u8> temp;
        while (val > 0) {
            temp.push_back(val % 10);
            val /= 10;
        }
        // temp has digits in reverse order (LSD first), so we reverse it back
        for (auto it = temp.rbegin(); it != temp.rend(); ++it) {
            out.push_back(*it);
        }
    }

    // Flatten any iterable of u8 into a single flat vec<u8>
    template <typename Iterable>
    inline vec<u8> FlattenIterable(const Iterable& src) {
        vec<u8> result;
        for (auto val : src) {
            AppendDigits(result, scast<u8>(val));
        }
        return result;
    }

    // Core logic to populate DataInt and DataDec from flat raw digits
    inline void PopulateFromRawDigits(vec<u8>& DataInt, vec<u8>& DataDec, const vec<u8>& raw_digits, idx Dec) {
        DataInt.clear();
        DataDec.clear();

        if (raw_digits.empty()) {
            DataInt.push_back(0);
            return;
        }

        // Dec == 0 means all digits are integer
        idx int_len = (Dec == 0) ? raw_digits.size() : Dec;
        if (int_len > raw_digits.size()) {
            int_len = raw_digits.size();
        }

        for (idx i = 0; i < int_len; ++i) {
            DataInt.push_back(raw_digits[i]);
        }
        for (idx i = int_len; i < raw_digits.size(); ++i) {
            DataDec.push_back(raw_digits[i]);
        }

        // Normalize DataInt (Hapus Leading Zeros)
        idx first_non_zero = 0;
        while (first_non_zero < DataInt.size() && DataInt[first_non_zero] == 0) {
            first_non_zero++;
        }
        if (first_non_zero > 0) {
            DataInt.erase(DataInt.begin(), DataInt.begin() + first_non_zero);
        }
        if (DataInt.empty()) {
            DataInt.push_back(0);
        }

        // Normalize DataDec (Hapus Trailing Zeros)
        while (!DataDec.empty() && DataDec.back() == 0) {
            DataDec.pop_back();
        }
    }

    // Core logic for Nested Iterables WITHOUT Dec parameter
    // Assumes first inner element is Int, second is Dec
    template <typename NestedIterable>
    inline void PopulateNestedNoDec(vec<u8>& DataInt, vec<u8>& DataDec, const NestedIterable& Num) {
        DataInt.clear();
        DataDec.clear();

        if (Num.empty()) {
            DataInt.push_back(0);
            return;
        }

        DataInt = FlattenIterable(Num[0]);
        if (Num.size() > 1) {
            DataDec = FlattenIterable(Num[1]);
        }

        // Normalize DataInt
        idx first_non_zero = 0;
        while (first_non_zero < DataInt.size() && DataInt[first_non_zero] == 0) {
            first_non_zero++;
        }
        if (first_non_zero > 0) {
            DataInt.erase(DataInt.begin(), DataInt.begin() + first_non_zero);
        }
        if (DataInt.empty()) {
            DataInt.push_back(0);
        }

        // Normalize DataDec
        while (!DataDec.empty() && DataDec.back() == 0) {
            DataDec.pop_back();
        }
    }
}

// 1. From actual number
namespace ToolsExperimental {
    // 1. From Integer (Pure integer arithmetic, no FP)
    template <Integer I>
    VNum::VNum(const I& NtvNumber) {
        this->IsNegative = (NtvNumber < 0);

        if (NtvNumber == 0) {
            this->DataInt.push_back(0);
            return;
        }

        // Extract digits dari kiri ke kanan (MSD first)
        const idx Len = GetLen(NtvNumber);
        for (idx i = 1; i <= Len; i++) {
            this->DataInt.push_back(GetDigitL(NtvNumber, i));
        }
    }

    // 2. From Float (String conversion approach - round-trip safe)
    template <Float F>
    VNum::VNum(const F& NtvNumber) {
        this->IsNegative = (NtvNumber < 0);

        // Convert ke string dengan precision yang sesuai
        str StrVal = FloatToStr(NtvNumber);

        // Parse string
        bool AfterComma = false;
        bool InExponent = false;
        i64 Exponent = 0;

        for (char c : StrVal) {
            if (c == '-' || c == '+') {
                if (InExponent) {
                    // TODO: Handle exponent sign
                    continue;
                }
                continue; // Skip sign di awal (sudah dihandle IsNegative)
            }
            if (c == '.' || c == ',') {
                AfterComma = true;
                continue;
            }
            if (c == 'e' || c == 'E') {
                InExponent = true;
                continue;
            }
            if (c >= '0' && c <= '9') {
                u8 digit = scast<u8>(c - '0');
                if (InExponent) {
                    Exponent = Exponent * 10 + digit;
                    continue;
                }
                if (AfterComma) {
                    this->DataDec.push_back(digit);
                } else {
                    this->DataInt.push_back(digit);
                }
            }
        }

        // Handle scientific notation
        // TODO: Implement proper exponent handling
        // Untuk sekarang, abaikan exponent (asumsi fixed-point)

        // Edge case: jika DataInt kosong, set ke [0]
        if (this->DataInt.empty()) {
            this->DataInt.push_back(0);
        }
    }
}

// 2. From a string
namespace ToolsExperimental {

    // --- Constructor 1: Auto-detect Comma ---
    VNum::VNum(const str& Num, const char ScaleDelimiter) {
        this->IsNegative = false;
        this->DataInt.clear();
        this->DataDec.clear();

        vec<u8> RawDigits;
        bool HasComma = false;
        idx CommaIdx = 0;
        const char Comma = '.'; // Default comma untuk constructor ini

        // 1. Parsing & Filtering
        for (idx i = 0; i < Num.length(); ++i) {
            char c = Num[i];
            if (c == '-' && RawDigits.empty() && this->DataInt.empty()) {
                this->IsNegative = true;
            } else if (c >= '0' && c <= '9') {
                RawDigits.push_back(scast<u8>(c - '0'));
            } else if (c == Comma && !HasComma) {
                HasComma = true;
                CommaIdx = RawDigits.size(); // Posisi koma = jumlah digit sebelum koma
            } else if (c == ScaleDelimiter) {
                // Abaikan delimiter (misal: ' atau ,)
            }
        }

        // Edge case: string kosong atau tidak ada angka sama sekali
        if (RawDigits.empty()) {
            this->DataInt.push_back(0);
            return;
        }

        // 2. Tentukan batas Integer dan Decimal
        idx IntLen = HasComma ? CommaIdx : RawDigits.size();

        // 3. Distribusi ke DataInt dan DataDec
        for (idx i = 0; i < IntLen; ++i) {
            this->DataInt.push_back(RawDigits[i]);
        }
        for (idx i = IntLen; i < RawDigits.size(); ++i) {
            this->DataDec.push_back(RawDigits[i]);
        }

        // 4. Normalisasi DataInt (Hapus Leading Zeros)
        idx FirstNonZero = 0;
        while (FirstNonZero < this->DataInt.size() && this->DataInt[FirstNonZero] == 0) {
            FirstNonZero++;
        }
        if (FirstNonZero > 0) {
            this->DataInt.erase(this->DataInt.begin(), this->DataInt.begin() + FirstNonZero);
        }
        if (this->DataInt.empty()) {
            this->DataInt.push_back(0); // Sisakan satu angka 0 jika semuanya nol
        }

        // 5. Normalisasi DataDec (Hapus Trailing Zeros)
        while (!this->DataDec.empty() && this->DataDec.back() == 0) {
            this->DataDec.pop_back();
        }

        // 6. Handle Edge Case "-0"
        if (this->DataInt.size() == 1 && this->DataInt[0] == 0 && this->DataDec.empty()) {
            this->IsNegative = false;
        }
    }

    // --- Constructor 2: Manual Decimal Position (Dec) ---
    VNum::VNum(const str& Num, idx Dec, const char ScaleDelimiter, const char Comma) {
        this->IsNegative = false;
        this->DataInt.clear();
        this->DataDec.clear();

        vec<u8> RawDigits;

        // 1. Parsing & Filtering (Abaikan Comma & ScaleDelimiter)
        for (idx i = 0; i < Num.length(); ++i) {
            char c = Num[i];
            if (c == '-' && RawDigits.empty() && this->DataInt.empty()) {
                this->IsNegative = true;
            } else if (c >= '0' && c <= '9') {
                RawDigits.push_back(scast<u8>(c - '0'));
            } else if (c == Comma || c == ScaleDelimiter) {
                // Abaikan karena posisi koma akan di-override oleh parameter Dec
            }
        }

        if (RawDigits.empty()) {
            this->DataInt.push_back(0);
            return;
        }

        // 2. Tentukan batas berdasarkan parameter Dec
        // Dec == 0 -> Hapus desimal, semua jadi integer
        // Dec > 0  -> Dec digit pertama adalah integer, sisanya desimal
        idx IntLen = (Dec == 0) ? RawDigits.size() : Dec;

        // Batasi IntLen agar tidak out-of-bounds
        if (IntLen > RawDigits.size()) {
            IntLen = RawDigits.size();
        }

        // 3. Distribusi ke DataInt dan DataDec
        for (idx i = 0; i < IntLen; ++i) {
            this->DataInt.push_back(RawDigits[i]);
        }
        for (idx i = IntLen; i < RawDigits.size(); ++i) {
            this->DataDec.push_back(RawDigits[i]);
        }

        // 4. Normalisasi DataInt (Hapus Leading Zeros)
        idx FirstNonZero = 0;
        while (FirstNonZero < this->DataInt.size() && this->DataInt[FirstNonZero] == 0) {
            FirstNonZero++;
        }
        if (FirstNonZero > 0) {
            this->DataInt.erase(this->DataInt.begin(), this->DataInt.begin() + FirstNonZero);
        }
        if (this->DataInt.empty()) {
            this->DataInt.push_back(0);
        }

        // 5. Normalisasi DataDec (Hapus Trailing Zeros)
        while (!this->DataDec.empty() && this->DataDec.back() == 0) {
            this->DataDec.pop_back();
        }

        // 6. Handle Edge Case "-0"
        if (this->DataInt.size() == 1 && this->DataInt[0] == 0 && this->DataDec.empty()) {
            this->IsNegative = false;
        }
    }
}

// 3. Single vec
namespace ToolsExperimental {
    VNum::VNum(const vec<u8>& Num) {
        this->IsNegative = false;
        vec<u8> raw = Detail::FlattenIterable(Num);
        Detail::PopulateFromRawDigits(this->DataInt, this->DataDec, raw, 0);
    }

    VNum::VNum(const vec<u8>& Num, idx Dec) {
        this->IsNegative = false;
        vec<u8> raw = Detail::FlattenIterable(Num);
        Detail::PopulateFromRawDigits(this->DataInt, this->DataDec, raw, Dec);
    }
}

// 4. Single generic iterable
namespace ToolsExperimental {
    VNum::VNum(const span<u8> Num) {
        this->IsNegative = false;
        vec<u8> raw = Detail::FlattenIterable(Num);
        Detail::PopulateFromRawDigits(this->DataInt, this->DataDec, raw, 0);
    }

    VNum::VNum(const span<u8> Num, idx Dec) {
        this->IsNegative = false;
        vec<u8> raw = Detail::FlattenIterable(Num);
        Detail::PopulateFromRawDigits(this->DataInt, this->DataDec, raw, Dec);
    }
}

// 5. Nested vec
namespace ToolsExperimental {
    VNum::VNum(const vec<vec<u8>>& Num) {
        this->IsNegative = false;
        Detail::PopulateNestedNoDec(this->DataInt, this->DataDec, Num);
    }

    VNum::VNum(const vec<vec<u8>>& Num, idx Dec) {
        this->IsNegative = false;
        // Flatten EVERYTHING into a single sequence, then split by Dec
        vec<u8> raw;
        for (const auto& inner : Num) {
            vec<u8> flattened = Detail::FlattenIterable(inner);
            raw.insert(raw.end(), flattened.begin(), flattened.end());
        }
        Detail::PopulateFromRawDigits(this->DataInt, this->DataDec, raw, Dec);
    }
}

// 6. Nested generic iterable
namespace ToolsExperimental {
    VNum::VNum(const span<span<u8>> Num) {
        this->IsNegative = false;
        Detail::PopulateNestedNoDec(this->DataInt, this->DataDec, Num);
    }

    VNum::VNum(const span<span<u8>> Num, idx Dec) {
        this->IsNegative = false;
        vec<u8> raw;
        for (const auto& inner : Num) {
            vec<u8> flattened = Detail::FlattenIterable(inner);
            raw.insert(raw.end(), flattened.begin(), flattened.end());
        }
        Detail::PopulateFromRawDigits(this->DataInt, this->DataDec, raw, Dec);
    }
}

// 7. Left & Right vec
namespace ToolsExperimental {

    // Tanpa Dec: NumLeft = Int, NumRight = Dec
    VNum::VNum(const vec<u8>& NumLeft, const vec<u8>& NumRight) {
        this->IsNegative = false;

        // Flatten untuk handle auto normalize >1 digits (misal: 21 -> 2, 1)
        this->DataInt = Detail::FlattenIterable(NumLeft);
        this->DataDec = Detail::FlattenIterable(NumRight);

        // Normalize DataInt (Hapus Leading Zeros)
        idx first_non_zero = 0;
        while (first_non_zero < this->DataInt.size() && this->DataInt[first_non_zero] == 0) {
            first_non_zero++;
        }
        if (first_non_zero > 0) {
            this->DataInt.erase(this->DataInt.begin(), this->DataInt.begin() + first_non_zero);
        }
        if (this->DataInt.empty()) {
            this->DataInt.push_back(0);
        }

        // Normalize DataDec (Hapus Trailing Zeros)
        while (!this->DataDec.empty() && this->DataDec.back() == 0) {
            this->DataDec.pop_back();
        }
    }

    // Dengan Dec: Gabung semua, lalu split berdasarkan Dec
    VNum::VNum(const vec<u8>& NumLeft, const vec<u8>& NumRight, idx Dec) {
        this->IsNegative = false;

        vec<u8> raw = Detail::FlattenIterable(NumLeft);
        vec<u8> right_raw = Detail::FlattenIterable(NumRight);

        // Concatenate
        raw.insert(raw.end(), right_raw.begin(), right_raw.end());

        // Gunakan helper yang sama dengan constructor flat
        Detail::PopulateFromRawDigits(this->DataInt, this->DataDec, raw, Dec);
    }
}

// 8. Left & Right generic iterable
namespace ToolsExperimental {

    // Without Dec: NumLeft = Int, NumRight = Dec
    VNum::VNum(const span<u8> NumLeft, const span<u8> NumRight) {
        this->IsNegative = false;

        this->DataInt = Detail::FlattenIterable(NumLeft);
        this->DataDec = Detail::FlattenIterable(NumRight);

        // Normalize DataInt
        idx first_non_zero = 0;
        while (first_non_zero < this->DataInt.size() && this->DataInt[first_non_zero] == 0) {
            first_non_zero++;
        }
        if (first_non_zero > 0) {
            this->DataInt.erase(this->DataInt.begin(), this->DataInt.begin() + first_non_zero);
        }
        if (this->DataInt.empty()) {
            this->DataInt.push_back(0);
        }

        // Normalize DataDec
        while (!this->DataDec.empty() && this->DataDec.back() == 0) {
            this->DataDec.pop_back();
        }
    }

    // Dengan Dec: Fuse all, then split by Dec
    VNum::VNum(const span<u8> NumLeft, const span<u8> NumRight, idx Dec) {
        this->IsNegative = false;

        vec<u8> raw = Detail::FlattenIterable(NumLeft);
        vec<u8> right_raw = Detail::FlattenIterable(NumRight);

        raw.insert(raw.end(), right_raw.begin(), right_raw.end());

        Detail::PopulateFromRawDigits(this->DataInt, this->DataDec, raw, Dec);
    }

    void VNum::ApplyDecimalLimit(idx limit) {
        if (this->DataDec.size() > limit) {
            u8 next_digit = this->DataDec[limit]; // First digit to be discarded
            this->DataDec.resize(limit);          // Cut

            // Round half-up: If digits which discarded >= 5, roundup
            if (next_digit >= 5) {
                i16 carry = 1;
                // Propagate carry from right to left (LSD to MSD at DataDec)
                for (idx i = this->DataDec.size(); i > 0 && carry > 0; --i) {
                    i16 sum = this->DataDec[i - 1] + carry;
                    this->DataDec[i - 1] = scast<u8>(sum % 10);
                    carry = sum / 10;
                }
                // If there's still a caryy, overflow to Integer! (Example: 0.99 -> 1.0)
                if (carry > 0) {
                    vec<u8> one = {1};
                    this->DataInt = AddMagnitudes(this->DataInt, one);
                }
            }
        }

        // Normalize trailing zeros behind commas (misal 1.50 -> 1.5)
        while (!this->DataDec.empty() && this->DataDec.back() == 0) {
            this->DataDec.pop_back();
        }
    }
}

#endif