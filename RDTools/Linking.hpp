// Linking.hpp (Header Only)

#pragma once

#ifndef TOOLS_LINKING_HPP
#define TOOLS_LINKING_HPP

#include "FeatureCheck.hpp"

#include "Style.hpp"
#include "Types.hpp"
#include <iostream>
#include <format>
#include <memory>

#if __has_include(<cxxabi.h>)
    #define ITANIUM_ENABLED
    #include <cxxabi.h>
#endif

#if !defined(__WIN32)
#error "rdt.Linking are only for windows!"
#endif

#include <type_traits>
#include <cstdlib>
#include <exception>
#include <windows.h>

namespace rdt::Linking {
    using namespace rdt::Style;

    inline str GetFile(
        const str& File                 /* Base name of the .dll*/
    ) {
        if (File.size() >= 3 && File.substr(File.size() - 3) == "dll")
            return File;
        return std::format("{}.dll", File);
    }

    template<typename T>
    T LoadSymbol(
        const HMODULE lib,              /* File to be loaded */
        const str& EntryPoint           /* Entry point */
    ) {
        auto sym = rcast<T>(GetProcAddress(lib, EntryPoint.c_str()));
        if (!sym)
            throw std::runtime_error(std::format("Missing symbol '{}'", EntryPoint));
        return sym;
    }

    // Call function in .dll with any args
    template<typename Return, typename... Args>
    Return CallFunction(                /* Function I */
        str File,                       /* File to find */
        str EntryPoint,                 /* Function to find (disable magle!) */
        Args... args                    /* Args */
    ) {
        HMODULE hLib = LoadLibraryA(File.c_str());
        if (!hLib) throw std::runtime_error(std::format("\" {} \"Library load failed", File));

        using Type = Return(*)(Args...);

        auto func = rcast<Type>(GetProcAddress(hLib, EntryPoint.c_str()));
        if (!func) {
            FreeLibrary(hLib);
            throw std::runtime_error("Function not found");
        }

        if constexpr (std::is_void_v<Return>) {
            func(args...);
            FreeLibrary(hLib);
            return; // legal hanya untuk void
        } else {
            Return result = func(args...);
            FreeLibrary(hLib);
            return result;
        }

    }

    // Call dll with str msg
    inline void CallFunctionA(          /* Function II  */
        str& File,                      /* File to find */
        const str& Msg,                 /* Message to forward (str) */
        const str& EntryPoint,          /* Function to call (disable magle!) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    ) {
        File = std::format("{}", GetFile(File));        // File maker

        if(debug) std::cout << std::format("> Loading {}", File);   // Load the Lib using WinAPI (Clang)

        HMODULE Lib = LoadLibraryA(File.c_str());
        if (!Lib) {
            std::cout << std::format("> Failed to load {}", File);
            return;
        }

        // Function target
        const auto C_EntryPoint = std::make_unique<const char*>(std::format("{}", EntryPoint).c_str());

        // Function target args
        using Entry = int(*)(int, str);
        Entry EntryFunc = nullptr;
        // const auto EntryFunc = LoadSymbol<Entry>(Lib, *C_EntryPoint);

        try {
            EntryFunc = LoadSymbol<Entry>(Lib, EntryPoint);
        } catch (const std::exception& e) {
            std::cout << std::format("Error: {}", e.what());
            FreeLibrary(Lib);
            return;
        }

        // build fake argv for the DLL
        const str   argv_dll[] = {*C_EntryPoint, Msg};
        const int   argc_dll   = 2;

        if(debug) std::cout << std::format("> Running DLL...\n{}\n\n", std::format("{:-^{}}", " Begin ", TerminalSize) );

        int result = 0;

        try {
            result = EntryFunc(argc_dll, *argv_dll);
        } catch(std::exception e){
            std::cout << std::format("Error!");
            std::cerr << e.what();
        }

        str Result_s;
        if(result == 0) {
            Result_s = std::format("{}", result);
        } else {
            Result_s = ColorFG(std::format("{}", result), 0xFF5826);
        }

        if(debug) std::cout << std::format("\n\n{}\n> DLL returned {}", std::format("{:-^{}}", " End ", TerminalSize), Result_s);

        FreeLibrary(Lib);
    }

    // Call DLL with wstr
    inline void CallFunctionAW(         /* Function II  */
        str& File,                      /* File to find */
        const wstr& MsgW,               /* Message to forward (wstr) */
        const str& EntryPoint,          /* Function to call (auto mangle on main.cpp) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    ) {
        File = std::format("{}", GetFile(File));        // File name maker

        if (debug) std::cout << std::format("> Loading {}", File);

        HMODULE lib = LoadLibraryA(File.c_str());       // Load the lib using WinAPI (ANSI)
        if (!lib) {
            std::cout << std::format("> Failed to load {}", File);
            return;
        }

        // Function target — must stay narrow for GetProcAddress
        const auto C_EntryPoint = std::make_unique<const char*>(std::format("{}", EntryPoint).c_str());

        // Function target args
        using Entry = int(*)(int, wstr);
        Entry EntryFunc = nullptr;

        try {
            EntryFunc = LoadSymbol<Entry>(lib, EntryPoint);
        } catch (const std::exception& e) {
            std::cout << std::format("Error: {}", e.what());
            FreeLibrary(lib);
            return;
        }

        // build fake argv for the DLL
        const wstr argv_dll[] = {
            wstr(EntryPoint.begin(), EntryPoint.end()),
            MsgW
        };
        const i32 argc_dll = 2;

        if (debug)
            std::cout << std::format("> Running DLL...\n{}\n\n", std::format("{:-^{}}", " Begin ", TerminalSize));

        i32 result = 0;
        try {
            result = EntryFunc(argc_dll, *argv_dll);
        } catch (const std::exception& e) {
            std::cout << std::format("Exception: {}", e.what());
        }

        str Result_s;
        if (result == 0) {
            Result_s = std::format("{}", result);
        } else {
            Result_s = ColorFG(std::format("{}", result), 0xFF5826);
        }

        if (debug)
            std::cout << std::format("\n\n{}\n> DLL returned {}", std::format("{:-^{}}", " End ", TerminalSize), Result_s);

        FreeLibrary(lib);
    }

    // Call dll without any args
    inline void CallFunctionB(          /* Function III */
        str& File,                      /* File to find */
        const str& EntryPoint,          /* Function to call (disable magle!) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    ) {
        File = std::format("{}", GetFile(File));        // File name maker

        if(debug) std::cout << std::format("> Loading {}", File);

        const HMODULE lib = LoadLibraryA(File.c_str());  // Load the lib using WinAPI (Clang)
        if (!lib) {
            std::cout << std::format("> Failed to load {}", File);
            return;
        }

        // Function target
        const auto C_EntryPoint = std::make_unique<str>(std::format("{}", EntryPoint));

        // Function target args
        using Entry = int(*)(int, str);
        Entry EntryFunc = nullptr;

        try {
            EntryFunc = LoadSymbol<Entry>(lib, EntryPoint);
        } catch (const std::exception& e) {
            std::cout << std::format("Error: {}", e.what());
            FreeLibrary(lib);
            return;
        }

        // build fake argv for the DLL
        const str argv_dll[] = {*C_EntryPoint};
        const int   argc_dll = 1;

        if(debug) std::cout << std::format("> Running DLL...\n{}\n\n", std::format("{:-^{}}", " Begin ", TerminalSize) );

        int result = 0;

        try {
            result = EntryFunc(argc_dll, *argv_dll);
        } catch(std::exception e){
            std::cout << std::format("Error!");
            std::cerr << e.what();
        }

        str Result_s;
        if(result == 0) {
            Result_s = std::format("{}", result);
        } else {
            Result_s = ColorFG(std::format("{}", result), 0xFF5826);
        }

        if(debug) std::cout << std::format("\n\n{}\n> DLL returned {}", std::format("{:-^{}}", " End ", TerminalSize), Result_s);

        FreeLibrary(lib);
    }

    // Call dll file with C-like args (int argc, const char** argv)
    inline i32 CallFunctionC(           /* Function IV A */
        str& File,                      /* File to find */
        const str& EntryPoint,          /* Function to call (disable magle!) */
    //  const int Argc                  /* C argc, not really necessary */
    //  const char** Argv,              /* C argv, not really safe, mismatch can lead to crash */
        const vec<str> Args,            /* C argv (+argc), but safer */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    ) {
        File = GetFile(File);

        if (debug) std::cout << std::format("> Loading {}", File);

        // Load the lib using WinAPI (Clang)
        HMODULE Lib = LoadLibraryA(File.c_str());
        if (!Lib) {
            std::cout << std::format("> Failed to load {}", File);
            return -1;
        }

        // Create signature
        using Entry = int(*)(int, const char**);
        Entry EntryFunc = nullptr;

        // Try to find the function, use mangler if not using __declspec(dllexport)
        try {
            EntryFunc = LoadSymbol<Entry>(Lib, EntryPoint);
        } catch (const std::exception& e) {
            std::cout << std::format("Error: {}", e.what());
            FreeLibrary(Lib);
            return -1;
        }

        // Convert vector<string> -> vector<const char*>
        vec<cstr> argv;
        argv.reserve(Args.size() + 1);

        // First arg = entry point name (like argv[0])
        argv.push_back(EntryPoint.c_str());

        for (auto& a : Args){
            argv.push_back(a.c_str());
        }

        int argc = static_cast<int>(argv.size());

        if (debug){
            std::cout << std::format("> Running DLL...\n{}\n\n",
                std::format("{:-^{}}", " Begin ", TerminalSize)
            );
        }

        int result = 0;

        try {
            result = EntryFunc(argc, argv.data());
        } catch (const std::exception& e) {
            std::cout << std::format("Error!");
            std::cerr << e.what();
            return -1;
        }

        auto Result_s = (result == 0)
            ? std::format("{}", result)
            : ColorFG(std::format("{}", result), 0xFF5826);

        if (debug)
            std::cout << std::format("\n\n{}\n> DLL returned {}",
                std::format("{:-^{}}", " End ", TerminalSize),
                Result_s
            );

        FreeLibrary(Lib);
        return std::stoi(Result_s);
    }

    // Slightly safer CallFunctionC
    [[deprecated("This thing is basically the same as in CallFunctionC (without the _s)")]]
    [[maybe_unused]]
    inline i32 CallFunctionC_s(                /* Function IV B */
        str& File,                      /* File to find */
        const str& EntryPoint,          /* Finnction to call (disable magle!) */
        const vec<str>& Args,           /* C Argv in vector */
        i32 TerminalSize = 50,          /* Optional Terminal size */
        bool debug = true               /* Optional Debugging log */
    ) {
        File = GetFile(File);

        if (debug) std::cout << std::format("> Loading {}", File);

        HMODULE Lib = LoadLibraryA(File.c_str());
        if (!Lib) {
            std::cout << std::format("> Failed to load {}", File);
            return -1;
        }

        // expected C signature: i32 func(int, const char**)
        using Entry = int(__cdecl *)(int, const char**); // use __cdecl explicitly if DLL uses C-calling conv
        Entry EntryFunc = nullptr;

        try {
            EntryFunc = LoadSymbol<Entry>(Lib, EntryPoint);
        } catch (const std::exception& e) {
            std::cout << std::format("Error: {}", e.what());
            FreeLibrary(Lib);
            return -1;
        }

        // Build argv vector of stable pointers: ensure storage lifetime (we use strings owned here)
        vec<const char*> argv;
        argv.reserve(Args.size() + 2);

        // argv[0] = program/entry name
        argv.push_back(EntryPoint.c_str());

        for (const auto &s : Args) {
            argv.push_back(s.c_str());
        }

        // Null-terminate argv per C convention: argv[argc] == nullptr
        argv.push_back(nullptr);

        int argc = static_cast<i32>(argv.size() - 1); // exclude trailing nullptr

        if (debug) {
            std::cout << std::format("> Running DLL...\n{}\n\n", std::format("{:-^{}}", " Begin ", TerminalSize));
        }

        i32 result = -1;
        try {
            // call
            result = EntryFunc(argc, argv.data());
        } catch (const std::exception& e) {
            std::cout << std::format("Exception calling DLL: {}", e.what());
            // don't rethrow across modules
            result = -1;
        }

        if (debug) {
            auto Result_s = (result == 0) ? std::format("{}", result)
                                          : ColorFG(std::format("{}", result), 0xFF5826);
            std::cout << std::format("\n\n{}\n> DLL returned {}", std::format("{:-^{}}", " End ", TerminalSize), Result_s);
        }

        FreeLibrary(Lib);
        return result;
    }

    #if defined(ITANIUM_ENABLED)
    template <typename T>
    str RemoveSignature(
        const str& Func,                /* Mangled function name with itanium format */
        bool WithArgs = true            /* Include args or not*/
    ) {
        cstr Name = Func.c_str();
        int status = 0;
        std::unique_ptr<char, void(*)(void*)> res{
            abi::__cxa_demangle(Name, 0, 0, &status),
            std::free
        };
        return (status==0) ? res.get() : Name;
    }
    #endif
}

#endif
