#pragma once

#include <string>
#include <sstream>
#include <map>
#include <unordered_map>
#include <utility>
#include <variant>
#include <algorithm>

#include <charconv>

/* ---- Improved Argv<str, T> ---- */
namespace Tools::ArgsParseT {
    using str = std::string;
    using chr = char8_t;

    template <typename T>
    using DictT = std::unordered_map<str, T>;

    using Types = std::variant<str, chr, int32_t, int64_t, uint64_t, float, double>;

    template<typename T>
    struct IsNumeric : std::disjunction<
        /* ---- Texts ---- */
        std::is_same<T, str>,
        std::is_same<T, chr>,

        /* ---- Integers ---- */
        std::is_same<T, int32_t>,
        std::is_same<T, int64_t>,
        std::is_same<T, uint64_t>,

        /* ---- Floats ---- */
        std::is_same<T, float>,
        std::is_same<T, double>
    > {};


    template<typename T>
    constexpr bool IsNumeric_v = IsNumeric<T>::value;

    // Convert string to number with proper type selection
    Types GetValue(const str& var_input) {
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

    // Convert Types variant to specific type
    template<typename TargetType>
    TargetType ConvertType(const Types& value) {
        if constexpr (std::is_same_v<TargetType, str>) {
            return std::visit([](auto&& arg) -> str {
                using T = std::decay_t<decltype(arg)>;
                if constexpr (std::is_same_v<T, str>) {
                    return arg;
                } else if constexpr (std::is_same_v<T, chr>) {
                    return std::string(1, arg);
                } else {
                    return std::to_string(arg);
                }
            }, value);
        } else if constexpr (std::is_same_v<TargetType, chr>) {
            return std::visit([](auto&& arg) -> chr {
                using T = std::decay_t<decltype(arg)>;
                if constexpr (std::is_same_v<T, str>) {
                    return arg.empty() ? '\0' : arg[0];
                } else if constexpr (std::is_same_v<T, chr>) {
                    return arg;
                } else {
                    return static_cast<chr>(arg);
                }
            }, value);
        } else {
            // For numeric types
            return std::visit([](auto&& arg) -> TargetType {
                using T = std::decay_t<decltype(arg)>;
                if constexpr (std::is_same_v<T, TargetType>) {
                    return arg;
                } else if constexpr (std::is_arithmetic_v<T> && std::is_arithmetic_v<TargetType>) {
                    return static_cast<TargetType>(arg);
                } else if constexpr (std::is_same_v<T, str>) {
                    // Try to parse string to target type
                    if constexpr (std::is_integral_v<TargetType>) {
                        TargetType result;
                        auto [ptr, ec] = std::from_chars(arg.data(), arg.data() + arg.size(), result);
                        if (ec == std::errc{}) {
                            return result;
                        } else {
                            throw std::invalid_argument("Cannot convert string to requested type");
                        }
                    } else if constexpr (std::is_floating_point_v<TargetType>) {
                        // Use stof/stod based on TargetType
                        if constexpr (std::is_same_v<TargetType, float>) {
                            return std::stof(arg);
                        } else if constexpr (std::is_same_v<TargetType, double>) {
                            return std::stod(arg);
                        }
                    }
                } else {
                    throw std::invalid_argument("Cannot convert between incompatible types");
                }
                return "error!";
            }, value);
        }
    }

    // Parser: argc + argv[] -> dictionary<str, Types>
    DictT<Types> ParseArgvT(const int argc, const char* argv[]) {
        DictT<Types> args;

        for (auto i = 1; i < argc; ++i) {
            std::string token(argv[i]);

            // Process only arguments start with "-"
            if (token.rfind('-', 0) == 0) {
                // Remove leading dashes
                std::string clean_token = token;
                while (!clean_token.empty() && clean_token[0] == '-') {
                    clean_token = clean_token.substr(1);
                }

                // Format: param=value or param
                auto eqPos = clean_token.find('=');
                if (eqPos != std::string::npos) {
                    std::string key = clean_token.substr(0, eqPos);   // param
                    std::string val = clean_token.substr(eqPos + 1);  // value
                    args[key] = GetValue(val);
                } else {
                    // Boolean flag or parameter without value
                    // Check if next argument is a value (not starting with -)
                    if (i + 1 < argc && argv[i + 1][0] != '-') {
                        args[clean_token] = GetValue(argv[++i]); // Consume next argument as value
                    } else {
                        args[clean_token] = str("true"); // Boolean flag
                    }
                }
            }
        }
        return args;
    }

    // TODO: Make GetArgs with and without default
    // Get args with multiple possible keys
    template<typename T, typename... Keys>
    T GetArgs(const DictT<Types>& args, Keys&&... keys) {
        static_assert(sizeof...(keys) > 0, "At least one key must be provided");

        const Types* result = find_value(args, std::forward<Keys>(keys)...);
        if (result) {
            return ConvertType<T>(*result);
        }
        throw std::out_of_range("None of the provided keys were found");
    }

    // Get args with multiple possible keys and default value
    template<typename T, typename... Keys>
    T GetArgsD(const DictT<Types>& args, const T& Default, Keys&&... keys) {
        static_assert(sizeof...(keys) > 0, "At least one key must be provided");

        const Types* result = find_value(args, std::forward<Keys>(keys)...);
        if (result) {
            try {
                return ConvertType<T>(*result);
            } catch (const std::exception&) {
                return Default;
            }
        }
        return Default;
    }
}
