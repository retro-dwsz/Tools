# Tools.cpp

### A simple lib for C++ to make your code sesion _fells_ fun and kinda more Python-y feel. This lib in inteded for simple libs and everyday coding, not for big/enteprise project on that actually matter on you life or money
### I have to admit, like 80% of those codes are AI-generated, if you find any flaw, please tell me on issues or you can submit you code on issues or you can fork on your own :D

# Lib `Tools.Types`

Types aliasing to make you less typing just for data types

|Integers | Unsiged Integers|| Floating ||
|--------|--------|--------|--------|-------|--------|
|Original|Aliased|Original|Aliased|Original|Aliased|
|`int8_t`| `i8`|`uint8_t`| `u8`|`float`| `f32`|
|`int16_t`| `i16`|`uint16_t`| `u16`|`double`| `f64`|
|`int32_t`| `i32`|`uint32_t`| `u32`|`long double`| `fld`|
|`int64_t`| `i64`|`uint64_t`| `u64`| |  |
|`ssize_t` | `sidx` |`size_t`| `idx`| |  |

|C string || C++ String ||
|--------|--------|--------|--------|
|Original|Aliased|Original|Aliased|
|`const char*` |`cstr`|`std::string`|`str`|
|`const char16_t*`|`cstr16`| `std::wstring`|`wstr`|
|`const char32_t*`|`cstr32`| `std::u16string`|`str16`|
|||`std::string_view`|`strview`| `std::u32string`|`str32`|
|||`std::stringstream`|`sstream`|
|||`std::ostringstream`|`ostream`|

|C++ Value Containers||
|--------|--------|
|Original|Aliased|
| `std::vector<T>` | `vec<T>` |
| `std::array<T, idx>` | `arr<T, idx>` |
| `std::map<K, V>` | `map<K, V>` |
| `std::unordered_map<K, V>` | `umap<K, V>` |
| `std::set<T>` | `set<T>` |
| `std::unordered_set<T>` | `uset<T>` |
| `std::pair<K, V>` | `pair<K, V>` |
| `std::initializer_list<T>` | `initl<T>` |
| `std::span<T>` | `span<T>` |
| `std::tuple<T...>` | `tuple<T...>` |
| `std::list<T>` | `list<T>` |

|C++ Type Containers||
|--------|--------|
|Original|Aliased|
| `std::optional<T>` | `topt<T>` |
| `std::variant<T...>` | `tvar<T...>` |
| `std::expected<A, B>` | `texp<A, B>` |

Another type alias that you and I may not use often

|C/C++ Pointers | | C++ Smart Pointers | |
|--------|--------|--------|--------|
|Original|Aliased|Original|Aliased|
| `T*` | `ptr<T>` | `std::unique_ptr<T>` | `uptr<T>` |
| `const T*` | `ptrcd<T>` | `std::shared_ptr<T>` | `sptr<T>` |
| `T const*` | `cptr<T>` | `std::weak_ptr<T>` | `wptr<T>` |
| `const T *const` | `cptrcd<T>` |

Commonly used packed type with `concept`
| Concept | Types convered |
|---|---|
| `Nx32` | `i32, f32` |
| `Nx64` | `i64, f64` |
| `Int` | `i8, i16, i32, i64` |
| `CInt` | `i32, i64` |
| `UInt` | `u8, u16, u32, u64` |
| `CUInt` | `u32, u64` |
| `Float` | `f32, f64, fld` |
| `CFloat` | `f32, f64` |
| `CSize` | `idx, sidx` |
| `Integer` | `Int` + `UInt` |
| `CNumber` | `CInt` + `CUInt` + `CFloat` + `CSize` |
| `CTypes` | `CInt` + `CUInt` + `CFloat` + `Strings` |
| `Numbers` | `Int` + `UInt` + `Float` + `CSize` |
| `Strings` | `str, cstr` |
| `WStrings` | `wstr, cwstr` |
| `Iterable` | `std::ranges::range<T>` |

An example of implementation:
```cpp
template <Numbers T>
void CheckRange(T& min, T& max) {
    if (max < min) std::swap(min, max);
}
```

This will check given bounds, and swap them if `min` is bigger than `max`

---

# Lib `Tools.Casting`

Code:
```cpp
namespace Tools::Cast{
    template <typename To, typename From>
    constexpr To scast(From&& value) noexcept;

    template <typename To, typename From>
    To dcast(From&& value);

    template <typename To, typename From>
    constexpr To ccast(From&& value) noexcept;

    template <typename To, typename From>
    constexpr To rcast(From&& value) noexcept;

    template <typename To>
    To acast(const std::any& a);

    template <typename To, typename From>
    constexpr To cast(From&& value);
}
```

`scast<T>(value)`: Alias for static_cast.

Advantage:
- Compile time conversion
- Can be evaluated on compile-time if you use constexpr
- Zero runtime overhead

Used for:
- Numeric conversion
- Upcast/downcast non-polymorphic

`dcast<T>(value)`: Alias for dynamic_cast.

Advantage:
- ONLY for pointers and references
- Needs RTTI
- Runtime-only (not constexpr compatible)
Used for:
- Downcast polymorphic which needs runtime checking

`ccast<T>(value)` Alias for const_cast.

Used for:
- Deletes/adds qualifier "const"
- Not changing base type

WARNING:
- Deleting const from absolute const object will cause Undefined Behaviour

`rcast<T>(value)` Alias for reinterpret_cast.

Advantage:
- Bit-level cast
- Most dangerous
- Always for last resort

Use ONLY if:
- You don't know memory layout
- No other safe alternatives

`acast<T>(std::any)` Alias for std::any_cast.

- Runtime checked
- Will throw std::bad_any_cast if type is wrong/bad

`cast<T>(value)` "One-door" casting API.

Philosophy:
- Default to static_cast
- Not trying to be smart
Note:
- This Function is intended to be simple
- If you need RTTI / const removal / bit cast,
use `scast` / `dcast` / `ccast` / `rcast`

---

# Lib `Tools.Edges`

code:
```cpp
#pragma once

#include <limits>

// Macro shortcut
#define GET_MAX(T) std::numeric_limits<T>::max()
#define GET_MIN(T) std::numeric_limits<T>::min()

namespace Tools::Edge {
    template <typename T>
    T GetMax();

    template <typename T>
    T GetMin()
}
```

Should've named "limits", but I pick "Edges" just because people won't confuse `<limits>` and `Tools.Limits`, so `Tools.Edges` were chosen.

`GetMax<T>` : To get max value of given types \
`GetMin<T>` : To get min value of given types

---

# Lib `Tools.Files`

code:
```cpp
namespace Tools::Files {
    /* -------- String -------- */
    str ReadFile(const str& File);
    void WriteFile(const str& File, const str& Content);
    
    /* ---- C-style string ---- */
    cstr ReadFileC(const str& File);
    void WriteFileC(const str& File, cstr& Content);
    
    /* ------ Wide String ------ */
    wstr ReadFileW(const str& File);
    void WriteFileW(const str& File, const wstr& Content);
}
```

`ReadFile`: To read file from specified path and return content\
`WriteFile`: To read write to specified path with given content

Suffixes: \
`-C` : C-style string (`const char*`) \
`-W` : Wide string (`wstr`/`std::wstring`)

---

# Lib `Tools.FormatNumber`

code:
```cpp
namespace Tools::FormatNumber {
    /* Defaults */
    template <Integer T>
    str Format(const T n)
    
    template <Float T>
    str Format(const T n)

    /* Customs */
    template <Integer T>
    str Format(const T n, Char Separator, const i32 Digits);

    template <Float T>
    str Format(const T n, Char Separator, const i32 Digits);

    template <Float T>
    str Format(const T n, Char Separator, Char Decimal, const i32 Digits);
}
```

Parameters for 1st and 2nd functions:\
`T n`: The number \
`Char Seperator`: The seperator \
`const i32 Digits`: Digis for seperation
- Seperator between N digits this is because not every country use the same formatting.
- In Europe, we use dot (.) for thousands, and comma for decimal (,), and the opposite in the US and around it. 
- Some EU countries even use space for thousands seperator, usually around France or Scandinavia.
- For example: 
    - `€1.000,50` or `€1 000,50` in C will be `1000.50`
    - `$1,000.50` in C will be `1000.50`
- Example of code usage:
    - `Format(314217)` will return `314'217`
    - `Format(314217, '\'', 3)` will return `314'217`
    - `Format(3142.17, '\'', 3)` will return `3'142.17`
    - `Format(3142.17, '@', 2)` will return `31@42.17`

The 3rd function has the `Char Decimal`, indicates you can custom character for decimals. \
Example:
- `Format(3142.17)` will return `3'142,17`
- `Format(3142.17, ' ', ',', 3)` will return `3 142,17`

---

# Lib `Tools.IVec`

IVec or "*I*mproved *Vec*tor" is a container just like `std::vector`, but with better choice of diction, for example: `push_back` is now `append` (just like Python).
All description is already in `IVec/IVec_c.base.hpp`, descriptions are intentionally made short and simple, so even beginners can understand it.

# Legends `Tools.Linking`

Code:
```cpp
namespace Tools::Linking {
    str GetFile(
        const str& File                 /* Base name of the .dll*/
    );

    T LoadSymbol(
        const HMODULE lib,              /* File to be loaded */
        const str& EntryPoint           /* Entry point */
    );

    // Call function in .dll with any args
    template<typename Return, typename... Args>
    Return CallFunction(                /* Function I */
        str File,                       /* File to find */
        str EntryPoint,                 /* Function to find (disable magle!) */
        Args... args                    /* Args */
    );

    // Call dll with str msg
    void CallFunctionA(                 /* Function II  */
        str& File,                      /* File to find */
        const str& Msg,                 /* Message to forward (str) */
        const str& EntryPoint,          /* Function to call (disable magle!) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    );

    // Call DLL with wstr
    void CallFunctionAW(                /* Function II  */
        str& File,                      /* File to find */
        const wstr& MsgW,               /* Message to forward (wstr) */
        const str& EntryPoint,          /* Function to call (auto mangle on main.cpp) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    );

    // Call dll without any args
    void CallFunctionB(                 /* Function III */
        str& File,                      /* File to find */
        const str& EntryPoint,          /* Function to call (disable magle!) */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    );

    // Call dll file with C-like args (int argc, const char** argv)
    int CallFunctionC(                  /* Function IV A */
        str& File,                      /* File to find */
        const str& EntryPoint,          /* Function to call (disable magle!) */
    //  const int Argc                  /* C argc, not really necessary */
    //  const char** Argv,              /* C argv, not really safe, mismatch can lead to crash */
        const vec<str> Args,            /* C argv (+argc), but safer */
        const int TerminalSize = 50,    /* Optional Terminal size */
        const bool debug = true         /* Optional Debugging log */
    );

    // Slightly safer CallFunctionC
    int CallFunctionC_s(                /* Function IV B */
        const str& File,                /* File to find */
        const str& EntryPoint,          /* Finnction to call (disable magle!) */
        const vec<str>& Args,           /* C Argv in vector */
        int TerminalSize = 50,          /* Optional Terminal size */
        bool debug = true               /* Optional Debugging log */
    );

    #if __has_include(<cxxabi.h>)
    template <typename T>
    str RemoveSignature(
        const str& Func,                /* Mangled function name with itanium format */
        bool WithArgs = true            /* Include args or not*/
    );
    #endif
}
```

This is a windows-specific tool to call a .dll during runtime. 

Functions:
### 1. `GetFile`
- Code
    ```cpp
    str GetFile(
        const str& File
    );
    ```
- Description
    > Resolves and returns the DLL file path based on the given base name.

- Parameters
    > File — Base name of the .dll file (e.g. "Test.dll")

- Returns
    > Resolved file path as str

- Notes
    > - Intended for internal path normalization
    > - Can be extended to support custom search directories

- Example
    ```cpp
    str File = GetFile("DynamicLib");
    fmt::println("file {}", File);  // DynamicLib.dll
    ```

### 2. `LoadSymbol`
- Code
    ```cpp
    T LoadSymbol(
        const HMODULE lib,
        const str& EntryPoint
    );
    ```

- Description
    > Loads a function symbol (entry point) from a previously loaded DLL module.

- Parameters
    > lib — Handle returned by LoadLibrary
    > EntryPoint — Exported function name (must match exactly)

- Returns
    > Function pointer of type T

- Warning ⚠️
    > - Incorrect function signature casting will cause undefined behavior or crashes.
    > - Used internally only

### 3. `CallFunction` (Generic Template)
- Code
    ```cpp
    template<typename Return, typename... Args>
    Return CallFunction(
        str File,
        str EntryPoint,
        Args... args
    );
    ```
- Description
    > Fully generic function caller for DLL exports with arbitrary arguments and return type.

- Parameters
    > - `File` — Target DLL file
    > - `EntryPoint` — Function name (mangling must be disabled with extern "C")
    > - `Args...` — Arguments forwarded to the function

- Returns
    > Function return value of type Return

- Example
    ```cpp
    int result = Tools::Linking::CallFunction<int>(
        "Math.dll",
        "Add",
        5,
        3
    );

    fmt::prinln("5 + 3 = {}", result); // 8
    ```

### 4. `CallFunctionA` (String Message)
- Code
    ```cpp
    void CallFunctionA(
        str& File,
        const str& Msg,
        const str& EntryPoint,
        const int TerminalSize = 50,
        const bool debug = true
    );
    ```
- Description
    > Calls a DLL function that accepts a narrow string (std::string / char*) message.

- Parameters
    > - `File` — Target DLL file
    > - `Msg` — Message forwarded to DLL
    > - `EntryPoint` — Exported function name
    > `TerminalSize` — Optional formatting/log width
    > `debug` — Enables debug output

Recommended DLL Signature generation
    ```cpp
    extern "C" void MyFunction(const char* msg);
    ```

### 5. `CallFunctionAW` (Wide String)
- Code
    ```cpp
    void CallFunctionAW(
        str& File,
        const wstr& MsgW,
        const str& EntryPoint,
        const int TerminalSize = 50,
        const bool debug = true
    );
    ```
- Description
    > Wide-character version of CallFunctionA, designed for Unicode-safe messaging.

- Recommended DLL Signature
    ```
    extern "C" void MyFunction(const wchar_t* msg);
    ```

- Notes
    > - Useful for UTF-16 Windows APIs
    > - Avoids encoding mismatch issues

### 6. `CallFunctionB` (No Arguments)
- Code:
    ```cpp
    void CallFunctionB(
        str& File,
        const str& EntryPoint,
        const int TerminalSize = 50,
        const bool debug = true
    );
    ```
- Description
    > - Calls a DLL function that takes no parameters.

- Example DLL Export
    ```cpp
    extern "C" void Init();
    ```

- Example Usage
    ```cpp
    Tools::Linking::CallFunctionB(
        "Plugin.dll",
        "Init"
    );
    ```

### 7. CallFunctionC (C-style argv)
- Code
    ```cpp
    int CallFunctionC(
        str& File,
        const str& EntryPoint,
        const vec<str> Args,
        const int TerminalSize = 50,
        const bool debug = true
    );
    ```
- Description
    > - Simulates int main(int argc, const char** argv) style function calls inside a DLL.

- Parameters
    > -Args — Safe vector representation of argv (argc inferred)

- Recommended DLL Signature
    ```cpp
    extern "C" int Entry(int argc, const char** argv);
    ```

- Why vector instead of raw argv?
    > - Because raw pointer mismatches = instant crash.
    > - Vector is safer and controlled.

### 8. CallFunctionC_s (Safer Variant)
- Code
    ```cpp
    int CallFunctionC_s(
        const str& File,
        const str& EntryPoint,
        const vec<str>& Args,
        int TerminalSize = 50,
        bool debug = true
    );
    ```

- Description
    > - This is basically `CallFunctionC` but with slightly safe hacks

### 9. RemoveSignature (Optional - Itanium ABI)
- Code
    ```cpp
    template <typename T>
    str RemoveSignature(
        const str& Func,
        bool WithArgs = true
    );
    ```

- Availability
    > Only enabled if `__has_include(<cxxabi.h>)`

- Description
    > - Removes C++ mangled signatures (Itanium ABI) to produce readable function names.

- Use Case
    > - Debugging symbol names
    > - Reflection utilities
    > - Cross-platform demangling (Clang/GCC)

---

# Lib Tools.OS
- API Codes:
    ```cpp
    // Terminal utils
    namespace Tools::OS::Terminal{
        i32 TerminalSize(cstr DIR = "X", const i32 offset = 0)
        i32 TerminalSizeWidth(const i32 offset = 0){return TerminalSize("X", offset);}
        i32 TerminalSizeHeight(const i32 offset = 0){return TerminalSize("Y", offset);}
        umap<cstr, i32> TerminalSizeMap(){
            return umap<cstr, i32>{{"X", TerminalSizeWidth(0)},{"Y", TerminalSizeHeight(0)}};
        }
    }

    // File utils
    namespace Tools::OS::File {
        // temp function to generate safer string
        cstr cstr_safe(strv s, str& temp);

        bool WriteFile(strv path, strv text);
        str ReadFile(strv path);
        bool Exists(strv path);
        bool Remove(strv path);
        bool Move(strv from, strv to);
    }

    // OS Sleep
    namespace Tools::OS::Sleep {
        inline void SleepMs(u32 ms);
        void SleepPrecise(f64 ms);
    }

    // Process hacks 
    namespace Tools::OS::Process {
        template <typename T>
        T ReadFromProcess(idx PID, uintptr_t Address);
        
        template <typename T>
        bool WriteProcess(idx PID, uintptr_t Address, T data);
        
        // Current process
        bool IsAdmin();

        // Other process
        bool IsAdmin(idx pid);
    }
    ```
- Include file:
    ```cpp
    #if defined(__WIN32)
        #include "OS/Win32.API.hpp"
    #elif defined(__linux__) && !defined(__ANDROID__)
        #include "OS/Linux.API.hpp"
    #elif defined(__APPLE__)
        #include "OS/Apple.API.hpp"
    #endif
    ```

This is a library for essential OS API functions, but make it easier.

1. Terminal
    > The function `TerminalSize` returns current terminal size (duh), you have 2 choises, `X` (row) axis or `Y` (collumn) axis. You pass it on 1st parameter.
    > There are 3 other function that wraps 1st function. `-Width`, `-Height`, and `-Map`. 2nd and 3rd are obvious, 4th return an `std::unordered_map` of `X` and `Y` axis.

2. File
    > You can ignore the `cstr_safe` function, it's just used internally for converting stuffs. All function are using `std::string_view` as parameter, and maybe it'll be changed to `std::string` or maybe `const char*`

3. Sleep
    > This is sleep function provides by your OS, sometimes `std::this_thread::sleep_for(std::chrono::seconds(n));` can sometimes be inaccurate if you pass _too complex_ number.

4. Process
    > Yes, this is some sort of a process hacking tools, you can read, write (yes, an actual writing on specified address like how game h*kcing). Please use it fairly and wisely, because wrong movement can crash your project or even you OS. Also, you can check if _**a** process_ or _**this** process_ is running with admin privilege.

---

# Lib Tools.PrintHeader

- Code:
    ```cpp
    namespace Tools::Styling {
        str PrintMid (
            const str& text = "Hello",
            char borderChar = '=',
            int offset = 0,
            bool printing = false
        ) { ... };
    }
    ```

- Description:
    > This function is to make something like this:
    ```
    ----------------[ Hello! ]----------------
    ```

- Examples:
    > `Tools::Styling::PrintMid("[ My Cool C++ App! ]", '~')`

    > return: 
    ```
    ~~~~~~~~~~~~~~~~[ My Cool C++ App! ]~~~~~~~~~~~~~~~~
    ```

    > `Tools::Styling::PrintMid(" My magcial C++ App! ", '/')`

    > return: 
    ```
    //////////////// My magcial C++ App! ////////////////
    ```

---

# Lib `Tools.Random`
 * Code suffixes you'll find on Random functions
    | **Suffix**|      **Meaning**      | **Types** |       **Meaning**      |
    |-----------|-----------------------|-----------|------------------------|
    | `I`       | Integer (i32)         |  `VI`     |  Vector i32            |
    | `L`       | Long (i64)            |  `VL`     |  Vector i64            |
    | `F`       | Float (f32)           |  `VF`     |  Vector f32            |
    | `D`       | Double (f64)          |  `VD`     |  Vector f64            |
    | `V`       | Vector                |  `BI`     |  Bundled i32           |
    | `B`       | Bundled               |  `BL`     |  Bundled i64           |
    | `SB`      | Scattered Bundle      |  `BF`     |  Bundled f32           |
    |           |                       |  `BF`     |  Bundled f32           |
    |           |                       |  `BD`     |  Bundled f64           |
    |           |                       |  `SBI`    |  Scattered Bundled i32 |
    |           |                       |  `SBL`    |  Scattered Bundled i64 |
    |           |                       |  `SBF`    |  Scattered Bundled f32 |
    |           |                       |  `SBD`    |  Scattered Bundled f64 |

- ### **_Example_** API Codes:
    > Supported types are `i32`, `i64`, `f32`, and `f64`
    ```cpp
    namespace Tools::Random {
        /* Singles */
        i32 RandomNumI(
            i32 Min = 0,            // Minimum value
            i32 Max = 9             // Maximum value
        );

        /* Vector */
        vec<i64> RandomNumsVL(
            idx Count = 64,         // Element count
            i64 Min = 0,            // Minimum value
            i64 Max = 10            // Maximum value
        );

        /* Bundles */
        vec<vec<f32>> RandomNumsBF(
            idx Sub = 64,           // Sub-vector count
            idx Count = 256,        // Sub-vector element count
            i32 Min = 0,            // Minimum
            i32 Max = 100           // Maximum
            const i32 Rounding = 2  // Value rounding (F&D only)
        );

        /* Scattered Bundled */
        vec<vec<f64>> RandomNumsSBD(
            idx Sub = 64,           // Sub-vector count
            idx CountMin = 25,      // Sub-vector element minimal count
            idx CountMax = 50,      // Sub-vector element maximum count
            f64 Min = 0.01,         // Minimum value
            f64 Max = 10.0,         // Maximum value
            const i32 Rounding = 2  // Value Rounding (F&D only)
        );

    }
    ```

- Explanations
    > - `Singes` return single random value
    > - `Vector` returns multiple random number in `std::vector<T>`
    > - `Bundled` returns multiple random number in `std::vector<std::vector<T>>`
    > - `Scattered Bundled` returns multiple random number in `std::vector<std::vector<T>>` but with different count of each sub-vector

- Note:
    > I **_don't_** recommend using singles function inside a loop, instead, generate multiple value then iterate through that container instead

---

# Lib `Tools.RandomHW`

- Basically same as `Tools.Random`, but with better seeder from `x86` function called `RDSEED` and `RDRAND`, you just add the `HW` on the namespace (`Tools::Random` -> `Tools::RandomHW`), and you can access the functions.
- This lib is limited to `x86`, using this on ARM may invalid or maybe cause something bad. 
- Make sure to add `-mrdseed` `-mrdrnd` `-march=native` flag on your compiler

- API Codes
    ```cpp
    namespace Tools::RandomHW {
        /* Singles */
        i32 RandomNumI(
            Twister32& gen,         // Twister engine
            i32 min,                // Minimum value
            i32 max                 // Maximum value
        );

        /* Vector */
        vec<i64> RandomNumsVL(
            Twister64& gen,         // 64-bit Twister engine
            const idx Count,        // Element count
            i64 Min,                // Minimum value
            i64 Max                 // Maximum value
        );

        /* Bundles */
        vec<vec<f32>> RandomNumsBF(
            Twister32& gen,         // 32-bit engine
            const idx Sub = 64,     // Sub-vector count
            const idx Count = 32,   // Sub-vector element count
            f32 min = 0.01,         // Minimum value
            f32 max = 9.99          // Maximum value
            const i32 Rounding = 2  // value rounding (F&D only)
        );

        /* Scattered Bundled */
        vec<vec<f64>> RandomNumsSBD(
            Twister64& gen,         // 64-bit engine
            idx Sub = 64,           // Sub-vector count
            idx CountMin = 25,      // Sub-vector minimum element count
            idx CountMax = 50,      // Sub-vector maximum element count
            f64 Min = 0.01,         // Minimum value
            f64 Max = 10.0,         // Maximum value
            const i32 Rounding = 2  // value rounding (F&D only)
        );
    }
    ```

- ### Using the library
    - To use this, you need to test the library by running function from `common` file called `Tools::RandomHW::Tests::CheckCompatibily()`
        ```cpp
        namespace RandomHW::Tests {
            bool RDseedSupport();
            pair<bool, bool> TestRandSeed(u16& outA, u16& outB);
            pair<bool, bool> TestRandSeed(u32& outA, u32& outB);
            pair<bool, bool> TestRandSeed(u64& outA, u64& outB);
            void CheckCompatibily();
        }
        ```
    - Then you need to decalre the engine with `MakeHWEngine32` for 32-bit values and `MakeHWEngine64` for 64-bit values
    - Then pass it on Generators
        ```cpp
        Twister32 e32 = MakeHWEngine32();
        Twister64 e64 = MakeHWEngine64();

        /* 32 sub-vector, 16 elements each, with value 0.01..9.99 with 2 digis rounding */
        vec<vec<f32>> Rdvvf32 RandomNumsBF(e32, 32, 16, 0.01, 9.99, 2);
        ```

---

# Lib `Tools.Randomizer`

---

# Lib `Tools.Rounding`

---

# Lib `Tools.Style`

---

# Lib `Tools.StyleW`

---

# Lib `Tools.Vector`