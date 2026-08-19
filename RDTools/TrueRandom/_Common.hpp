/* ---- Begin: TrueRandom/_Common.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_COMMON
#define TOOLS_TRUE_RANDOM_COMMON 1

#include "../Randomizer.hpp"
#include "../Types.hpp"
#include "../Casting.hpp"
#include "../Rounding.hpp"

#if defined(_WIN32)
#include "_Internal.Win32.hpp"   // 2a
#elif defined(__linux__) && !defined(__ANDROID__)
#include "_Internal.Linux.hpp"
#endif

/** Checkings **/
namespace rdt::TrueRandom {
    using namespace rdt::Random;
    using rdt::Round::Round;
    using Cast::scast, Cast::rcast, Cast::dcast;

    /**
     * @brief Warning message displayed when unusually large index counts are detected.
     *
     * This constant holds the warning string triggered by WarningCount() if
     * parameters exceed standard 32-bit integer limits, suggesting potential
     * performance impacts or memory usage concerns.
     */
    const str Warning = std::format(
        "Unusual number for indexes detected, proceed with caution" /* , 0xF84234 */
    );

    /** vec<vec<T>> a.k.a "Bundle" **/
    template <typename T>
    using Bundle = vec<vec<T>>;
}

#endif

/* ---- End: TrueRandom/_Common.hpp ---- */
