#pragma once

#ifndef TOOLS_OS_LINUX_SLEEP_HPP
#define TOOLS_OS_LINUX_SLEEP_HPP

#include "../Types.hpp"

#include <time.h>   // nanosleep, timespec
#include <errno.h>  // EINTR

namespace Tools::Linux::Sleep {
    __declspec(__noinline__)
    void SleepMs(u32 ms) {
        if (ms == 0) return;

        struct timespec req{};
        req.tv_sec  = ms / 1000;
        req.tv_nsec = (ms % 1000) * 1000000L;

        // Handle interruptions (signals, etc.)
        while (nanosleep(&req, &req) == -1 && errno == EINTR) {
            // retry with remaining time stored in req
        }
    }

    __declspec(__noinline__)
    void SleepPrecise(f64 ms) {
        if (ms <= 0.0) return;

        f64 seconds = ms / 1000.0;

        struct timespec req{};
        req.tv_sec  = static_cast<time_t>(seconds);
        req.tv_nsec = static_cast<long>((seconds - req.tv_sec) * 1e9);

        // Normalize (safety)
        if (req.tv_nsec >= 1000000000L) {
            req.tv_sec += 1;
            req.tv_nsec -= 1000000000L;
        }

        // Loop to ensure full precise sleep even if interrupted
        while (nanosleep(&req, &req) == -1 && errno == EINTR) {
            // nanosleep updates req with remaining time
        }
    }
}
#endif
