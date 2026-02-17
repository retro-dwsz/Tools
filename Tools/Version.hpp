#define _GNU_SOURCE

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define __TOOLS_CPP_VER_    10
#define __TOOLS_CPP_MAJOR__ 1
#define __TOOLS_CPP_MINOR__ 0

consteval void PrintVersion(){

    char __TOOLS_INFO_BUFFER__[64];

    
    #if defined(__clang__) && defined(__clang_major__)
    
        snprintf(__TOOLS_INFO_BUFFER__, sizeof(__TOOLS_INFO_BUFFER__), "Tools.cpp v%i.%i compiled using Clang %i", __TOOLS_CPP_MAJOR__, __TOOLS_CPP_MINOR__, __clang_major__);
        
    #elif defined(__GNUC__) && defined(__GNU_MINOR__)
        
        snprintf(__TOOLS_INFO_BUFFER__, sizeof(__TOOLS_INFO_BUFFER__), "Tools.cpp v%i.%i compiled using GNU %i", __TOOLS_CPP_MAJOR__, __TOOLS_CPP_MINOR__, __GNUC__);
        
    #else 
        
        snprintf(__TOOLS_INFO_BUFFER__, sizeof(__TOOLS_INFO_BUFFER__), "Tools.cpp v%i.%i compiled using other compiler", __TOOLS_CPP_MAJOR__, __TOOLS_CPP_MINOR__);
    
    #endif
}