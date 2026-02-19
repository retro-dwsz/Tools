#include <fmt/format.h>
#include <fmt/ranges.h>

#include <Tools/Vector.hpp>
#include <Tools/Types.hpp>
#include <Tools/IVec.hpp>

// // Remove duplicated values for any others
// template<typename T>
// vec<T> RemoveDuplicates(const vec<T>& Data, const idx MaxCount = 1) {
//     vec<T> Out(Data);
//     if (MaxCount == 0) {
//         Out.clear();
//         return Data;
//     }

//     umap<T, i32> count;
//     vec<T> result;
//     result.reserve(Out.size());

//     for (const auto& item : Out) {
//         i32& c = count[item];
//         if (c < MaxCount) {
//             ++c;
//             result.push_back(item);
//         }
//     }
    
//     Out = std::move(result);
//     return Out;
// }

// // Remove duplicated values inline
// template <typename T>
// void RemoveDuplicates(vec<T>& Data, const idx MaxCount = 1) {
//     if (MaxCount == 0) {
//         Data.clear();
//         return;
//     }

//     umap<T, i32> count;
//     vec<T> result;
//     result.reserve(Data.size());

//     for (const auto& item : Data) {
//         i32& c = count[item];
//         if (c < MaxCount) {
//             ++c;
//             result.push_back(item);
//         }
//     }

//     Data = std::move(result);
// }

void Win32() {
    ivec Win32Libs = {
        "fileapi.h",
        "windows.h",
        "fileapi.h",
        "windows.h",
        "winnt.h",
        "winspool.h",
        "fileapi.h",
        "windows.h",
        "winnt.h",
        "winspool.h",
        "iostream",
        "format"
    };
    
    ivec Win32LibsV = Tools::Vector::RemoveDuplicates(Win32Libs.toVector());

    fmt::println("Win32 Libs = {}", Win32Libs);
    fmt::println("Win32 Libs = {}", Win32LibsV);
}

void Linux() {
    ivec<str> LinuxLibs = {

    };
}

i32 main(){
    Win32();
}
