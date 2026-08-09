/* ---- Begin: Random.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_HPP
#define TOOLS_RANDOM_HPP 0

#include "FeatureCheck.hpp"

/* Tools.Random, random number wrapper for singly/multiple items per function
 * Total files: 14
 * Total function: 11*6 = 66 funcs
 * Total size: 131 KB
 *
 * Legend
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
 *
 * Twister available in 32/64-bit or in Custom
 */

/** Required for functions **/
#include "Random/_Common.hpp"

/** Singly functions **/
#include "Random/Single.Base.hpp"
#include "Random/Single.Custom.hpp"

/** Vector functions **/
#include "Random/Vector.Base.hpp"
#include "Random/Vector.Custom.hpp"
#include "Random/Vector.Thread.hpp"
#include "Random/Vector.Thread.Custom.hpp"

/** Bundled functions (vector in vector) **/
#include "Random/Bundle.Base.hpp"
#include "Random/Bundle.Custom.hpp"
#include "Random/Bundle.Thread.hpp"
#include "Random/Bundle.Thread.Custom.hpp"

/** SBundled functions (vector in vector with scattered sizes) **/
#include "Random/SBundle.Base.hpp"
#include "Random/SBundle.Custom.hpp"
#include "Random/SBundle.Thread.hpp"
#include "Random/SBundle.Thread.Custom.hpp"

/** Random String **/
#include "Random/String.Base.hpp"
#include "Random/String.Custom.hpp"

/** Random Choice from  generic iterables **/
#include "Random/Choice.Base.hpp"
#include "Random/Choice.Custom.hpp"

#endif

/* ---- End: Random.hpp ---- */
