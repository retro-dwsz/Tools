#pragma once

/* Per section includes
 *
 * Tools/OS/<OS>.API.hpp         All packed APIs
 * Tools/OS/<OS>.terminal.hpp    To get infos or do something else to current terminal
 * Tools/OS/<OS>.files.hpp       Files utility
 * Tools/OS/<OS>.sleep.hpp       Basically "sleep" using available OS API, in case you need extra-precise sleep
 * Tools/OS/<OS>.proc.hpp        The magic of "Read from"/"Write to" other process using available OS API, may not 100% stable, but worth to try ;)
 */

#if defined(__WIN32)
    #include "OS/Win32.API.hpp"
#elif defined(__linux__) && !defined(__ANDROID__)
    #include "OS/Linux.API.hpp"
#elif defined(__APPLE__)
    #include "OS/Apple.API.hpp"
#endif

/*
// Terminal utils
namespace Tools::OS::Terminal{
    i32 TerminalSize(cstr DIR = "X", const i32 offset = 0){ ... }

    i32 TerminalSizeWidth(const i32 offset = 0){return TerminalSize("X", offset);}
    i32 TerminalSizeHeight(const i32 offset = 0){return TerminalSize("Y", offset);}
    umap<cstr, i32> TerminalSizeMap(){
        return umap<cstr, i32>{{"X", TerminalSizeWidth(0)},{"Y", TerminalSizeHeight(0)}};
    }
}

// File utils
namespace Tools::OS::File {
    cstr cstr_safe(strv s, str& temp){ ... };
    bool WriteFile(strv path, strv text){ ... };
    str ReadFile(strv path){ ... };
    bool Exists(strv path){ ... };
    bool Remove(strv path){ ... };
    bool Move(strv from, strv to){ ... };
}

// OS Sleep
namespace Tools::OS::Sleep {
    inline void SleepMs(u32 ms){ ... };
    void SleepPrecise(f64 ms){ ... };
}

// Process hacks 
namespace Tools::OS::Process {
    template <typename T>
    T ReadFromProcess(idx PID, uintptr_t Address){ ... };
    
    template <typename T>
    bool WriteProcess(idx PID, uintptr_t Address, T data){ ... };{
    
    // Current process
    bool IsAdmin(){ ... };

    // Other process
    bool IsAdmin(idx pid){ ... };
}
*/