#pragma once

#define DEPRECATED 1

#ifndef TOOLS_RANDOM_FDRANGE_HPP
#define TOOLS_RANDOM_FDRANGE_HPP

#include "Tools/Types.hpp"
#include "Tools/Casting.hpp"
#include "Tools/Rounding.hpp"
#include "Tools/Randomizer.hpp"

#define sthread static thread_local

// --- Single functions (Floating Ranges) ---
namespace Tools::Random::Single {
    // For the specific "Floating" case (e.g., 1.0 to 1.9)
    // integer_part=1, decimal_min=0, decimal_max=9 -> Generates a number like 1.2, 1.6 etc.
    // 32-bit
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    f32 RandomNumRF(int Base, int DecMin, int DecMax) {
        if(DecMax < DecMin){ std::swap(DecMin, DecMax); }

        sthread RdDevice rd;
        sthread Twister32 gen(rd());
        DistInt<int> dis_decimal(DecMin, DecMax);
        int decimal_part = dis_decimal(gen);
        f32 result = Cast::scast<f32>(Base) + (Cast::scast<f32>(decimal_part) / 10.0);
        return result; // Returns f32
    }

    // 64-bit
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    f64 RandomNumRD(int Base, int DecMin, int DecMax) {
        if(DecMax < DecMin){ std::swap(DecMin, DecMax); }

        sthread RdDevice rd;
        sthread Twister64 gen(rd());
        DistInt<int> dis_decimal(DecMin, DecMax);
        int decimal_part = dis_decimal(gen);
        f64 result = Cast::scast<f64>(Base) + (Cast::scast<f64>(decimal_part) / 10.0);
        return result; // Returns f64
    }

    // More ranged floating Base Min->Max + Decimal Min->Max
    // example: BaseMin: 1, BaseMax: 5, decMin: 0, decMax: 8 -> random from 1.0..5.8
    // 32-bit
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    f32 RandomNumRF(int BaseMin, int BaseMax, int DecMin, int DecMax, int DecDigits) {
        if(BaseMax < BaseMin){ std::swap(BaseMax, BaseMin); }
        if(DecMax < DecMin){ std::swap(DecMin, DecMax); }

        sthread Twister32 gen{ RdDevice{}() };

        DistInt<int> dis_base(BaseMin, BaseMax);
        DistInt<int> dis_decimal(DecMin, DecMax);

        int base = dis_base(gen);
        int decimal = dis_decimal(gen);

        f32 scale = std::pow(10.0, DecDigits);
        f32 result = Cast::scast<f32>(base) + (Cast::scast<f32>(decimal) / scale);

        return Round::Round(result, DecDigits);
    }

    // 64-bit
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    f64 RandomNumRD(int BaseMin, int BaseMax, int DecMin, int DecMax, int DecDigits) {
        if(BaseMax < BaseMin){ std::swap(BaseMax, BaseMin); }
        if(DecMax < DecMin){ std::swap(DecMin, DecMax); }

        sthread Twister64 gen{ RdDevice{}() };

        DistInt<int> dis_base(BaseMin, BaseMax);
        DistInt<int> dis_decimal(DecMin, DecMax);

        int base = dis_base(gen);
        int decimal = dis_decimal(gen);

        f64 scale = std::pow(10.0, DecDigits);
        f64 result = Cast::scast<f64>(base) + (Cast::scast<f64>(decimal) / scale);

        return Round::Round(result, DecDigits);
    }
}

/* For ranged values vectors*/
namespace Tools::Random::Multi {
    /* 32-bit Base + Range Decimal */
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    vec<f32> RandomNumsVRF(size_t count, int Base, int DecMin, int DecMax) {
        if(DecMax < DecMin){ std::swap(DecMin, DecMax); }
        if(count < 0){ count = count*(-1); }

        vec<f32> result;
        result.reserve(count);

        for(size_t i = 0; i < count; ++i){
            f32 num = Single::RandomNumRF(Base, DecMin, DecMax);
            result.push_back(num);
        }
        return result;
    }

    /* 32-bit Range Base + Range Decimal */
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    vec<f32> RandomNumsVRF(size_t count, int BaseMin, int BaseMax, int DecMin, int DecMax, int DecDigits){
        if(BaseMax < BaseMin){ std::swap(BaseMin, BaseMax); }
        if(DecMax < DecMin){ std::swap(DecMin, DecMax); }
        if(count < 0){ count = count*(-1); }

        vec<f32> result;
        result.reserve(count);

        for(size_t i = 0; i < count; ++i){
            f32 num = Single::RandomNumRF(BaseMin, BaseMax, DecMin, DecMax, DecDigits);
            num = Round::Round(num, DecDigits);
            result.push_back(num);
        }
        return result;
    }

    /* 64-bit Base + Range Decimal */
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    vec<f64> RandomNumsVRD(size_t count, int Base, int DecMin, int DecMax) {
        if(DecMax < DecMin){ std::swap(DecMin, DecMax); }
        if(count < 0){ count = count*(-1); }

        vec<f64> result;
        result.reserve(count);

        for(size_t i = 0; i < count; ++i){
            f64 num = Single::RandomNumRF(Base, DecMin, DecMax);
            result.push_back(num);
        }
        return result;
    }

    /* 64-bit Range Base + Range Decimal */
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    vec<f64> RandomNumsVRD(size_t count, int BaseMin, int BaseMax, int DecMin, int DecMax, int DecDigits){
        if(BaseMax < BaseMin){ std::swap(BaseMin, BaseMax); }
        if(DecMax < DecMin){ std::swap(DecMin, DecMax); }
        if(count < 0){ count = count*(-1); }

        vec<f64> result;
        result.reserve(count);

        for(size_t i = 0; i < count; ++i){
            f64 num = Single::RandomNumRF(BaseMin, BaseMax, DecMin, DecMax, DecDigits);
            num = Round::Round(num, DecDigits);
            result.push_back(num);
        }
        return result;
    }

}

#endif