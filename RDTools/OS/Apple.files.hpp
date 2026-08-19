#pragma once

#ifndef TOOLS_OS_APPLE_FILES_HPP
#define TOOLS_OS_APPLE_FILES_HPP

#include "../Types.hpp"

/* Apple / POSIX includes */
#include <fstream>
#include <filesystem>
#include <unistd.h>     // unlink, access
#include <sys/stat.h>   // stat
#include <cstdio>       // rename

namespace rdt::OS::File {
    /* Safe cstr bridge for POSIX APIs */
    // cstr cstr_safe(strv s, str& temp) {
    //     temp.assign(s.data(), s.size());
    //     return temp.c_str();
    // }

    bool WriteFile(strview path, strview text) {
        std::ofstream file(std::string(path), std::ios::binary | std::ios::trunc);
        if (!file.is_open()) return false;

        file.write(text.data(), static_cast<std::streamsize>(text.size()));
        return file.good();
    }

    str ReadFile(strview path) {
        std::ifstream file(std::string(path), std::ios::binary);
        if (!file.is_open()) return {};

        file.seekg(0, std::ios::end);
        const auto size = file.tellg();
        if (size <= 0) return {};

        str buffer;
        buffer.resize(static_cast<size_t>(size));

        file.seekg(0, std::ios::beg);
        file.read(buffer.data(), static_cast<std::streamsize>(size));

        if (!file) return {};
        return buffer;
    }

    bool Exists(cstr path) {
        // str temp;
        // const cstr p = cstr_safe(path, temp);
        return access(path, F_OK) == 0;
    }

    bool Remove(cstr path) {
        // str temp;
        // const cstr p = cstr_safe(path, temp);
        return ::unlink(path) == 0;
    }

    bool Move(cstr from, cstr to) {
        // str temp_from;
        // str temp_to;

        // const cstr f = cstr_safe(from, temp_from);
        // const cstr t = cstr_safe(to, temp_to);

        return std::rename(from, to) == 0;
    }

}

#endif
