#pragma once

#ifndef TOOLS_RANDOM_HW_HPP
#define TOOLS_RANDOM_HW_HPP

#if !defined(__RDSEED__) || !defined(__RDRND__) || !defined(march)
    #warning "HW entropy (-mrdseed, -mrdrnd) not found! Please pass \"-mrdseed\", \"-mrdrnd\" or maybe \"-march=native\" also"
#endif

#if __cplusplus < 202302L
    #warning "This lib is intended for C++23 (-std=c++23)."
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
#include "RandomHW/RandomHW.common.hpp"

/** Singly functions **/
#include "RandomHW/RandomHW.single.hpp"

/** Vector functions **/
#include "RandomHW/RandomHW.vector.hpp"

/** Bundled functions (vector in vector) **/
#include "RandomHW/RandomHW.bundle.hpp"

/** SBundled functions (vector in vector with scattered sizes) **/
#include "RandomHW/RandomHW.sbundle.hpp"

#endif
