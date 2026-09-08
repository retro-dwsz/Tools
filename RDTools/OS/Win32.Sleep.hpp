#pragma once

#ifndef TOOLS_OS_WIN32_SLEEP_HPP
#define TOOLS_OS_WIN32_SLEEP_HPP

/* ONLY STANDARD LIBS ARE ALLOWED */
#include <windows.h>

#include "../Types.hpp"

/* Sleep function using winapi */
namespace rdt::OS::Sleep {
    inline void SleepMs(const u32 ms) {
        ::Sleep(ms);
    }

    inline void SleepPrecise(const f64 ms) {
        LARGE_INTEGER freq, start, now;
        QueryPerformanceFrequency(&freq);
        QueryPerformanceCounter(&start);

        const f64 target = ms * freq.QuadPart;

        while (true) {
            QueryPerformanceCounter(&now);
            if (now.QuadPart - start.QuadPart >= target)
            break;

            ::Sleep(0); // yield CPU slice
        }
    }
}

#endif