#pragma once

#ifndef TOOLS_OS_HPP
#define TOOLS_OS_HPP

#include "FeatureCheck.hpp"

/* Per section includes
 *
 * Tools/OS/<OS>.API.hpp         All packed APIs
 * Tools/OS/<OS>.terminal.hpp    To get infos or do something else to current terminal
 * Tools/OS/<OS>.files.hpp       Files utility
 * Tools/OS/<OS>.sleep.hpp       Basically "sleep" using available OS API, in case you need extra-precise sleep
 * Tools/OS/<OS>.proc.hpp        The magic of "Read from"/"Write to" other process using available OS API, may not 100% stable, but worth to try ;)
 */

#if defined(__WIN32)
    #include "OS/Win32.API.hpp"
#elif defined(__linux__) && !defined(__ANDROID__)
    #include "OS/Linux.API.hpp"
#elif defined(__APPLE__)
    #include "OS/Apple.API.hpp"
#endif

#endif
