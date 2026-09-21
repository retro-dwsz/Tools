# Retro Dave's Tools Coding Guide (EN)

---

## 0. What Is This?
- This document is a mandatory standard for all RDTools contributors. Any PR or commit that violates these guidelines will be rejected.

## 1. File Format
- **Indentation:** Tab size 4 chars. You MUST use literal spaces (not the `\t` character) to avoid tab ambiguity across IDEs (VSCode, CLion, NVim, Emacs, Nano, Fresh, etc.).
- **Line Ending:** Use `CRLF` or `LF` (`\n`) locally, but always convert to `LF` in the repository. Never commit `CRLF` to the main repo. Configure Git with `git config --global core.autocrlf input`.
- **Encoding:** UTF-8 without BOM.
- **End of File:** Every file MUST end with exactly one trailing newline.
- **Header Guard:** Use a combination of `#pragma once` and `#ifndef`. If generated via tooling, follow the established prefix/suffix/index format.

## 2. Function Declaration & Implementation

Separating declaration and implementation applies **ONLY to Classes**. For Structs, Namespaces, and Free Functions, combine them directly.

### 2.1. Class: Separate Declaration and Implementation
Declare methods inside the class, then define them outside the class. Use explicit assignment `this->prop = value;` in constructors/methods. Do not use initializer lists unless required for reference/const members.

```c++
class Point {
    i64 x, y;

public:
    // Declaration only inside the class
    Point(const i64 x, const i64 y) noexcept;
    pair<i64, i64> GetPoint() const noexcept;
};

// Implementation outside the class
Point::Point(const i64 x, const i64 y) noexcept {
    this->x = x;
    this->y = y;
}

pair<i64, i64> Point::GetPoint() const noexcept {
    return pair<i64, i64>{this->x, this->y};
}
```

### 2.2. Struct / Namespace: Combine Directly
If using a struct or namespace, write the function body directly at the point of declaration.

```c++
struct Screen {
    idx SizeX, SizeY;
    idx ResX, ResY;

    // Implementation directly inside the struct
    Screen(const idx sizeX, const idx sizeY, const idx resX, const idx resY) noexcept {
        this->SizeX = sizeX;
        this->SizeY = sizeY;
        this->ResX = resX;
        this->ResY = resY;
    }
};
```

### 2.3. Free Functions: Inline & Combine Directly
Functions that are not class members must use the `inline` keyword with the body written directly. Apply overloading based on how parameters are passed to differentiate behavior (return new vs modify in-place).

```c++
// Return new string (Read-only via const reference)
inline str Capitalize(const str& t) {
    str result = t;
    // ... capitalize logic ...
    return result;
}

// Do inline, no return (Modify in-place via pointer)
inline void Capitalize(str* t) {
    if (!t) return;
    // ... capitalize logic directly to *t ...
}
```


## 3. Naming Convention
- **Namespace:** `rdt::*` (main), `rdt::Tools::*` (code-level sub-modules).
- **Physical Files:** `RDTools/Tools.ModuleName.hpp` (Example: `RDTools/TrueRandom.hpp` contains `rdt::TrueRandom::*`).
- **Class / Struct:** PascalCase (Example: `ConstexprTwister`, `VerifyResult`).
- **Function / Method:** PascalCase (Example: `GetPoint`, `Capitalize`, `Timestamp`).
- **Variable / Parameter:** camelCase or PascalCase consistently. Avoid snake_case except for macros.
- **Concept:** PascalCase (Example: `SignedInt`, `UnsignedInt`, `Float`, `ThisContainers`).
- **Type Alias:** Short lowercase (Example: `i32`, `u64`, `f32`, `str`, `idx`).
- **Macro:** UPPER_SNAKE_CASE (Example: `TOOLS_PSTR_TEMPLATE`, `RDT_MAKE_ONE_OF`).
- **Private Class Members:** Use the `m_` prefix. Use descriptive names, and always access them via `this->`.


## 4. Type System & Aliases
- You MUST use RDTools type aliases (`i32`, `i64`, `u32`, `u64`, `f32`, `f64`, `str`, `idx`, etc.) instead of built-in C++ primitive types (`int`, `long`, `float`, `size_t`).
- Do NOT use fast/atomic types (`fu64`, `ai32`) as template parameters for algorithms that require exact bit widths (such as MT RNG). Use fixed-width types (`u32`, `u64`).
- Use `concepts` to constrain template parameters. Leverage the `RDT_CONCEPT_ONE_OF` macro or `OneOf<T, ...>` for type validation.


## 5. Modern C++ Practices (C++23/C++26)
- **`constexpr` / `consteval`:** Use `constexpr` for functions and variables that can be evaluated at compile-time. Use `consteval` if they MUST be evaluated at compile-time.
- **`noexcept`:** Mandatory for functions/methods that do not throw exceptions (constructors, getters, bitwise operations).
- **`explicit`:** Mandatory for conversion operators that allocate memory or change ownership (example: converting `PStr` to `std::string`). Do not write `explicit` on out-of-class definitions.
- **Destructor:** DO NOT explicitly write an empty destructor for non-owning classes (views/wrappers). Let the compiler generate the trivial destructor.
- **CTAD:** Provide *Class Template Argument Deduction Guides* for template classes so users don't have to manually write angle brackets `<>`.


## 6. Memory & Ownership
- **Non-Owning Views:** Classes like `PStr` only store a pointer and a size. No `new`/`delete` allowed. Data lifetime is the caller's responsibility. Document this warning clearly.
- **Owning Types:** If a class allocates memory, it must have a destructor, copy/move constructors, and copy/move assignment operators (Rule of Five).
- **Pointer vs Reference:**
    - Use `const T&` for read-only access.
    - Use `T*` for in-place modification (especially in free functions).
    - Avoid passing large objects by value.


## 7. Error Handling & Safety
- **Undefined Behavior (UB):** Strictly prohibited. Do not perform signed integer overflow, nullptr dereferencing, or out-of-bounds access.
- **Bit Manipulation:** When performing bitwise operations on signed integers, perform them on unsigned types first, then cast back to signed as the final step.
- **Compile-Time Safety:** Use `static_assert` to validate assumptions about type sizes or constexpr values.


## 8. Documentation
- Use **Doxygen-style** formatting for all public APIs.
- Mandatory tags: `@brief`, `@tparam`, `@param`, `@return`.
- Conditional tags: `@note` (for additional info), `@warning` (for potential dangers like UB, lifetime issues, or hidden memory allocations).
- Documentation must be written in **English (en-US)**.


## 9. Build System (CMake)
- RDTools is a **header-only INTERFACE library**.
- Do not use `add_executable` or `target_sources(PRIVATE)` for the main library target.
- Headers are registered via `GLOB_RECURSE CONFIGURE_DEPENDS` specifically for the test executable to appear in the IDE, not for building the library.
- Ensure include paths use generator expressions `$<BUILD_INTERFACE:...>` and `$<INSTALL_INTERFACE:...>`.

## 10. Compatibility
- **Primary Platform**: This repository is developed by a true Windows user utilizing the **MSYS2 + LLVM Clang** toolchain. If you find flaws/bugs when using this library on Linux or macOS with other compilers, report them immediately via the issue tracker and, if possible, provide the fix code.
- **Compiler**: Use the **LLVM Clang** compiler (version 17+ recommended). This library aggressively utilizes C++23/C++26 features (`concepts`, `consteval`, CTAD guides, fold expressions) which require modern Clang support. GCC 14+ might work but is not the primary testing target.
  **MSVC**: Ironically, this library is almost never tested using MSVC, due to its limited support for certain C++23/C++26 features, the complexity of package manager setup being far more complicated compared to Linux-style toolchains, and differences in template instantiation behavior. MSVC support is best-effort — use at your own risk.
- **CMake**: The minimum supported version is **CMake 4.x**.
- **Dependencies**: RDTools is designed as **zero external dependency** for the core library. Even specific modules (like IVec.Format) have built-in support for the `{fmt}` library. Ensure dependencies are installed via a package manager or available in the include path before building.
- **C++ Standard**: The target standard is **C++23**. The `cxx_std_23` compiler flag will automatically propagate to consumer projects via `target_compile_features(INTERFACE)`. Do not force compilation with a standard below C++23 — many APIs will fail.
- **Header-Only**: The entire library is header-only (`INTERFACE`). There are no `.lib`, `.a`, `.dll`, or `.so` binaries to link. Just `#include` and ensure the include path is correct.
- **Installation**: Since it is header-only, the simplest installation method is to copy-paste the `RDTools/` folder directly into your project's `include/` directory or into the system include path (e.g., `/usr/local/include/` on Linux or `C:/msys64/mingw64/include/` on Windows). Formal alternative via CMake: run `cmake --install build --prefix /path/to/install` which will produce an `include/RDTools/` structure along with config files so it can be consumed via `find_package(RDTools)`.