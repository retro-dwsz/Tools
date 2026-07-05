#pragma once

#ifndef TOOLS_EXPERIMENTAL_VNUM_GETSET_HPP
#define TOOLS_EXPERIMENTAL_VNUM_GETSET_HPP

#include "VNum_base.hpp"

namespace ToolsExperimental {
    // Getter
    // Get specific digit (seperator for decimal and thousands are ignored)
    u8 VNum::operator[](const idx At) const {
        if (At < this->DataInt.size()) {
            return this->DataInt[At];
        }

        idx dec_index = At - this->DataInt.size();
        if (dec_index < this->DataDec.size()) {
            return this->DataDec[dec_index];
        }

        // Out of bounds: return 0 as safe default
        // (Alternatively, could throw or assert in debug)
        return 0;
    }

    str VNum::ToStr() const {
        str Result;

        // 1. Sign
        if (this->IsNegative) {
            Result.push_back('-');
        }

        // 2. Integer part with thousands separator
        idx IntLen = this->DataInt.size();
        for (idx i = 0; i < IntLen; ++i) {
            Result.push_back(scast<char>('0' + this->DataInt[i]));

            // Add seperator if:
            // - Not last digit
            // - Distance from end is power to SeperatorScale
            // - SeparatorScale > 0 (User can disable by setting to 0)
            if (this->SeparatorScale > 0
                && i < IntLen - 1
                && (IntLen - 1 - i) % this->SeparatorScale == 0) {
                Result.push_back(this->SeparatorChar);
            }
        }

        // 3. Decimal part (ONLY if there's decimal digit)
        if (!this->DataDec.empty()) {
            Result.push_back(this->CommaChar);
            for (u8 Digit : this->DataDec) {
                Result.push_back(scast<char>('0' + Digit));
            }
        }

        return Result;
    }
}

#endif