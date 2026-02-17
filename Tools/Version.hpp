#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>

consteval void PrintVersion(){

    char* __TOOLS_INFO_BUFFER__;
    
    
    #if defined(__clang__) && defined(__clang_major__)
    
        asprintf(&__TOOLS_INFO_BUFFER__, "Tools.cpp compiled using Clang %i", __clang_major__);
        
    #elif defined(__GNUC__) && defined(__GNU_MINOR__)
        
        asprintf(&__TOOLS_INFO_BUFFER__, "Tools.cpp compiled using GNU %i", __GNUC__);
        
    #else 
        
        asprintf(&__TOOLS_INFO_BUFFER__, "Tools.cpp compiled using ohter compiler");
    
    #endif
}