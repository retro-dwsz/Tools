#pragma once

/* Legend
 * "I"   stands for "Integer" (i32)
 * "L"   stands for "Long" (i64)
 * "F"   stands for "Float" (f32)
 * "D"   stands for "Double" (f64)
 * "V"   stands for "Vector"
 * "B"   stands for "Bundled"
 * "SB"  stands for "Scattered Bundle"
 *
 * "VI"  stands for "Vector Integer"
 * "VL"  stands for "Vector Long Integer"
 * "VF"  stands for "Vector Float"
 * "VD"  stands for "Vector Double"
 *
 * "BI"  stands for "Bundled Integer"
 * "BL"  stands for "Bundled Long Integer"
 * "BF"  stands for "Bundled Float"
 * "BD"  stands for "Bundled Double"
 *
 * "SBI" stands for "Scattered Bundled Integer"
 * "SBL" stands for "Scattered Bundled Long Integer"
 * "SBF" stands for "Scattered Bundled Float"
 * "SBD" stands for "Scattered Bundled Double"
 */

/** Required for functions **/
#include "Random/Random.common.hpp"

/** Singly functions **/
#include "Random/Random.single.hpp"

/** Vector functions **/
#include "Random/Random.vector.hpp"

/** Bundled functions (vector in vector) **/
#include "Random/Random.bundle.hpp"

/** SBundled functions (vector in vector with scattered sizes) **/
#include "Random/Random.sbundle.hpp"


#ifdef USE_TESTING
// --- Single functions (Floating Ranges) ---
namespace Tools::Random::Single {
    // For the specific "Floating" case (e.g., 1.0 to 1.9)
    // integer_part=1, decimal_min=0, decimal_max=9 -> Generates a number like 1.2, 1.6 etc.
    // 32-bit
    [[maybe_unused]]
    [[deprecated("Use auto range instead")]]
    f32 RandomNumRF(int Base, int DecMin, int DecMax) {
        if(DecMax < DecMin){ swap(DecMin, DecMax); }

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
        if(DecMax < DecMin){ swap(DecMin, DecMax); }

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
        if(BaseMax < BaseMin){ swap(BaseMax, BaseMin); }
        if(DecMax < DecMin){ swap(DecMin, DecMax); }

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
        if(BaseMax < BaseMin){ swap(BaseMax, BaseMin); }
        if(DecMax < DecMin){ swap(DecMin, DecMax); }

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
        if(DecMax < DecMin){ swap(DecMin, DecMax); }
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
        if(BaseMax < BaseMin){ swap(BaseMin, BaseMax); }
        if(DecMax < DecMin){ swap(DecMin, DecMax); }
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
        if(DecMax < DecMin){ swap(DecMin, DecMax); }
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
        if(BaseMax < BaseMin){ swap(BaseMin, BaseMax); }
        if(DecMax < DecMin){ swap(DecMin, DecMax); }
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