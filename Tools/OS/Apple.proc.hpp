#pragma once

#include "../Types.hpp"

/* Apple / Mach includes */
#include <mach/mach.h>  // Apple only! You'll see a ton of red lines on your screen if you open this on non-apple machines
#include <unistd.h>     // geteuid
#include <sys/types.h>  // pid_t

namespace Tools::OS::Process {

    /* Internal helper: get task port from PID */
    inline bool GetTaskPort(idx pid, mach_port_t& task) {
        if (pid <= 0) return false;

        const kern_return_t kr = task_for_pid(
            mach_task_self(),
            static_cast<pid_t>(pid),
            &task
        );

        return kr == KERN_SUCCESS && task != MACH_PORT_NULL;
    }

    template <typename T>
    T ReadFromProcess(idx PID, uintptr_t Address) {
        T buffer{};
        mach_port_t task = MACH_PORT_NULL;

        if (!GetTaskPort(PID, task)) {
            return buffer; // failed (no permission or invalid pid)
        }

        mach_vm_size_t out_size = 0;

        const kern_return_t kr = mach_vm_read_overwrite(
            task,
            static_cast<mach_vm_address_t>(Address),
            sizeof(T),
            reinterpret_cast<mach_vm_address_t>(&buffer),
            &out_size
        );

        if (kr != KERN_SUCCESS || out_size != sizeof(T)) {
            return T{}; // read failed
        }

        return buffer;
    }

    template <typename T>
    bool WriteProcess(idx PID, uintptr_t Address, T data) {
        mach_port_t task = MACH_PORT_NULL;

        if (!GetTaskPort(PID, task)) {
            return false;
        }

        const kern_return_t kr = mach_vm_write(
            task,
            static_cast<mach_vm_address_t>(Address),
            reinterpret_cast<vm_offset_t>(&data),
            static_cast<mach_msg_type_number_t>(sizeof(T))
        );

        return kr == KERN_SUCCESS;
    }

    // Current process (root check)
    inline bool IsAdmin() {
        // macOS uses root (uid 0), same concept as Linux
        return geteuid() == 0;
    }

    // Other process (VERY unreliable on macOS)
    inline bool IsAdmin(idx pid) {
        mach_port_t task = MACH_PORT_NULL;

        // If we can't even get task port, assume no elevated access
        if (!GetTaskPort(pid, task)) {
            return false;
        }

        // Getting task port usually already implies strong permissions
        return true;
    }

}
