#pragma once

#include <iostream>
#include <string>

// Safe input with expected data type
namespace Tools::SafeInput {
    using str = std::string;
    // Without expected data
    template <typename T>
    T s_input(const std::string& prompt = "Input: ", const std::string& Error = "Invaid input!") {
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
        const str& prompt,
        const std::vector<T>& expected,
        const str& error = "Input tidak sesuai. Coba lagi.\n"
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
    T s_input(
        const str& prompt,
        const T& expected,
        const str& error = "Input tidak sesuai. Coba lagi.\n"
    ) {
        return s_input<T>(
            prompt,
            error,
            [=](const T& v) { return v == expected; }
        );
    }
}
