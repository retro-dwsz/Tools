#pragma once

#ifndef TOOLS_RANDOM_COMMON_HPP
#define TOOLS_RANDOM_COMMON_HPP

#include "../Types.hpp"
#include "../Casting.hpp"
#include "../Rounding.hpp"
#include "../Randomizer.hpp"
#include "../Style.hpp"

#define sthread static thread_local

namespace Tools::Random {
    const str Warning = std::format(
        "Unusual number for indexes detected, proceed with cauntion" /* , 0xF84234 */
    );
}

namespace Tools::Random {
    using Tools::Round::Round;

    void WarningCount(const idx& SubVectorCount, const idx& NCount){
        if(SubVectorCount > INT32_MAX || NCount > INT32_MAX){
            #ifdef TOOLS_RANDOM_SILENT
            printf("%s", Warning.data());
            #else
            printf("%s", Warning.data());
            #endif
        }
    }
}

#endif
