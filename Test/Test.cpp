#include <cstdio>
#include <format>
#include <string>
#include <string.h>

#if defined(__clang__) && defined(__clang_major__)
    #define COMPILER    "Clang"
    #define VERSION     __clang_major__
#elif defined(__GNUC__) && defined(__GNU_MINOR__)
    #define COMPILER    "GNU"
    #define VERSION     __GNUC__
#else
    #define COMPILER    "Other"
    #define VERSION     0
#endif

#define FIRST(Text) &Text[0]
#define LAST(Text) &Text[strlen(Text)-1]

// #include <D:/Code/Msys2/Files/clang64/lib/clang/21/include/stdint.h>
// #include <../lib/clang/21/include/stdint.h>


int main(){
    const char* t1 = "Tools-cpp is awsome!";
    const char* t2 = "v1.0";
    char t3[128];
    char t4[128];

    snprintf(t3, sizeof(t3), "%s Current verison is %s", t1, t2);
    snprintf(t4, sizeof(t4), " using compiler %s version %d with standard %ld", COMPILER, VERSION, __cplusplus);
    strcat(t3, t4);

    char* First = FIRST(t3); // &t3[0];
    char* Last  = LAST(t3);  // &t3[strlen(t3)-1];

    std::string tx = std::format("{}", t3);

    std::printf(
        "%s\n\n> That string above is %llu char long and took %llu bytes of your memory\n> Pointers are at 0x%p..0x%p",
        tx.c_str(),
        tx.length(),
        sizeof(tx.c_str()),
        First, Last
    );

    return 0;
}

/*

commands:

- clang++ Test/Test.cpp -std=c++23
- clang++ -E Test/Test.cpp -o Test/Test.Processed.cpp -std=c++23 -O3
- clang++ -S Test/Test.cpp -o Test/Test.Assembly.ll -std=c++23 -O3
- clang++ -S -emit-llvm Test/Test.cpp -o Test/Test.Assembly.ll -std=c++23 -O3

*/