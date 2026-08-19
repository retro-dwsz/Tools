#pragma once

#ifndef TOOLS_OS_LINUX_FILES_HPP
#define TOOLS_OS_LINUX_FILES_HPP

#include "../Types.hpp"

#include <fcntl.h>      // open
#include <unistd.h>     // read, write, close
#include <sys/stat.h>   // stat
#include <sys/types.h>  // types
#include <errno.h>      // errno

// File utils
namespace rdt::Linux::File {
    // Ensure null-terminated C string for POSIX APIs
    cstr static Normalize(const strview& Tx, str& Temp) {
        if (Tx.empty()) return "";

        // If already null-terminated, use directly
        if (Tx.data()[Tx.size()] == '\0') {
            return Tx.data();
        }

        Temp.assign(Tx);
        return Temp.c_str();
    }

    bool WriteFile(const strview& Path, const strview& text) {
        str PathTemp;
        cstr PathN = Normalize(Path, PathTemp);

        int fd = open(PathN, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (fd == -1) {
            return false;
        }

        ssize_t Total = 0;
        const char* data = text.data();
        ssize_t Size = static_cast<ssize_t>(text.size());

        while (Total < Size) {
            ssize_t Written = write(fd, data + Total, Size - Total);
            if (Written <= 0) {
                close(fd);
                return false;
            }
            Total += Written;
        }

        close(fd);
        return true;
    }

    str ReadFile(const strview& path) {
        str PathTemp;
        cstr PathN = Normalize(path, PathTemp);

        int fd = open(PathN, O_RDONLY);
        if (fd == -1) {
            return {};
        }

        struct stat st{};
        if (fstat(fd, &st) == -1) {
            close(fd);
            return {};
        }

        if (st.st_size <= 0) {
            close(fd);
            return {};
        }

        str out;
        out.resize(static_cast<size_t>(st.st_size));

        ssize_t total = 0;
        ssize_t size  = static_cast<ssize_t>(out.size());
        char* buffer  = out.data();

        while (total < size) {
            ssize_t r = read(fd, buffer + total, size - total);
            if (r <= 0) {
                close(fd);
                return {};
            }
            total += r;
        }

        close(fd);
        return out;
    }

    bool Exists(const strview& Path) {
        str PathTemp;
        cstr PathN = Normalize(Path, PathTemp);

        struct stat st{};
        return stat(PathN, &st) == 0;
    }

    bool Remove(const strview& path) {
        str PathTemp;
        cstr PathN = Normalize(path, PathTemp);

        return unlink(PathN) == 0;
    }

    bool Move(const strview& from, const strview& to) {
        str ftmp, ttmp;
        cstr f = Normalize(from, ftmp);
        cstr t = Normalize(to, ttmp);

        return rename(f, t) == 0;
    }

}

#endif
