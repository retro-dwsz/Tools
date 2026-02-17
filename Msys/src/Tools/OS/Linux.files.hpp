#pragma once

#include "../Types.hpp"

#include <fcntl.h>      // open
#include <unistd.h>     // read, write, close
#include <sys/stat.h>   // stat
#include <sys/types.h>  // types
#include <errno.h>      // errno

// File utils
namespace Tools::Linux::File {
    // Ensure null-terminated C string for POSIX APIs
    cstr static cstr_safe(strview s, str& temp) {
        if (s.empty()) return "";

        // If already null-terminated, use directly
        if (s.data()[s.size()] == '\0') {
            return s.data();
        }

        temp.assign(s);
        return temp.c_str();
    }

    bool WriteFile(strview path, strview text) {
        str ptmp;
        cstr p = cstr_safe(path, ptmp);

        int fd = open(p, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (fd == -1) {
            return false;
        }

        ssize_t total = 0;
        const char* data = text.data();
        ssize_t size = static_cast<ssize_t>(text.size());

        while (total < size) {
            ssize_t written = write(fd, data + total, size - total);
            if (written <= 0) {
                close(fd);
                return false;
            }
            total += written;
        }

        close(fd);
        return true;
    }

    str ReadFile(strview path) {
        str ptmp;
        cstr p = cstr_safe(path, ptmp);

        int fd = open(p, O_RDONLY);
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

    bool Exists(strview path) {
        str ptmp;
        cstr p = cstr_safe(path, ptmp);

        struct stat st{};
        return stat(p, &st) == 0;
    }

    bool Remove(strview path) {
        str ptmp;
        cstr p = cstr_safe(path, ptmp);

        return unlink(p) == 0;
    }

    bool Move(strview from, strview to) {
        str ftmp, ttmp;
        cstr f = cstr_safe(from, ftmp);
        cstr t = cstr_safe(to, ttmp);

        return rename(f, t) == 0;
    }

}
