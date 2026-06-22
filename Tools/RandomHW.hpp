#pragma once

#ifndef TOOLS_RANDOM_HW_HPP
#define TOOLS_RANDOM_HW_HPP

#if defined(__clang__) || defined(__GNUC__)
    #if defined(__RDSEED__) && defined(__RDRND__)
        // Clang/GCC defines this macro if -mrdseed -mrdrnd setted
        #define HW_EXT_SUPPORT 1
    #else
        #warning "HW entropy not enabled! Please use -mrdseed -mrdrnd or -march=native"
        #define HW_EXT_SUPPORT 0
    #endif
#endif

/* WARNING!
 * - This lib is currently ONLY for x86 CPUs
 * - You may need to pass "-mrdseed", "-mrdrnd" and maybe "-march=native"
 */

/* Legend
 * "I"   stands for "Integer" (i32)
 * "L"   stands for "Long" (i64)
 * "F"   stands for "Float" (f32)
 * "D"   stands for "Double" (f64)
 * "V"   stands for "Vector"
 * "B"   stands for "Bundled"
 * "SB"  stands for "Scattered Bundle"
 *
 * "T"   stands for "Threaded", which means those are using multithreading
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
#include "RandomHW/Common.hpp"

/** Singly functions **/
#include "RandomHW/Single.hpp"

/** Vector functions **/
#include "RandomHW/Vector.hpp"

/** Bundled functions (vector in vector) **/
#include "RandomHW/Bundle.hpp"

/** SBundled functions (vector in vector with scattered sizes) **/
#include "RandomHW/Sbundle.hpp"

#endif
