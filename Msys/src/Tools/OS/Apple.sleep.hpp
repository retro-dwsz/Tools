#pragma once

#ifndef TOOLS_OS_APPLE_SLEEP_HPP
#define TOOLS_OS_APPLE_SLEEP_HPP


#include "../Types.hpp"

/* macOS / POSIX includes */
#include <time.h>   // nanosleep
#include <errno.h>  // EINTR

// OS Sleep
namespace Tools::MacOS::Sleep {

    void SleepMs(u32 ms) {
        if (ms == 0) return;

        struct timespec req{};
        req.tv_sec  = ms / 1000;
        req.tv_nsec = (ms % 1000) * 1000000L;

        while (nanosleep(&req, &req) == -1 && errno == EINTR) {
            // retry remaining time
        }
    }

    void SleepPrecise(f64 ms) {
        if (ms <= 0.0) return;

        f64 seconds = ms / 1000.0;

        struct timespec req{};
        req.tv_sec  = static_cast<time_t>(seconds);
        req.tv_nsec = static_cast<long>((seconds - req.tv_sec) * 1e9);

        if (req.tv_nsec >= 1000000000L) {
            req.tv_sec += 1;
            req.tv_nsec -= 1000000000L;
        }

        while (nanosleep(&req, &req) == -1 && errno == EINTR) {
            // precise retry loop
        }
    }

}
#endif

