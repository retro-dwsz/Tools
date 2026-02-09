// Linking.hpp (Header Only)

#pragma once

#include <Tools/Style.hpp>

#include <iostream>
#include <print>

#include <memory>

#if __has_include(<cxxabi.h>)
#include <cxxabi.h>
#endif

#include <type_traits>
#include <cstdlib>
#include <vector>
#include <string>

#include <exception>
#include <windows.h>

using str   = std::string;
using wstr  = std::wstring;
using c_str = const char*;

namespace Tools::Linking {
    str GetFile(const str& File) {
        if (File.size() >= 3 && File.substr(File.size() - 3) == "dll")
            return File;
        return fmt::format("{}.dll", File);
    }

    template<typename T>
    T LoadSymbol(const HMODULE lib, const str& name) {
        auto sym = reinterpret_cast<T>(GetProcAddress(lib, name.c_str()));
        if (!sym)
            throw std::runtime_error(fmt::format("Missing symbol '{}'", name));
        return sym;
    }

    // Call function in .dll with args
    template<typename Return, typename... Args>
    Return CallFunction(                /* Function I */
        std::string File,               /* File to find */
        std::string EntryPoint,         /* Function to find (auto magle on main.cpp) */
        Args... args                    /* Args */
    ) {
        HMODULE hLib = LoadLibraryA(File.c_str());
        if (!hLib) throw std::runtime_error(std::format("\" {} \"Library load failed", File));

        using Type = Return(*)(Args...);

        auto func = reinterpret_cast<Type>(GetProcAddress(hLib, EntryPoint.c_str()));
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

    // Call dll with std::string msg
    void CallFunctionA(                 /* Function II  */
        str& File,                      /* File to find */
        const str& Msg,                 /* Message to forward (std::string) */
        const str& EntryPoint,          /* Function to call (auto magle on main.cpp) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    ) {
        File = fmt::format("{}", GetFile(File));        // File maker

        if(debug) std::println("> Loading {}", File);   // Load the Lib using WinAPI (Clang)

        HMODULE Lib = LoadLibraryA(File.c_str());
        if (!Lib) {
            std::println("> Failed to load {}", File);
            return;
        }

        // Function target
        const auto C_EntryPoint = std::make_unique<const char*>(fmt::format("{}", EntryPoint).c_str());

        // Function target args
        using Entry = int(*)(int, str);
        Entry EntryFunc = nullptr;
        // const auto EntryFunc = LoadSymbol<Entry>(Lib, *C_EntryPoint);

        try {
            EntryFunc = LoadSymbol<Entry>(Lib, EntryPoint);
        } catch (const std::exception& e) {
            std::println("Error: {}", e.what());
            FreeLibrary(Lib);
            return;
        }

        // build fake argv for the DLL
        const str   argv_dll[] = {*C_EntryPoint, Msg};
        const int   argc_dll   = 2;

        if(debug) std::println("> Running DLL...\n{}\n\n", fmt::format("{:-^{}}", " Begin ", TerminalSize) );

        int result = 0;

        try {
            result = EntryFunc(argc_dll, *argv_dll);
        } catch(std::exception e){
            std::println("Error!");
            std::cerr << e.what();
        }

        str Result_s;
        if(result == 0) {
            Result_s = fmt::format("{}", result);
        } else {
            Result_s = Tools::Styling::Colorize(fmt::format("{}", result), 0xFF5826);
        }

        if(debug) std::println("\n\n{}\n> DLL returned {}", fmt::format("{:-^{}}", " End ", TerminalSize), Result_s);

        FreeLibrary(Lib);
    }

    // Call DLL with std::wstring
    void CallFunctionAW(                /* Function II  */
        str& File,                      /* File to find */
        const wstr& MsgW,               /* Message to forward (std::wstring) */
        const str& EntryPoint,          /* Function to call (auto mangle on main.cpp) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    ) {
        File = fmt::format("{}", GetFile(File));        // File name maker

        if (debug) std::println("> Loading {}", File);

        HMODULE lib = LoadLibraryA(File.c_str());       // Load the lib using WinAPI (ANSI)
        if (!lib) {
            std::println("> Failed to load {}", File);
            return;
        }

        // Function target — must stay narrow for GetProcAddress
        const auto C_EntryPoint = std::make_unique<const char*>(fmt::format("{}", EntryPoint).c_str());

        // Function target args
        using Entry = int(*)(int, std::wstring);
        Entry EntryFunc = nullptr;

        try {
            EntryFunc = LoadSymbol<Entry>(lib, EntryPoint);
        } catch (const std::exception& e) {
            std::println("Error: {}", e.what());
            FreeLibrary(lib);
            return;
        }

        // build fake argv for the DLL
        const std::wstring argv_dll[] = {
            std::wstring(EntryPoint.begin(), EntryPoint.end()),
            MsgW
        };
        const int argc_dll = 2;

        if (debug)
            std::println("> Running DLL...\n{}\n\n", fmt::format("{:-^{}}", " Begin ", TerminalSize));

        int result = 0;
        try {
            result = EntryFunc(argc_dll, *argv_dll);
        } catch (const std::exception& e) {
            std::println("Exception: {}", e.what());
        }

        str Result_s;
        if (result == 0) {
            Result_s = fmt::format("{}", result);
        } else {
            Result_s = Tools::Styling::Colorize(fmt::format("{}", result), 0xFF5826);
        }

        if (debug)
            std::println("\n\n{}\n> DLL returned {}", fmt::format("{:-^{}}", " End ", TerminalSize), Result_s);

        FreeLibrary(lib);
    }

    // Call dll without any args
    void CallFunctionB(                 /* Function III */
        str& File,                      /* File to find */
        const str& EntryPoint,          /* Function to call (auto magle on main.cpp) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    ) {
        File = fmt::format("{}", GetFile(File));        // File name maker

        if(debug) std::println("> Loading {}", File);

        HMODULE lib = LoadLibraryA(File.c_str());       // Load the lib using WinAPI (Clang)
        if (!lib) {
            std::println("> Failed to load {}", File);
            return;
        }

        // Function target
        const auto C_EntryPoint = std::make_unique<str>(fmt::format("{}", EntryPoint));

        // Function target args
        using Entry = int(*)(int, str);
        Entry EntryFunc = nullptr;

        try {
            EntryFunc = LoadSymbol<Entry>(lib, EntryPoint);
        } catch (const std::exception& e) {
            std::println("Error: {}", e.what());
            FreeLibrary(lib);
            return;
        }

        // build fake argv for the DLL
        const str argv_dll[] = {*C_EntryPoint};
        const int   argc_dll = 1;

        if(debug) std::println("> Running DLL...\n{}\n\n", fmt::format("{:-^{}}", " Begin ", TerminalSize) );

        int result = 0;

        try {
            result = EntryFunc(argc_dll, *argv_dll);
        } catch(std::exception e){
            std::println("Error!");
            std::cerr << e.what();
        }

        str Result_s;
        if(result == 0) {
            Result_s = fmt::format("{}", result);
        } else {
            Result_s = Tools::Styling::Colorize(fmt::format("{}", result), 0xFF5826);
        }

        if(debug) std::println("\n\n{}\n> DLL returned {}", fmt::format("{:-^{}}", " End ", TerminalSize), Result_s);

        FreeLibrary(lib);
    }

    // Call dll file with C-like args (int argc, const char** argv)
    int CallFunctionC(                  /* Function IV A */
        str& File,                      /* File to find */
        const str& EntryPoint,          /* Function to call (auto magle on main.cpp) */
    //  const int Argc                  /* C argc, not really necessary */
    //  const char** Argv,              /* C argv, not really safe, mismatch can lead to crash */
        const std::vector<str> Args,    /* C argv (+argc), but safer */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    ) {
        File = GetFile(File);

        if (debug) std::println("> Loading {}", File);

        // Load the lib using WinAPI (Clang)
        HMODULE Lib = LoadLibraryA(File.c_str());
        if (!Lib) {
            std::println("> Failed to load {}", File);
            return -1;
        }

        // Create signature
        using Entry = int(*)(int, const char**);
        Entry EntryFunc = nullptr;

        // Try to find the function, use mangler if not using __declspec(dllexport)
        try {
            EntryFunc = LoadSymbol<Entry>(Lib, EntryPoint);
        } catch (const std::exception& e) {
            std::println("Error: {}", e.what());
            FreeLibrary(Lib);
            return -1;
        }

        // Convert vector<string> -> vector<const char*>
        std::vector<c_str> argv;
        argv.reserve(Args.size() + 1);

        // First arg = entry point name (like argv[0])
        argv.push_back(EntryPoint.c_str());

        for (auto& a : Args){
            argv.push_back(a.c_str());
        }

        int argc = static_cast<int>(argv.size());

        if (debug){
            std::println("> Running DLL...\n{}\n\n",
                fmt::format("{:-^{}}", " Begin ", TerminalSize)
            );
        }

        int result = 0;

        try {
            result = EntryFunc(argc, argv.data());
        } catch (const std::exception& e) {
            std::println("Error!");
            std::cerr << e.what();
            return -1;
        }

        auto Result_s = (result == 0)
            ? fmt::format("{}", result)
            : Tools::Styling::Colorize(fmt::format("{}", result), 0xFF5826);

        if (debug)
            std::println("\n\n{}\n> DLL returned {}",
                fmt::format("{:-^{}}", " End ", TerminalSize),
                Result_s
            );

        FreeLibrary(Lib);
        return std::stoi(Result_s);
    }

    // safer CallFunctionC
    int CallFunctionC_s(                /* Function IV B */
        const str& File,                /* File to find */
        const str& EntryPoint,          /* Finnction to call (auto magle on main.cpp) */
        const std::vector<str>& Args,   /* C Argv in vector */
        int TerminalSize = 50,          /* Optional Terminal size */
        bool debug = true               /* Optional Debugging log */
    ) {
        const str dllFile = GetFile(File);

        if (debug) std::println("> Loading {}", dllFile);

        HMODULE Lib = LoadLibraryA(dllFile.c_str());
        if (!Lib) {
            std::println("> Failed to load {}", dllFile);
            return -1;
        }

        // expected C signature: int func(int, const char**)
        using Entry = int(__cdecl *)(int, const char**); // use __cdecl explicitly if DLL uses C-calling conv
        Entry EntryFunc = nullptr;

        try {
            EntryFunc = LoadSymbol<Entry>(Lib, EntryPoint);
        } catch (const std::exception& e) {
            std::println("Error: {}", e.what());
            FreeLibrary(Lib);
            return -1;
        }

        // Build argv vector of stable pointers: ensure storage lifetime (we use strings owned here)
        std::vector<const char*> argv;
        argv.reserve(Args.size() + 2);

        // argv[0] = program/entry name
        argv.push_back(EntryPoint.c_str());

        for (const auto &s : Args) {
            argv.push_back(s.c_str());
        }

        // Null-terminate argv per C convention: argv[argc] == nullptr
        argv.push_back(nullptr);

        int argc = static_cast<int>(argv.size() - 1); // exclude trailing nullptr

        if (debug) {
            std::println("> Running DLL...\n{}\n\n", fmt::format("{:-^{}}", " Begin ", TerminalSize));
        }

        int result = -1;
        try {
            // call
            result = EntryFunc(argc, argv.data());
        } catch (const std::exception& e) {
            std::println("Exception calling DLL: {}", e.what());
            // don't rethrow across modules
            result = -1;
        }

        if (debug) {
            auto Result_s = (result == 0) ? fmt::format("{}", result)
                                          : Tools::Styling::Colorize(fmt::format("{}", result), 0xFF5826);
            std::println("\n\n{}\n> DLL returned {}", fmt::format("{:-^{}}", " End ", TerminalSize), Result_s);
        }

        FreeLibrary(Lib);
        return result;
    }

    // template <typename T>
    // str RemoveSignature(const str& Func, bool WithArgs = true) {
    //     const char* Name = Func.c_str();
    //     int status = 0;
    //     std::unique_ptr<char, void(*)(void*)> res{
    //         abi::__cxa_demangle(Name, 0, 0, &status),
    //         std::free
    //     };
    //     return (status==0) ? res.get() : Name;
    // }
}


// /* ---- Handle C++ mangling ---- */
// // why? because `extern "C" __declspec ...` sucks
// namespace Tools::Linking::Signature {
//     /* ---- Helper for Containers here ---- */
//     // -------------------------
//     // Helper traits
//     // -------------------------
//     // detect primary-template specializations (variadic template)
//     template<template<typename...> class Template, typename T>
//     struct is_specialization_of : std::false_type {};

//     template<template<typename...> class Template, typename... Args>
//     struct is_specialization_of<Template, Template<Args...>> : std::true_type {};

//     // std::array detection (non-type template parameter)
//     template<typename T>
//     struct is_std_array : std::false_type {};

//     template<typename U, std::size_t N>
//     struct is_std_array<std::array<U, N>> : std::true_type {
//         static constexpr std::size_t size = N;
//         using value_type = U;
//     };

//     // helper to convert integer non-type template param to Itanium encoding "LiN E"
//     inline std::string Encode_Integer_nttp(std::size_t n) {
//         // Itanium encodes integer template non-type as Li<digits>E
//         return std::string("Li") + std::to_string(n) + "E";
//     }

//     // utility to append encoded types for a parameter pack
//     template<typename... Ts>
//     std::string EncodePack() {
//         std::string out;
//         (void)std::initializer_list<int>{ (out += EncodeType<Ts>(), 0)... };
//         return out;
//     }

//     // -------------------------
//     // libc++ specific namespace prefix helpers
//     // This code targets libc++ where many types are under namespace std::__1
//     // e.g. NSt3__1<length><name>...
//     // -------------------------
//     inline std::string ns_std_libcxx_prefix() {
//         return "NSt3__1"; // "N" + "St3__1" == nested std::__1
//     }

//     inline std::string end_nested() { return "E"; }

//     // convenience to encode a class name with length
//     inline std::string len_name(const char* name) {
//         std::ostringstream os;
//         os << std::to_string(std::strlen(name)) << name;
//         return os.str();
//     }

//     // -------------------------
//     // Special encoders for common libc++ template pieces
//     // -------------------------

//     // encode allocator<T> as in libc++ -> "NS_9allocatorI<...>EE"
//     template<typename T>
//     std::string encode_allocator() {
//         // "NS_9allocatorI" + EncodeType<T>() + "EE"
//         // In libc++ they often use NS_9allocatorI...EE inside bigger nested names.
//         return std::string("NS_9allocatorI") + EncodeType<T>() + "EE";
//     }

//     // encode std::less<Key> (used in std::map default compare)
//     template<typename Key>
//     std::string encode_std_less() {
//         // libc++ uses "St4lessI<key>EE" or substitution 'St' for std::, but safe to produce:
//         // "St4lessI" + EncodeType<Key>() + "EE"
//         return std::string("St4lessI") + EncodeType<Key>() + "EE";
//     }

//     // encode std::hash<Key>
//     template<typename Key>
//     std::string encode_std_hash() {
//         return std::string("St4hashI") + EncodeType<Key>() + "EE";
//     }

//     // encode std::equal_to<Key>
//     template<typename Key>
//     std::string encode_std_equal_to() {
//         return std::string("St8equal_toI") + EncodeType<Key>() + "EE";
//     }

//     // -------------------------
//     // Container encoders (recursive)
//     // -------------------------

//     // std::vector<T>
//     template<typename T>
//     std::string encode_std_vector() {
//         // pattern approximated for libc++:
//         // NSt3__16vectorI <T> NS_9allocatorI <T> E E E
//         // assembled as: ns_std_libcxx_prefix + "6vector" + "I" + EncodeType<T>() + encode_allocator<T>() + "E"
//         std::string out;
//         out += ns_std_libcxx_prefix();
//         out += len_name("6vector"); // "6vector"
//         out += "I";
//         out += EncodeType<T>();
//         out += encode_allocator<T>(); // produces NS_9allocatorI ... EE
//         out += "EE"; // close template and nested
//         return out;
//     }

//     // std::pair<A,B>
//     template<typename A, typename B>
//     std::string encode_std_pair() {
//         // NSt3__14pairI <A> <B> EE
//         std::string out;
//         out += ns_std_libcxx_prefix();
//         out += len_name("4pair");
//         out += "I";
//         out += EncodeType<A>();
//         out += EncodeType<B>();
//         out += "EE";
//         return out;
//     }

//     // std::array<T, N>
//     template<typename T, std::size_t N>
//     std::string encode_std_array() {
//         // pattern:
//         // NSt3__15arrayI <T> Li<N>E EE
//         std::string out;
//         out += ns_std_libcxx_prefix();
//         out += len_name("5array"); // "5array"
//         out += "I";
//         out += EncodeType<T>();
//         out += Encode_Integer_nttp(N); // LiN E
//         out += "EE";
//         return out;
//     }

//     // std::map<Key, Value>  (approximate default template args: Compare = std::less<Key>, Allocator = std::allocator<std::pair<const Key,Value>>)
//     template<typename Key, typename Value>
//     std::string encode_std_map() {
//         // NSt3__13mapI< Key, Value, std::less<Key>, std::allocator<std::pair<const Key,Value>> >EE
//         std::string out;
//         out += ns_std_libcxx_prefix();
//         out += len_name("3map");
//         out += "I";
//         out += EncodeType<Key>();
//         out += EncodeType<Value>();
//         out += encode_std_less<Key>();
//         // allocator of pair<const Key, Value>
//         using pair_const_kv = std::pair<const Key, Value>;
//         out += std::string("NS_9allocatorI") + EncodeType<pair_const_kv>() + "EE";
//         out += "EE";
//         return out;
//     }

//     // std::unordered_map<Key, Value> (approximate defaults: Hash = std::hash<Key>, KeyEqual = std::equal_to<Key>, Allocator = std::allocator<std::pair<const Key,Value>>)
//     template<typename Key, typename Value>
//     std::string encode_std_unordered_map() {
//         std::string out;
//         out += ns_std_libcxx_prefix();
//         out += len_name("13unordered_map");
//         out += "I";
//         out += EncodeType<Key>();
//         out += EncodeType<Value>();
//         out += encode_std_hash<Key>();
//         out += encode_std_equal_to<Key>();
//         using pair_const_kv = std::pair<const Key, Value>;
//         out += std::string("NS_9allocatorI") + EncodeType<pair_const_kv>() + "EE";
//         out += "EE";
//         return out;
//     }

//     /* ---- Type Encoder ---- */
//     template <typename Type>
//     constexpr const char* EncodeType() {
//         // void
//         if constexpr (std::is_same_v<Type, void>) return "v";

//         // Int Numbers
//         else if constexpr (std::is_same_v<Type, int>) return "i";

//         // Other Int number
//         else if constexpr (std::is_same_v<Type, int8_t>)  return "a";      // signed short char?
//         else if constexpr (std::is_same_v<Type, int16_t>) return "s";      // signed short int
//         else if constexpr (std::is_same_v<Type, int32_t>) return "i";      // signed int/long?
//         else if constexpr (std::is_same_v<Type, int64_t>) return "x";      // signed unsigned int
        
//         // const Other Int number
//         else if constexpr (std::is_same_v<Type, const int8_t>)  return "Ka";
//         else if constexpr (std::is_same_v<Type, const int16_t>) return "Ks";
//         else if constexpr (std::is_same_v<Type, const int32_t>) return "Ki";
//         else if constexpr (std::is_same_v<Type, const int64_t>) return "Kx";

//         // Unsigned Int number
//         else if constexpr (std::is_same_v<Type, uint8_t>)  return "h";     // unsigned short char?
//         else if constexpr (std::is_same_v<Type, uint16_t>) return "t";     // unsigned short int
//         else if constexpr (std::is_same_v<Type, uint32_t>) return "j";     // unsigned int/long?
//         else if constexpr (std::is_same_v<Type, uint64_t>) return "y";     // unsinged long long
        
//         // const Unsigned Int number
//         else if constexpr (std::is_same_v<Type, const uint8_t>)  return "Kh";
//         else if constexpr (std::is_same_v<Type, const uint16_t>) return "Kt";
//         else if constexpr (std::is_same_v<Type, const uint32_t>) return "Kj";
//         else if constexpr (std::is_same_v<Type, const uint64_t>) return "Ky";
        
//         // Float numbers
//         else if constexpr (std::is_same_v<Type, float>) return "f";
//         else if constexpr (std::is_same_v<Type, double>) return "d";

//         // Long float numbers
//         else if constexpr (std::is_same_v<Type, long double>) return "e";

//         // Texts
//         else if constexpr (std::is_same_v<Type, char>) return "c";
//         else if constexpr (std::is_same_v<Type, const char>) return "Kc";
//         else if constexpr (std::is_same_v<Type, const char*>) return "PKc";
//         else if constexpr (std::is_same_v<Type, const char**>) return "PPKc";
        
//         // Ref Texts
//         else if constexpr (std::is_same_v<Type, char&>) return "Rc";
//         else if constexpr (std::is_same_v<Type, const char&>) return "RKc";
//         else if constexpr (std::is_same_v<Type, const char*&>) return "RPKc";
//         else if constexpr (std::is_same_v<Type, const char**&>) return "RPPKc";

//         // Wide texts
//         else if constexpr (std::is_same_v<Type, wchar_t>) return "w";
//         else if constexpr (std::is_same_v<Type, const wchar_t*>) return "PKw";
//         else if constexpr (std::is_same_v<Type, const wchar_t**>) return "PPKw";

//         // Even wider texts
//         // C 16-bit
//         else if constexpr (std::is_same_v<Type, char16_t>) return "Ds";
//         else if constexpr (std::is_same_v<Type, const char16_t*>) return "PKDs";
//         else if constexpr (std::is_same_v<Type, const char16_t**>) return "PPKDs";

//         // C 32-bit
//         else if constexpr (std::is_same_v<Type, char32_t>) return "Di";
//         else if constexpr (std::is_same_v<Type, const char32_t*>) return "PKDi";
//         else if constexpr (std::is_same_v<Type, const char32_t**>) return "PKKDi";

//         // Strings
//         else if constexpr (std::is_same_v<Type, std::string>){
//             // return "Ss";
//             return "NSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE";
//         } else if constexpr (std::is_same_v<Type, std::wstring>) {
//             // return "Sd";
//             return "NSt3__112basic_stringIwNS0_11char_traitsIwEENS0_9allocatorIwEEEE";
//         } else if constexpr (std::is_same_v<Type, std::u16string>) {
//             // return "Su";
//             return "NSt3__112basic_stringIDsNS0_11char_traitsIDsEENS0_9allocatorIDsEEEE";
//         } else if constexpr (std::is_same_v<Type, std::u32string>){
//             // return "Sx";
//             return "NSt3__112basic_stringIDiNS0_11char_traitsIDiEENS0_9allocatorIDiEEEE";
//         }

//         // Const Strings
//         else if constexpr (std::is_same_v<Type, const std::string>){
//             return "KNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE";
//         } else if constexpr (std::is_same_v<Type, const std::wstring>) {
//             return "KNSt3__112basic_stringIwNS0_11char_traitsIwEENS0_9allocatorIwEEEE";
//         } else if constexpr (std::is_same_v<Type, const std::u16string>) {
//             return "KNSt3__112basic_stringIDsNS0_11char_traitsIDsEENS0_9allocatorIDsEEEE";
//         } else if constexpr (std::is_same_v<Type, const std::u32string>){
//             return "KNSt3__112basic_stringIDiNS0_11char_traitsIDiEENS0_9allocatorIDiEEEE";
//         }

//         // Ref Const Strings
//         else if constexpr (std::is_same_v<Type, const std::string&>){
//             return "RKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE";
//         } else if constexpr (std::is_same_v<Type, const std::wstring&>) {
//             return "RKNSt3__112basic_stringIwNS0_11char_traitsIwEENS0_9allocatorIwEEEE";
//         } else if constexpr (std::is_same_v<Type, const std::u16string&>) {
//             return "RKNSt3__112basic_stringIDsNS0_11char_traitsIDsEENS0_9allocatorIDsEEEE";
//         } else if constexpr (std::is_same_v<Type, const std::u32string&>){
//             return "RKNSt3__112basic_stringIDiNS0_11char_traitsIDiEENS0_9allocatorIDiEEEE";
//         }

//         // --- Containters ---
//         // std::array<T,N>
//         else if constexpr (is_std_array<Type>::value) {
//             using value_t = typename Type::value_type;
//             constexpr std::size_t N = std::tuple_size<Type>::value;
//             return encode_std_array<value_t, N>();
//         }

//         // std::vector<T>
//         else if constexpr (is_specialization_of<std::vector, Type>::value) {
//             using value_t = typename Type::value_type;
//             return encode_std_vector<value_t>();
//         }

//         // std::pair<A,B>
//         else if constexpr (is_specialization_of<std::pair, Type>::value) {
//             using A = typename Type::first_type;
//             using B = typename Type::second_type;
//             return encode_std_pair<A,B>();
//         }

//         // std::map<Key,Value,...> (handle basic 2-parameter use)
//         else if constexpr (is_specialization_of<std::map, Type>::value) {
//             using Key = typename Type::key_type;
//             using Val = typename Type::mapped_type;
//             return encode_std_map<Key, Val>();
//         }

//         // std::unordered_map<Key,Value,...>
//         else if constexpr (is_specialization_of<std::unordered_map, Type>::value) {
//             using Key = typename Type::key_type;
//             using Val = typename Type::mapped_type;
//             return encode_std_unordered_map<Key, Val>();
//         }

//         // pointer types
//         else if constexpr (std::is_pointer_v<Type>) {
//             using Base = std::remove_pointer_t<Type>;
//             if constexpr (std::is_const_v<Base>) {
//                 return std::string("PK") + EncodeType<std::remove_const_t<Base>>();
//             } else {
//                 return std::string("P") + EncodeType<Base>();
//             }
//         }

//         // fallback: try demangle fallback or substitution
//         else {
//             return "U"; // unknown / unsupported
//         }
//     }

//     /* ---- Split helper ---- */
//     std::vector<str> Split(const str& s, const str& delimiter = "::") {
//         std::vector<str> tokens;
//         size_t start = 0, end;
//         while ((end = s.find(delimiter, start)) != str::npos) {
//             tokens.push_back(s.substr(start, end - start));
//             start = end + delimiter.size();
//         }
//         tokens.push_back(s.substr(start));
//         return tokens;
//     }

//     /* ---- Signature Generator ---- */
//     template <typename... Args>
//     str MakeSignature(str Symbol, const str& Lang = "C++") {
//         if (Lang == "C" || Lang == "C89" || Lang == "C23"){
//             return Symbol; // no mangling in C
//         }
        
//         str result = "_Z"; // standard C++ Itanium ABI prefix
//         result += std::to_string(Symbol.size());
//         result += Symbol;

//         // Append encoded types
//         ((result += EncodeType<Args>()), ...);

//         // println("Result = {}", result);
//         return result;
//     }

//     template<typename... Args>
//     str MakeSignature_Nest(const str& FuncPath) {
//         std::ostringstream out;
//         out << "_ZN"; // C++ nested prefix

//         // split "Folder1::Folder2::Folder2"
//         for (auto parts = Split(FuncPath); const auto& part : parts)
//             out << part.size() << part;

//         out << "E"; // end of nested names

//         // append encoded types
//         ((out << EncodeType<Args>()), ...);

//         return out.str();
//     }


// }
