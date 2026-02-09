#include "Types.hpp"
#include <sstream>

namespace Formatter {
    using NumInteger = std::variant<i8, i16, i32, i64, u8, u16, u32, u64>;
    using NumFloating = std::variant<f32, f64, fld>;
    using Num = std::variant<i8, i16, i32, i64, u8, u16, u32, u64, f32, f64, fld>;

    // Helper function untuk memformat string integer
    str formatIntegerString(const str& numStr, u32 group, cstr separator) {
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

    // Method 1: Dengan variant untuk integer
    str Format(NumInteger num, u32 group, const char* separator) {
        return std::visit([group, separator](auto&& arg) -> str {
            // using T = std::decay_t<decltype(arg)>;
            std::stringstream ss;
            ss << arg;
            str numStr = ss.str();
            return formatIntegerString(numStr, group, separator);
        }, num);
    }

    // Method 1: Dengan variant untuk floating
    str Format(NumFloating num, u32 group, const char* separator) {
        return std::visit([group, separator](auto&& arg) -> str {
            // using T = std::decay_t<decltype(arg)>;
            std::stringstream ss;
            ss << std::fixed << arg;
            str numStr = ss.str();
            
            // Cari posisi titik desimal
            size_t dotPos = numStr.find('.');
            if (dotPos == std::string::npos) {
                return formatIntegerString(numStr, group, separator);
            }
            
            // Format bagian integer saja
            str intPart = numStr.substr(0, dotPos);
            str fracPart = numStr.substr(dotPos);
            
            return formatIntegerString(intPart, group, separator) + fracPart;
        }, num);
    }

    // Method 1: Global variant
    str Format(Num num, u32 group, const char* separator) {
        return std::visit([group, separator](auto&& arg) -> str {
            using T = std::decay_t<decltype(arg)>;
            if constexpr (std::is_floating_point_v<T>) {
                std::stringstream ss;
                ss << std::fixed << arg;
                str numStr = ss.str();
                
                size_t dotPos = numStr.find('.');
                if (dotPos == std::string::npos) {
                    return formatIntegerString(numStr, group, separator);
                }
                
                str intPart = numStr.substr(0, dotPos);
                str fracPart = numStr.substr(dotPos);
                
                return formatIntegerString(intPart, group, separator) + fracPart;
            } else {
                std::stringstream ss;
                ss << arg;
                str numStr = ss.str();
                return formatIntegerString(numStr, group, separator);
            }
        }, num);
    }

    // Method 2: Specialized functions
    str Format(i32 num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << num;
        return formatIntegerString(ss.str(), group, separator);
    }

    str Format(i64 num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << num;
        return formatIntegerString(ss.str(), group, separator);
    }

    str Format(u64 num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << num;
        return formatIntegerString(ss.str(), group, separator);
    }

    str Format(f32 num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << std::fixed << num;
        str numStr = ss.str();
        
        size_t dotPos = numStr.find('.');
        if (dotPos == std::string::npos) {
            return formatIntegerString(numStr, group, separator);
        }
        
        str intPart = numStr.substr(0, dotPos);
        str fracPart = numStr.substr(dotPos);
        
        return formatIntegerString(intPart, group, separator) + fracPart;
    }

    str Format(f64 num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << std::fixed << num;
        str numStr = ss.str();
        
        size_t dotPos = numStr.find('.');
        if (dotPos == std::string::npos) {
            return formatIntegerString(numStr, group, separator);
        }
        
        str intPart = numStr.substr(0, dotPos);
        str fracPart = numStr.substr(dotPos);
        
        return formatIntegerString(intPart, group, separator) + fracPart;
    }

    // Method 3: Dengan string
    str Format(str num, u32 group, const char* separator) {
        str numStr = num;
        
        // Validasi input
        bool hasDot = false;
        bool negative = false;
        str intPart, fracPart;
        
        // Handle tanda negatif
        size_t start = 0;
        if (!numStr.empty() && numStr[0] == '-') {
            negative = true;
            start = 1;
        }
        
        // Cari titik desimal
        size_t dotPos = numStr.find('.', start);
        if (dotPos != std::string::npos) {
            intPart = numStr.substr(start, dotPos - start);
            fracPart = numStr.substr(dotPos);
            hasDot = true;
        } else {
            intPart = numStr.substr(start);
        }
        
        // Format bagian integer
        str formattedInt = formatIntegerString(intPart, group, separator);
        
        // Tambahkan tanda negatif jika perlu
        if (negative) {
            formattedInt = "-" + formattedInt;
        }
        
        return hasDot ? formattedInt + fracPart : formattedInt;
    }

    // Template untuk tipe integer lainnya
    template<typename T>
    str Format(T num, u32 group, const char* separator) {
        std::stringstream ss;
        ss << num;
        return formatIntegerString(ss.str(), group, separator);
    }
}