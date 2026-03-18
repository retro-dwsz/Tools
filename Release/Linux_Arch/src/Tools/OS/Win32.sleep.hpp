#pragma once

#ifndef TOOLS_OS_WIN32_SLEEP_HPP
#define TOOLS_OS_WIN32_SLEEP_HPP

/* ONLY STANDARD LIBS ARE ALLOWED */
#include <windows.h>

#include "../Types.hpp"

/* Sleep function using winapi */
namespace Tools::OS::Sleep {
    inline void SleepMs(u32 ms) {
        ::Sleep(ms);
    }

    void SleepPrecise(f64 ms) {
        LARGE_INTEGER freq, start, now;
        QueryPerformanceFrequency(&freq);
        QueryPerformanceCounter(&start);

        double target = ms * freq.QuadPart;

        while (true) {
            QueryPerformanceCounter(&now);
            if (now.QuadPart - start.QuadPart >= target)
            break;

            ::Sleep(0); // yield CPU slice
        }
    }
}

#endif