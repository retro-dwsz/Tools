#include <fmt/format.h>
#include <fmt/ranges.h>

#include <Tools/Vector.hpp>
#include <Tools/Types.hpp>
#include <Tools/IVec.hpp>

// #include "../../../Tools/Tools/Vector.hpp"
// #include "../../../Tools/Tools/Types.hpp"
// #include "../../../Tools/Tools/IVec.hpp"

// template <typename T>
// void RemoveDuplicates(vec<T>& Data, const idx MaxCount = 1) {
//     if (MaxCount == 0) {
//         Data.clear();
//         return;
//     }

//     umap<T, idx> count;
//     vec<T> result;
//     result.reserve(Data.size());

//     for (const auto& item : Data) {
//         idx& c = count[item];
//         if (c < MaxCount) {
//             ++c;
//             result.push_back(item);
//         }
//     }

//     Data = std::move(result);
// }

void vec_test(){
    vec<str> Win32{
        "fstream",
        "filesystem",
        "unistd.h",
        "sys/stat.h",
        "cstdio",
        "mach/mach.h",
        "unistd.h",
        "sys/types.h",
        "time.h",
        "errno.h",
        "sys/ioctl.h",
        "unistd.h",
        "cstdio",
        "iostream",
    };
    
    uset<str> _Apple(Win32.begin(), Win32.end());
    
    fmt::println("Win32: {}", Win32);
    Tools::Vector::RemoveDuplicatesInl(Win32);
    fmt::println("Win32: {}\n", Win32);
}

void ivec_test(){
    ivec<str> Win32{
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

    fmt::println("Win32: {}", Win32);
    Win32.uniquesInl();
    fmt::println("Win32: {}", Win32);
}

i32 main(){
    vec_test();
    ivec_test();
}