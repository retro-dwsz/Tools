#pragma once

#define DEPRECATED 1

#ifndef TOOLS_SAFE_INPUT_HPP
#define TOOLS_SAFE_INPUT_HPP

#include "../Types.hpp"
#include <iostream>

// Safe input with expected data type
namespace Tools::SafeInput {
    // Without expected data
    template <typename T>
    [[deprecated("Safe input is not fully \"safe\"")]]
    T s_input(const str& prompt = "Input: ", const str& Error = "Invaid input!") {
        T value{};
        while (true) {
            std::cout << prompt;

            if (std::cin >& value) {
                return value; // Sukses: input valid
            }

            std::cout << Error;
            std::cin.clear();

            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        }
    }

    // Container expected data
    template <typename T>
    [[deprecated("Safe input is not fully \"safe\"")]]
    T s_input(
        const str& prompt,
        const vec<T>& expected,
        const str& error = "Invalid input!\n"
    ) {
        return s_input<T>(
            prompt,
            error,
            [=](const T& v) {
                return std::find(expected.begin(), expected.end(), v) != expected.end();
            }
        );
    }

    // Single var expected data
    template <typename T>
    [[deprecated("Safe input is not fully \"safe\"")]]
    T s_input(
        const str& prompt,
        const T& expected,
        const str& error = "Invalid input!\n"
    ) {
        return s_input<T>(
            prompt,
            error,
            [=](const T& v) { return v == expected; }
        );
    }
}

#endif
