#pragma once

#include "../Types.hpp"
#include <iomanip>
#include <string>
#include <type_traits>
#include <concepts>
#include <format>
#include <regex>

namespace Tools::FormatNumber {   
    using NumInteger = tvar<i8, i16, i32, i64, u8, u16, u32, u64>;
    using NumFloating = tvar<f32, f64, fld>;
    using Num = tvar<i8, i16, i32, i64, u8, u16, u32, u64, f32, f64, fld>;
}

using std::visit, std::invalid_argument, std::fixed, std::setprecision, std::format;

namespace Tools::FormatNumber::Internal {
    /* - - - - - Helper Functions - - - - - */
    // Format bagian integer dari string
    // str FormatIntegerPart(const str& intPart, u32 groupSize, const str& separator) {
    //     if (groupSize == 0 || intPart.length() <= groupSize) {
    //         return intPart;
    //     }
        
    //     str result;
    //     i64 len = static_cast<i64>(intPart.length());
    //     i64 firstGroupSize = len % groupSize;
        
    //     // Handle grup pertama
    //     if (firstGroupSize > 0) {
    //         result = intPart.substr(0, firstGroupSize);
    //         if (len > groupSize) {
    //             result += separator;
    //         }
    //     }
        
    //     // Handle grup selanjutnya
    //     for (i64 i = firstGroupSize; i < len; i += groupSize) {
    //         result += intPart.substr(i, groupSize);
    //         if (i + groupSize < len) {
    //             result += separator;
    //         }
    //     }
        
    //     return result;
    // }

    // Helper function untuk memformat string integer
    str FormatIntegerPart(const str& numStr, u32 group, cstr separator) {
        if (group == 0) return numStr;
        
        str result;
        u32 count = 0;
        
        // Iterasi dari belakang
        for (auto it = numStr.rbegin(); it != numStr.rend(); ++it) {
            if (count == group && *it != '-') {
                result.insert(result.begin(), *separator);
                count = 0;
            }
            result.insert(result.begin(), *it);
            count++;
        }
        
        return result;
    }
    
    // Extract integer and fractional parts
    std::pair<str, str> SplitNumber(const str& numStr) {
        size_t dotPos = numStr.find('.');
        if (dotPos == str::npos) {
            return {numStr, ""};
        }
        return {
            numStr.substr(0, dotPos),
            numStr.substr(dotPos)
        };
    }
    
    // Convert any number to string
    // Integers
    template<typename T>
    requires std::integral<T>
    str IntegerToString(T value) {
        // Fast path menggunakan to_chars (C++17)
        char buffer[64];
        auto [ptr, ec] = std::to_chars(buffer, buffer + sizeof(buffer), value);
        
        if (ec == std::errc()) {
            return str(buffer, ptr);
        }
        
        // Fallback
        return std::to_string(value);
    }
    
    // Floating point
    template<typename T>
    requires std::is_floating_point_v<T>
    str FloatToString(T value, int precision = -1) {
        if (std::isnan(value)) return "NaN";
        if (std::isinf(value)) return value > 0 ? "Infinity" : "-Infinity";
        
        std::stringstream ss;
        
        if (precision < 0) {
            // Precision default berdasarkan tipe
            if constexpr (std::is_same_v<T, f32>) precision = 9;
            else if constexpr (std::is_same_v<T, f64>) precision = 17;
            else precision = 21; // long double
        }
        
        ss << std::setprecision(precision);
        
        // Pilih format berdasarkan magnitude
        T abs_val = std::abs(value);
        
        if (abs_val == 0) return "0";
        
        if (abs_val >= 1e6 || abs_val <= 1e-6) {
            ss << std::scientific << value;
        } else {
            ss << std::fixed << value;
        }
        
        str result = ss.str();
        
        // Cleanup
        size_t dot_pos = result.find('.');
        if (dot_pos != str::npos) {
            // Remove trailing zeros
            result.erase(result.find_last_not_of('0') + 1, str::npos);
            if (result.back() == '.') result.pop_back();
            
            // Fix scientific notation
            size_t e_pos = result.find('e');
            if (e_pos != str::npos) {
                if (result[e_pos + 1] == '+') result.erase(e_pos + 1, 1);
            }
        }
        
        return result;
    }

    // Fixed types
    str NumberToString(Num N) {
        auto Num_str = std::visit([](auto&& value) -> str {
            using T = std::decay_t<decltype(value)>;
            
            std::stringstream ss;
            
            if constexpr (std::is_integral_v<T>) {
                if constexpr (std::is_signed_v<T>) {
                    ss << static_cast<i64>(value);
                } else {
                    ss << static_cast<u64>(value);
                }
            }
            else if constexpr (std::is_same_v<T, f32>) {
                ss << std::setprecision(9) << value; // 7 digit + buffer
            }
            else if constexpr (std::is_same_v<T, f64>) {
                ss << std::setprecision(17) << value; // 15 digit + buffer
            }
            else if constexpr (std::is_same_v<T, fld>) {
                ss << std::setprecision(21) << value; // 18 digit + buffer
            }
            else {
                // Fallback
                ss << value;
            }
            
            str result = ss.str();
            
            // Untuk floating point, hapus trailing zeros
            if constexpr (std::is_floating_point_v<T>) {
                size_t dot_pos = result.find('.');
                if (dot_pos != str::npos) {
                    // Hapus trailing zeros
                    result.erase(result.find_last_not_of('0') + 1, str::npos);
                    
                    // Hapus decimal point jika tidak ada digit setelahnya
                    if (result.back() == '.') {
                        result.pop_back();
                    }
                }
            }
            
            return result;
        }, N);
        
        return Num_str;
    }

    // Convert number to string (template version)
    template<typename T>
    str NumberToString(T number) {
        if constexpr (std::is_integral_v<T>) {
            return NumberToString(Num{number});
        } else if constexpr (std::is_floating_point_v<T>) {
            return NumberToString(Num{number});
        } else {
            std::stringstream ss;
            ss << number;
            return ss.str();
        }
    }
}


/* - - - - - Public Interface (Integer) - - - - - */
namespace Tools::FormatNumber {
    // 1. For tvar<Num>
    str Format(NumInteger num, u32 group, const char* separator) {
        return std::visit([group, separator](auto&& arg) -> str {
            // using T = std::decay_t<decltype(arg)>;
            std::stringstream ss;
            ss << arg;
            str numStr = ss.str();
            return Internal::FormatIntegerPart(numStr, group, separator);
        }, num);
    }
    
    // 2. For string input
    str Format(const str& numberStr = "2713.14159", u32 groupSize = 3, cstr separator = "'") {
        // Validasi input
        if (numberStr.empty()) return "";
        
        // Regex untuk validasi format angka
        std::regex numberRegex(R"(^-?\d+(\.\d+)?$)");
        if (!std::regex_match(numberStr, numberRegex)) {
            throw std::invalid_argument(format("Invalid number format: {}", numberStr));
        }
        
        // Pisahkan bagian integer dan fractional
        auto [intPart, fracPart] = Internal::SplitNumber(numberStr);
        
        // Handle negative numbers
        bool isNegative = false;
        if (!intPart.empty() && intPart[0] == '-') {
            isNegative = true;
            intPart = intPart.substr(1); // Remove minus sign
        }
        
        // Format bagian integer
        str formattedInt = Internal::FormatIntegerPart(intPart, groupSize, separator);
        
        // Gabungkan kembali
        str result = (isNegative ? "-" : "") + formattedInt + fracPart;
        return result;
    }
    
    // 3. For C-style string
    str Format(cstr numberStr = "2713.14159", u32 groupSize = 3, cstr separator = "'") {
        return Format(str(numberStr), groupSize, separator).c_str();
    }
    
    // 4. Template for integral types
    template<typename T>
    str Format(T num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << num;
        return Internal::FormatIntegerPart(ss.str(), group, separator);
    }

    // 6. For i8/u8
    str Format(i8 num, u32 group, const char* separator) {
        return std::to_string(num);
    }
    str Format(u8 num, u32 group, const char* separator) {
        return std::to_string(num);
    }
}

/* - - - - - Public Interface (Float) - - - - - */
// 5. Template for floating point types
namespace Tools::FormatNumber {
    str Format(Num num, u32 group, const char* separator) {
        return std::visit([group, separator](auto&& arg) -> str {
            using T = std::decay_t<decltype(arg)>;
            if constexpr (std::is_floating_point_v<T>) {
                std::stringstream ss;
                ss << std::fixed << arg;
                str numStr = ss.str();
                
                size_t dotPos = numStr.find('.');
                if (dotPos == std::string::npos) {
                    return Internal::FormatIntegerPart(numStr, group, separator);
                }
                
                str intPart = numStr.substr(0, dotPos);
                str fracPart = numStr.substr(dotPos);
                
                return Internal::FormatIntegerPart(intPart, group, separator) + fracPart;
            } else {
                std::stringstream ss;
                ss << arg;
                str numStr = ss.str();
                return Internal::FormatIntegerPart(numStr, group, separator);
            }
        }, num);
    }

    str Format(f32 num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << std::fixed << num;
        std::string numStr = ss.str();
        
        size_t dotPos = numStr.find('.');
        if (dotPos == std::string::npos) {
            return Internal::FormatIntegerPart(numStr, group, separator);
        }
        
        std::string intPart = numStr.substr(0, dotPos);
        std::string fracPart = numStr.substr(dotPos);
        
        return Internal::FormatIntegerPart(intPart, group, separator) + fracPart;
    }

    str Format(f64 num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << std::fixed << num;
        std::string numStr = ss.str();
        
        size_t dotPos = numStr.find('.');
        if (dotPos == std::string::npos) {
            return Internal::FormatIntegerPart(numStr, group, separator);
        }
        
        std::string intPart = numStr.substr(0, dotPos);
        std::string fracPart = numStr.substr(dotPos);
        
        return Internal::FormatIntegerPart(intPart, group, separator) + fracPart;
    }
}

/* - - - - - Additional Features - - - - - */
namespace Tools::FormatNumber {
    // Format with locale (thousands separator berdasarkan locale)
    str FormatWithLocale(Num number, const std::locale& loc = std::locale("")) {
        return visit([&loc](auto&& arg) {
            std::stringstream ss;
            ss.imbue(loc);
            
            if constexpr (std::is_integral_v<decltype(arg)>) {
                ss << arg;
            } else {
                ss << fixed << setprecision(6) << arg;
            }
            return ss.str();
        }, number);
    }
    
    // Format dengan suffix (K, M, B, T)
    str FormatWithSuffix(f64 number, u32 decimals = 1, u32 groupSize = 3, cstr separator = "'") {
        constexpr cstr suffixes[] = {"", "K", "M", "B", "T"};
        i32 suffixIndex = 0;
        
        bool isNegative = number < 0;
        number = std::abs(number);
        
        // f64 original = number;
        while (number >= 1000.0 && suffixIndex < 4) {
            number /= 1000.0;
            suffixIndex++;
        }
        
        if (isNegative) {
            number = -number;
        }
        
        sstream oss;
        oss << fixed << setprecision(decimals) << number;
        str numStr = Format(oss.str(), groupSize, separator);
        
        // Remove trailing zeros for decimal part
        if (decimals > 0) {
            size_t dotPos = numStr.find('.');
            if (dotPos != str::npos) {
                size_t lastNonZero = numStr.find_last_not_of('0');
                if (lastNonZero == dotPos) {
                    numStr = numStr.substr(0, dotPos); // Remove dot too
                } else if (lastNonZero > dotPos) {
                    numStr = numStr.substr(0, lastNonZero + 1);
                }
            }
        }
        
        return numStr + suffixes[suffixIndex];
    }
    
    // Parse formatted number back to double
    f64 ParseFormatted(const str& formattedStr, cstr separator = "'") {
        str cleanStr = formattedStr;
        
        // Remove all separators
        size_t pos = 0;
        while ((pos = cleanStr.find(separator, pos)) != str::npos) {
            cleanStr.erase(pos, strlen(separator));
        }
        
        // Remove other possible thousand separators
        std::erase(cleanStr, ',');
        std::erase(cleanStr, ' ');
        std::erase(cleanStr, '_');
        
        try {
            return std::stod(cleanStr);
        } catch (...) {
            throw std::invalid_argument("Cannot parse: " + formattedStr);
        }
    }
}

