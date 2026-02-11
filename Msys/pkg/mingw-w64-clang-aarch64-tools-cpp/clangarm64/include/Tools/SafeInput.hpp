#pragma once

#include "Types.hpp"
#include <iostream>

// Safe input with expected data type
namespace Tools::SafeInput {
    // Without expected data
    template <typename T>
    T s_input(cref<str> prompt = "Input: ", cref<str> Error = "Invaid input!") {
        T value{};
        while (true) {
            std::cout << prompt;

            if (std::cin >> value) {
                return value; // Sukses: input valid
            }

            std::cout << Error;
            std::cin.clear();

            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        }
    }

    // Container expected data
    template <typename T>
    T s_input(
        cref<str> prompt,
        cref<vec<T>> expected,
        cref<str> error = "Invalid input!\n"
    ) {
        return s_input<T>(
            prompt,
            error,
            [=](cref<T> v) {
                return std::find(expected.begin(), expected.end(), v) != expected.end();
            }
        );
    }

    // Single var expected data
    template <typename T>
    T s_input(
        cref<str> prompt,
        cref<T> expected,
        cref<str> error = "Invalid input!\n"
    ) {
        return s_input<T>(
            prompt,
            error,
            [=](cref<T> v) { return v == expected; }
        );
    }
}
