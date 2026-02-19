#include "Tools/Vector/Vector.find.hpp"
#include <fmt/format.h>
#include <fmt/ranges.h>

#include <Tools/Vector.hpp>
#include <Tools/Types.hpp>
#include <Tools/IVec.hpp>

// template <typename T>
// class ivec {
//     private:
    
//     T* ivec_data;

//     //  Helper
//     inline idx Normalize(i64 i);

//     idx ivec_size;       // Actual size
//     idx ivec_capacity;   // How many elements that can be fitted without reallocation
    
//     public: 
//     ivec<T> uniques(idx n = 1);        // return remove duplicated values
//     void uniquesInl(idx n = 1);        // inline remove duplicated values
//     /* ... */
// };


void Win32() {
    ivec<str> Win32Libs = {
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

    fmt::println("Win32 Libs = {}", Win32Libs);
    Win32Libs.uniquesInl();
    fmt::println("Win32 Libs = {}", Win32Libs);
}

void Linux() {
    ivec<str> LinuxLibs = {

    };
}

i32 main(){
    Win32();
}
