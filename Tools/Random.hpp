#pragma once

#ifndef TOOLS_RANDOM_HPP
#define TOOLS_RANDOM_HPP

#include "FeatureCheck.hpp"

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
#include "Random/Random.common.hpp"

/** Singly functions **/
#include "Random/Random.single.hpp"

/** Vector functions **/
#include "Random/Random.vector.hpp"

/** Vector multi-thread **/
#include "Random/Random.vector.thread.hpp"

/** Bundled functions (vector in vector) **/
#include "Random/Random.bundle.hpp"

/** Bundle multi-thread **/
#include "Random/Random.vector.thread.hpp"

/** SBundled functions (vector in vector with scattered sizes) **/
#include "Random/Random.sbundle.hpp"

/** SBundle multi-thread **/
#include "Random/Random.sbundle.thread.hpp"

#endif
