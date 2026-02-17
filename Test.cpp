#include <cstdio>
#include <format>
#include <string.h>
#include <string>

#include "../lib/clang/21/include/stddef.h"
#include <../lib/clang/21/include/stddef.h>

int main(){
    const char* t1 = "Tools-cpp is awsome!";
    const char* t2 = "v1.0";
    char t3[128];

    snprintf(t3, sizeof(t3), "%s Current verison is %s", t1, t2);

    std::string tx = std::format("{}", t3);

    std::printf(
        "%s\n\nThat string is %llu char long and took %llu bytes of your memory",
        tx.c_str(),
        tx.length(),
        sizeof(tx.c_str())
    );

    return 0;
}