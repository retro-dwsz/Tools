#pragma once

#include <iostream>
#include <limits>
#include <type_traits>
#include <stdexcept>
#include <string>
#include <variant>
#include <algorithm>

// Optional: Add fmt include if you want to use it
// #include <fmt/format.h>
// using fmt::print;
// using fmt::println;
// using fmt::format;

namespace Tools::NumStr {
    using str = std::string;

    // Using a simpler approach - just the basic numeric types
    using Numbers = std::variant<int32_t, int64_t, uint64_t, float, double>;

    // Helper type traits to check if a type is numeric
    template<typename T>
    struct is_numeric : std::disjunction<
        std::is_same<T, int32_t>,
        std::is_same<T, int64_t>,
        std::is_same<T, uint64_t>,
        std::is_same<T, float>,
        std::is_same<T, double>
    > {};

    template<typename T>
    constexpr bool is_numeric_v = is_numeric<T>::value;

    // Type-safe comparison helper for mixed numeric types
    template<typename T, typename U>
    bool Compare(T a, U b) {
        if constexpr (std::is_floating_point_v<T> || std::is_floating_point_v<U>) {
            return static_cast<double>(a) <= static_cast<double>(b);
        } else {
            return a <= b;
        }
    }

    // Improved range checking with proper type handling
    template<typename T, typename U, typename V>
    bool IsInRangeI(T value, U upper_bound, V lower_bound) {
        return Compare(lower_bound, value) && Compare(value, upper_bound);
    }

    template<typename T, typename U, typename V>
    bool IsInRange(const Numbers& var, const Numbers& upper_bound, const Numbers& lower_bound) {
        struct RangeChecker {
            bool operator()(T value, U upper, V lower) const {
                return IsInRangeI(value, upper, lower);
            }
        };

        return std::visit(RangeChecker{}, var, upper_bound, lower_bound);
    }

    // Convert string to number with proper type selection
    inline Numbers GetNumber(const str& var_input) {
        str var = var_input; // Copy to modify

        // Replace commas with dots for decimal separator
        std::ranges::replace(var.begin(), var.end(), ',', '.');

        if (var.empty()) {
            throw std::invalid_argument("Empty string provided");
        }

        // Check for floating point
        const bool has_decimal = var.find('.') != str::npos;
        const bool has_exponent = var.find('e') != str::npos || var.find('E') != str::npos;

        if (has_decimal || has_exponent) {
            // Handle floating point
            size_t idx{};
            try {
                double value = std::stod(var, &idx);

                // Check if entire string was consumed
                if (idx != var.size()) {
                    throw std::invalid_argument("Invalid number format");
                }

                return value;
            } catch (const std::out_of_range&) {
                throw std::out_of_range("Floating point number out of range");
            }
        } else {
            // Handle integer
            size_t idx = 0;
            try {
                const int64_t value = std::stoll(var, &idx);

                // Check if entire string was consumed
                if (idx != var.size()) {
                    throw std::invalid_argument("Invalid number format");
                }

                // Determine appropriate type based on value range
                if (value >= std::numeric_limits<int32_t>::min() && value <= std::numeric_limits<int32_t>::max()) {
                    return static_cast<int32_t>(value);
                } else if (value >= std::numeric_limits<int64_t>::min() && value <= std::numeric_limits<int64_t>::max()) {
                    return static_cast<int64_t>(value);
                } else if (value > std::numeric_limits<int64_t>::max()) {
                    return static_cast<uint64_t>(value);
                } else {
                    throw std::out_of_range("Integer value out of range");
                }
            } catch (const std::out_of_range&) {
                throw std::out_of_range("Integer number out of range");
            }
        }
    }

    // Template function to get input with specific type
    template<typename T>
    T GetInput(const str& prompt) {
        static_assert(is_numeric_v<T>, "T must be a numeric type");

        while (true) {
            std::cout << prompt;
            str line;

            if (!std::getline(std::cin, line)) {
                std::cout << "Error: EOF\n";
                continue;
            }

            try {
                auto num = GetNumber(line);

                // Try to convert to requested type
                return std::visit([&](auto&& value) -> T {
                    using ValueType = std::decay_t<decltype(value)>;
                    if constexpr (std::is_same_v<ValueType, T>) {
                        return value;
                    } else {
                        // Convert to requested type if possible
                        return static_cast<T>(value);
                    }
                }, num);

            } catch (const std::exception& e) {
                std::cout << "Invalid input! " << e.what() << "\n";
                std::cin.clear();
                std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            }
        }
    }

    // Specialization for getting Numbers variant
    inline Numbers GetInput(const str& prompt) {
        while (true) {
            std::cout << prompt;
            str line;

            if (!std::getline(std::cin, line)) {
                std::cout << "Error: EOF\n";
                continue;
            }

            try {
                return GetNumber(line);
            } catch (const std::exception& e) {
                std::cout << "Invalid input! " << e.what() << "\n";
                std::cin.clear();
                std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            }
        }
    }

    // Convert Numbers variant back to string
    inline str GetValue(const Numbers& num) {
        return std::visit([](auto&& value) -> str {
            return std::to_string(value);
        }, num);
    }

    // Type-safe getters
    template<typename T>
    T GetValueT(const Numbers& num) {
        static_assert(is_numeric_v<T>, "T must be a numeric type");
        return std::get<T>(num);
    }

    // Check the type of the stored value
    template<typename T>
    bool HoldsType(const Numbers& num) {
        return std::holds_alternative<T>(num);
    }

    // Get the type name as string
    inline str GetType(const Numbers& num) {
        return std::visit([](auto&& value) -> str {
            using T = std::decay_t<decltype(value)>;
            if constexpr (std::is_same_v<T, int32_t>) return "int32_t";
            else if constexpr (std::is_same_v<T, int64_t>) return "int64_t";
            else if constexpr (std::is_same_v<T, uint64_t>) return "uint64_t";
            else if constexpr (std::is_same_v<T, float>) return "float";
            else if constexpr (std::is_same_v<T, double>) return "double";
            return "unknown";
        },
        num);
    }
}

/* Example of Usage
int main() {
    // Get specific type
    int32_t n1 = NumStr::GetInput<int32_t>("Enter an integer: ");
    std::cout << "Got: " << n1 << " (type: " << NumStr::GetType(NumStr::GetNumber(std::to_string(n1))) << ")\n";

    // Get variant
    auto n2 = NumStr::GetInput<NumStr::Numbers>("Enter a number: ");
    std::cout << "Got: " << NumStr::GetValue(n2) << " (type: " << NumStr::GetType(n2) << ")\n";

    return 0;
}
*/

/* ----|----|----|----|----|---- Old Lib ----|----|----|----|----|---- */

// namespace NumStr {
//     // String -> Number converter
//     /* Example
//      * std::string var_s = "123";
//      * auto var_n = NumStr(var_s); // 123 (int32_t)
//      *
//      */
//     using str = std::string;
//
//     // using Integer = std::variant<int64_t, uint64_t>;
//     // using Float = std::variant<float, double, long double>;
//
//     // using Numbers = std::variant<Integer, Float>;
//     using Numbers = std::variant<int32_t, int64_t, uint64_t, float, double, long double>;
//
//     #define DOUBLE_T_MAX    1.79769e+308
//     #define DOUBLE_T_MIN    2.22507e-308
//
//     #define STREAM_MAX      9223372036854775807
//     #define STREAM_MIN      (-9223372036854775808)
//
//     bool IsInRange(Numbers var, Numbers UB, Numbers LB) {
//         return std::visit([](auto&& var, auto&& UB, auto&& LB) {
//             if (var >= LB && var <= UB) {
//                 return true;
//             }
//             return false;
//         }, var, UB, LB);
//     }
//
//     // Value getter from something with data type "Numbers", then convert it to specified data
//     Numbers GetNumber(str& var) {
//         if (var.find(',')) {
//             std::replace(var.begin(), var.end(), ',', '.');
//         }
//         try {
//             if (var.find('.') != str::npos || var.find(',') != str::npos) {
//                 size_t idx{};
//                 double_t v = std::stod(var, &idx);
//                 if (idx == var.size()) {
//                     return v;
//                 }
//             } else {
//                 size_t idx{};
//                 long long v = std::stoll(var, &idx);
//                 if (idx == var.size()) {
//                     if(IsInRange(v, INT32_MAX, INT32_MIN)){
//                         return static_cast<int32_t>(v);
//                     } else  if (IsInRange(v, INT64_MAX, INT64_MIN)) {
//                         return static_cast<int64_t>(v);
//                     } else if (v > INT64_MAX) {
//                         return static_cast<uint64_t>(v);
//                     } else if (v >= UINT64_MAX) {
//                         throw std::out_of_range("Angka terlalu besar!");
//                     } else if (IsInRange(v, DOUBLE_T_MAX, DOUBLE_T_MIN)) {
//                         return static_cast<double_t>(v);
//                     }
//                 }
//             }
//         } catch (...) {
//             throw std::invalid_argument("Invalid input: " + var);
//         }
//         throw std::invalid_argument("Invalid input: " + var);
//     }
//
//     // Get user input for data type `Numbers`
//     /* Todo: Make auto converter
//     use case:
//     ```
//     // int (static, will be it for the rest of runtime)
//     auto N1 = NumStr::GetInput<int32_t>("Enter something\n> ");
//
//     // Numbers (dynamic, can be changed from int->float, or something else)
//     auto N2 = NumStr::GetInput<NumStr::Numbers>("Enter something\n> ");
//     ```
//     */
//     Numbers GetInput(str Promt) {
//         while (true) {
//             str line;
//             if (!std::getline(std::cin, line)) {
//                 println("Error: EOF");
//                 continue;
//             } else {
//                 try {
//                     return GetNumber(line);
//                 } catch (const std::exception& e) {
//                     println("Invalid input! \n{}", e.what());
//                 }
//                 // Bersihkan buffer jika error
//                 std::cin.clear();
//                 std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
//             }
//         }
//     }
//
//     // Value getter in str
//     str GetValue(Numbers num) {
//         return std::visit([](auto&& num) -> str {
//             return format("{}", num);
//         }, num);
//     }
// }
