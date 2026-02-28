#pragma

#ifndef TOOLS_OS_LINUX_PROC_HPP
#define TOOLS_OS_LINUX_PROC_HPP

#include "../Types.hpp"

#include <unistd.h>     // geteuid
#include <sys/uio.h>    // process_vm_readv, process_vm_writev (BEST)
#include <sys/types.h>
#include <fcntl.h>
#include <cstdio>
#include <cstring>

// Process hacks
namespace Tools::Linux::Process {
    template <typename T>
    T ReadProcess(idx PID, uintptr_t Address) {
        T value{};
        
        struct iovec local_iov{};
        local_iov.iov_base = &value;
        local_iov.iov_len  = sizeof(T);

        struct iovec remote_iov{};
        remote_iov.iov_base = reinterpret_cast<void*>(Address);
        remote_iov.iov_len  = sizeof(T);

        ssize_t nread = process_vm_readv(
            static_cast<pid_t>(PID),
            &local_iov, 1,
            &remote_iov, 1,
            0
        );

        if (nread != static_cast<ssize_t>(sizeof(T))) {
            // Failed or partial read → return zero-initialized T
            return T{};
        }

        return value;
    }

    template <typename T>
    bool WriteProcess(idx PID, uintptr_t Address, T data) {
        struct iovec local_iov{};
        local_iov.iov_base = &data;
        local_iov.iov_len  = sizeof(T);

        struct iovec remote_iov{};
        remote_iov.iov_base = reinterpret_cast<void*>(Address);
        remote_iov.iov_len  = sizeof(T);

        ssize_t nwritten = process_vm_writev(
            static_cast<pid_t>(PID),
            &local_iov, 1,
            &remote_iov, 1,
            0
        );

        return nwritten == static_cast<ssize_t>(sizeof(T));
    }

    // Current process: root/admin check
    __declspec(__noinline__)
    bool IsAdmin() {
        // In Linux, "admin" == UID 0 (root)
        return geteuid() == 0;
    }

    // Other process: check if owned by root (simplified admin concept)
    __declspec(__noinline__)
    bool IsAdmin(idx pid) {
        // Simplest portable check: compare UID via /proc
        // Root-owned process usually UID 0
        char path[64]{};
        std::snprintf(path, sizeof(path), "/proc/%d/status", (int)pid);

        FILE* f = std::fopen(path, "r");
        if (!f) return false;

        char line[256];
        bool is_root = false;

        while (std::fgets(line, sizeof(line), f)) {
            if (std::strncmp(line, "Uid:", 4) == 0) {
                // Format: Uid: real effective saved fs
                int real_uid = 0;
                std::sscanf(line, "Uid:\t%d", &real_uid);
                is_root = (real_uid == 0);
                break;
            }
        }

        std::fclose(f);
        return is_root;
    }
}
#endif
