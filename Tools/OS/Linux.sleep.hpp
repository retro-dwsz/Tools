#pragma once

#ifndef TOOLS_OS_LINUX_SLEEP_HPP
#define TOOLS_OS_LINUX_SLEEP_HPP

#include "../Types.hpp"

#include <time.h>   // nanosleep, timespec
#include <errno.h>  // EINTR

namespace Tools::Linux::Sleep {
    __declspec(__noinline__)
    void SleepMs(const u32 TimeMs) {
        if (TimeMs == 0) return;

        struct timespec Req{};
        Req.tv_sec  = TimeMs / 1000;
        Req.tv_nsec = (TimeMs % 1000) * 1000000L;

        // Handle interruptions (signals, etc.)
        while (nanosleep(&Req, &Req) == -1 && errno == EINTR) {
            // retry with remaining time stored in req
        }
    }

    __declspec(__noinline__)
    void SleepPrecise(f64 TimeMs) {
        if (TimeMs <= 0.0) return;

        f64 Sec = TimeMs / 1000.0;

        struct timespec Req{};
        Req.tv_sec  = static_cast<time_t>(Sec);
        Req.tv_nsec = static_cast<long>((Sec - Req.tv_sec) * 1e9);

        // Normalize (safety)
        if (Req.tv_nsec >= 1000000000L) {
            Req.tv_sec += 1;
            Req.tv_nsec -= 1000000000L;
        }

        // Loop to ensure full precise sleep even if interrupted
        while (nanosleep(&Req, &Req) == -1 && errno == EINTR) {
            // nanosleep updates req with remaining time
        }
    }
}
#endif
