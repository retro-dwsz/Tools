# Retro Dave's Tools "Tools.hpp" Tools:: (or rdt::)

- ### What is this?
    A simple fully _header-only_ lib for C++ to make your code sesion _fells_ fun and kinda more Python-y feel. This lib in inteded for simple libs and everyday coding, not for big/enteprise project on that actually matter on you life or money.

    This project is **_entirely_** in C++, if you see like LLVM IR and Assembly on the github page, don't worry, it's just a testings and WON'T be included in instalation package, also those are generated with `clang++ -S -emit-llvm` and `clang++ -S`.

- ### Disclaimer
    I have to admit, like 80% of those codes are AI-generated, if you find any flaw, please tell me on issues or you can submit you code on issues or you can fork on your own :D

<!--
- ### Better markdown in Notion
    Better markdown for this documentation is typed using Notion.so [here](https://dwsz-249.notion.site/C-Tools-2f08edc33f1f80a2b877c0c4b19b800f?source=copy_link) (under construction)
-->

# Abstract of File Structure

- ### Header files
    |            Files          |                         What is this?                         |
    |---------------------------|---------------------------------------------------------------|
    |`Tools/Casting.hpp`        | Type Casting aliases                                          |
    |`Tools/Edges.hpp`          | Min/max getter for types                                      |
    |`Tools/Files.hpp`          | I/O files utility                                             |
    |`Tools/FormatNumber.hpp`   | Number formatter                                              |
    |`Tools/IVec.hpp`           | "Improved Vector", custom made container                      |
    |`Tools/Linking.hpp`        | Linking utility to dynamic linked (.dll) using windows API    |
    |`Tools/OS.hpp`             | Some utilities using OS APIs                                  |
    |`Tools/PrintHeader.hpp`    | Generate & Print header-like string                           |
    |`Tools/PStr.hpp`           | Class wrapper for pointer string                              |
    |`Tools/Random.hpp`         | Random Number generator                                       |
    |`Tools/Randomizer.hpp`     | Stuff to make random number (used by Random and RandomHW)     |
    |`Tools/Rounding.hpp`       | Python-like rounding utility                                  |
    |`Tools/Style.hpp`          | Text styler for str                                           |
    |`Tools/StyleW.hpp`         | Text styler for wstr                                          |
    |`Tools/Time.hpp`           | Time & Clock utilities                                        |
    |`Tools/Types.hpp`          | Type aliases                                                  |
    |`Tools/OS.hpp`             | OS (Windows, Linux, and MacOS) API utility                    |
    |`Tools/Version.hpp`        | Version infos of this library                                 |

- ### Folders
    |        Folder         |                   What is this?                   |
    |-----------------------|---------------------------------------------------|
    |`Deprecated/*`         | Deprecated libs, because it'll break you project instead making coding more fun and productive++|
    |`Experimental/*`       | Experimental libs, upcoming libs in progress      |
    |`Tools/IVec/*`         | Improved vector implementations                   |
    |`Tools/OS/*`           | Some utilities using OS APIs implementations      |
    |`Tools/Random/*`       | Random number implementations                     |
    |`Tools/Types/*`        | Types aliased "concept" + "using" implementations |
    |`Tools/Vector/*`       | Common operations for Vector implementations      |
    <!-- |`Tools/RandomHW/*`     | Hardware-level random number implementations      | -->

- ### Folder `Tools/Types/*`
    |               Files              |            What is this?             |
    |----------------------------------|--------------------------------------|
    | `/Types/Clock.hpp`               | Clocks & Units aliases               |
    | `/Types/Containers.hpp`          | Containers aliases                   |
    | `/Types/Int.hpp`                 | Signed interger aliases              |
    | `/Types/Int.Fast.hpp`            | Signed fast interger aliases         |
    | `/Types/Int.Atomic.hpp`          | Signed atomic interger aliases       |
    | `/Types/Int.Atomic.Fast.hpp`     | Signed atomic fast interger aliases  |
    | `/Types/UInt.hpp`                | Unsigned integer aliases             |
    | `/Types/UInt.Fast.hpp`           | Unsigned fast interger aliases       |
    | `/Types/UInt.Atomic.hpp`         | Unsigned atomic interger aliases     |
    | `/Types/UInt.Atomic.Fast.hpp`    | Unsigned atomic fast interger aliases|
    | `/Types/Float.hpp`               | Floating aliases                     |
    | `/Types/Pointer.hpp`             | Pointer aliases (not recommended)    |
    | `/Types/String.hpp`              | String type aliases                  |
    | `/Types/Memory.hpp`              | Smart pointer aliases                |

- ### Folder `Tools/IVec/*`
    <!-- |             File             |                           What is this?                            |
    |----------------------------- |--------------------------------------------------------------------|
    |`/IVec/_IVec.hpp`             | All include packed                                                 |
    |`/IVec/_IVecfmt.hpp`          | Formatter for {fmt} [deprecated, this thing has already iterators] |
    |`/IVec/Base.hpp`              | Base IVec class                                                    |
    |`/IVec/Init.hpp`              | Initializers for IVec                                              |
    |`/IVec/Basic.hpp`             | Minimal functions                                                  |
    |`/IVec/Advanced.hpp`          | Extended functions                                                 |
    |`/IVec/Convert.hpp`           | Conversion utilities to something else                             |
    |`/IVec/Data.hpp`              | Return pointer data                                                |
    |`/IVec/Getset.hpp`            | Getter and setter functions                                        |
    |`/IVec/Iter.hpp`              | Iterators functions                                                |
    |`/IVec/Legacy.hpp`            | Legacy functions with vector-like dictions                         | -->

    |                  File                 |                           What is this?                           |
    |---------------------------------------|-------------------------------------------------------------------|
    | `IVec.hpp`                            |   Include entry point                                             |
    | `IVec/Base.Master.hpp`                |   All modules inlcuded                                            |
    |  ~                                    |   ~                                                               |
    | `IVec/Base.Class.hpp`                 |   Base class                                                      |
    |                                       |
    | `IVec/Init.Ctor.hpp`                  |   Initializers for IVec                                           |
    | `IVec/Init.Dtor.hpp`                  |   Destructors for IVec                                            |
    |  ~                                    |   ~                                                               |
    | `IVec/Core.Data.hpp`                  |   Get Data about IVec                                             |
    | `IVec/Core.State.hpp`                 |   Get current state                                               |
    | `IVec/Core.Resize.hpp`                |   Makes you able to resize and reserve                            |
    | `IVec/Core.Append.hpp`                |   Append an item at last index                                    |
    | `IVec/Core.Append.Idx.hpp`            |   Append an item at specific index                                |
    | `IVec/Core.Emplace.hpp`               |   Construct on-fly and append an item at last index               |
    | `IVec/Core.Emplace.Idx.hpp`           |   Construct on-fly and append an item at specific index           |
    | `IVec/Core.Extend.hpp`                |   Extend (a.k.a "Concat") current IVec with other iterables       |
    |                                       |
    | `IVec/Access.Getset.hpp`              |   Common Getter and Setter utility                                |
    | `IVec/Access.Pop.hpp`                 |   Pop first/last/specific index                                   |
    | `IVec/Access.Elements.hpp`            |   Getter for first and last index                                 |
    | `IVec/Access.Iter.hpp`                |   Get iterator for current IVec                                   |
    | `IVec/Access.Ref.hpp`                 |   Get reference first or last index of current IVec               |
    |  ~                                    |   ~                                                               |
    | `IVec/Opr.Dunder.hpp`                 |   Python dunder like functions                                    |
    |  ~                                    |   ~                                                               |
    | `IVec/Items.Orders.hpp`               |   Sorting, shuffling, and reversing operations                    |
    | `IVec/Items.Query.hpp`                |   Deduplication and bulk reassignment operations                  |
    | `IVec/Items.Find.hpp`                 |   Linear search utilities                                         |
    | `IVec/Items.Slice.hpp`                |   Sub-range extraction operations                                 |
    | `IVec/Items.Erase.Idx.hpp`            |   Modern Index based element eraser                               |
    | `IVec/Items.Erase.Ptr.hpp`            |   Legacy Pointer based element eraser                             |
    |  ~                                    |   ~                                                               |
    | `IVec/Functional.hpp`                 |   Python-style functional transformations                         |
    |  ~                                    |   ~                                                               |
    | `IVec/Converter.hpp`                  |   String formatting and generic container conversion              |
    | `IVec/Converter.Opr.hpp`              |   Generic container conversion via () operator                    |
    |  ~                                    |   ~                                                               |
    | `IVec/Legacy.hpp`                     |   STL-compatible and legacy API aliases                           |
    |  ~                                    |   ~                                                               |
    | `IVec/Format.std.hpp`                 |   Formatter for std::format                                       |
    | `IVec/Format.fmt.hpp`                 |   Formatter for fmt::format                                       |
    |  ~                                    |   ~                                                               |
    | `IVec/Base.RangesQualification.hpp`   |   Compile-time C++20/26 ranges concept verification               |

- ### Folder `Tools/OS/*`
    |           File          |         What is this?      |
    |-------------------------|----------------------------|
    | `/OS/{OS}.API.hpp`      | All APIs wrapped           |
    | `/OS/{OS}.files.hpp`    | I/O + manage Files         |
    | `/OS/{OS}.proc.hpp`     | I/O to Processes           |
    | `/OS/{OS}.sleep.hpp`    | OS-level sleep             |
    | `/OS/{OS}.terminal.hpp` | Terminal size, celar, etc  |

- ### Folder `Tools/Random/*`
    |               File            |                         What is this?                         |
    |-------------------------------|---------------------------------------------------------------|
    | `"Random/_Common.hpp"`                | Internal utility for other files |
    | `"Random/Single.Base.hpp"`            | Single number generator |
    | `"Random/Single.Custom.hpp"`          | Single number generator with custom twister|
    | `"Random/Vector.Base.hpp"`            | Generator for `std::vector<>` |
    | `"Random/Vector.Custom.hpp"`          | Generator for `std::vector<>` with custom twister|
    | `"Random/Vector.Thread.hpp"`          | Generator for `std::vector<>` with multithreading|
    | `"Random/Vector.Thread.Custom.hpp"`   | Generator for `std::vector<>` with multithreading + custom twister |
    | `"Random/Bundle.Base.hpp"`            | Generator for `std::vector<std::vector<>>` |
    | `"Random/Bundle.Custom.hpp"`          | Generator for `std::vector<std::vector<>>` with custom twister |
    | `"Random/Bundle.Thread.hpp"`          | Generator for `std::vector<std::vector<>>` with multithreading|
    | `"Random/Bundle.Thread.Custom.hpp"`   | Generator for `std::vector<std::vector<>>` with multithreading + custom twister |
    | `"Random/SBundle.Base.hpp"`           | Generator for `std::vector<std::vector<>>` |
    | `"Random/SBundle.Custom.hpp"`         | Generator for `std::vector<std::vector<>>` with custom twister |
    | `"Random/SBundle.Thread.hpp"`         | Generator for `std::vector<std::vector<>>` with multithreading|
    | `"Random/SBundle.Thread.Custom.hpp"`  | Generator for `std::vector<std::vector<>>` with multithreading + custom twister |
    | `"Random/String.Base.hpp"`            | Generator for `char` or `str` from given range or charset |
    | `"Random/String.Custom.hpp"`          | Generator for `char` or `str` from given range or charset with custom twister |
    | `"Random/Choice.Base.hpp"`            | Random choice selector (implements `Vector.Base.hpp`) for given `std::vector` or any iterables |
    | `"Random/Choice.Custom.hpp"`          | Random choice selector (implements `Vector.Base.hpp`) for given `std::vector` or any iterables with custom twister |

- ### Folder `Tools/Vector/*`
    |               File                |                                What is this?                              |
    |-----------------------------------|---------------------------------------------------------------------------|
    | `/Vector/Accumulator.hpp`  | Accumulate vector values, like Summation, Product, and Average                   |
    | `/Vector/Find.hpp`         | Find value and/or index in a vector utilities                                    |
    | `/Vector/Order.hpp`        | Value order utilities and return new vector                                      |
    | `/Vector/Order.inl.hpp`    | Value order utilities and do it inplace                                          |
    | `/Vector/Slice.hpp`        | Keeper for vector, Keep `0->n` or `0<-n` or `x..y`, then return new vector       |
    | `/Vector/Slice.inl.hpp`    | Keeper for vector, and do it inplace                                             |
    | `/Vector/Eraser.hpp`       | Eraser for vector, Delete `0->n` or `0<-n` or `x..y`, then return new vector     |
    | `/Vector/Slice.inl.hpp`    | Eraser for vector, and do it inplace                                             |

- ### Folder `Tools/Lib` (Test only!)
    This lib but make it linkable, this is NOT included in msys package pack (in folder `/Msys/*.pkg.tar.zst`) and NOT installed in your `/lib` folder in you environment, so in deployment, this lib is STILL header only.
    Kinda stupid, because I compile the `.hpp` file instead of `.cpp` file.
    |            File           |              What is this?              |
    |---------------------------|-----------------------------------------|
    | `Tools.Processed.win.hpp` | A preprocessed `Tools.hpp` file, you may can use this as super poratable header-file, but I don't think you should|
    | `Tools.Processed.win.o`   | Compiled object of `ToolsProcessed.hpp` |
    | `libTools.a`              | Packed with `ar rcs` of `Tools.o` file  |
    | `...`                     | And some other files that can describe itself from it's file name|

---


# `I`. Lib `Tools.Types`

Types aliasing to make you less typing just for data types

### Integer, Unsiged Integer, and Floating
| Original | Aliased |  Original | Aliased |   Original   | Aliased |
|----------|---------|-----------|---------|--------------|---------|
|`int8_t`  | `i8`    | `uint8_t` | `u8`    |`float`       | `f32`   |
|`int16_t` | `i16`   | `uint16_t`| `u16`   |`double`      | `f64`   |
|`int32_t` | `i32`   | `uint32_t`| `u32`   |`long double` | `fld`   |
|`int64_t` | `i64`   | `uint64_t`| `u64`   |              |         |
|`ssize_t` | `sidx`  | `size_t`  | `idx`   |              |         |

## Fast, Atomic, AtomicFast Integer and Unsigned Integer
|     Original   | Aliased |        Original       | Aliased |
|----------------|---------|-----------------------|---------|
|`int_fast8_t`   | `fi8`   |`std::atomic_int8_t`   | `ai8`   |
|`int_fast16_t`  | `fi16`  |`std::atomic_int16_t`  | `ai16`  |
|`int_fast32_t`  | `fi32`  |`std::atomic_int32_t`  | `ai32`  |
|`int_fast64_t`  | `fi64`  |`std::atomic_int64_t`  | `ai64`  |
|`uint_fast8_t`  | `fi8`   |`std::atomic_uint8_t`  | `ai8`   |
|`uint_fast16_t` | `fi16`  |`std::atomic_uint16_t` | `ai16`  |
|`uint_fast32_t` | `fi32`  |`std::atomic_uint32_t` | `ai32`  |
|`uint_fast64_t` | `fi64`  |`std::atomic_uint64_t` | `ai64`  |


|           Original         | Aliased  |
|----------------------------|----------|
|`std::atomic_int_fast8_t`   | `afi8`   |
|`std::atomic_int_fast16_t`  | `afi16`  |
|`std::atomic_int_fast32_t`  | `afi32`  |
|`std::atomic_int_fast64_t`  | `afi64`  |
|`std::atomic_uint_fast8_t`  | `afi8`   |
|`std::atomic_uint_fast16_t` | `afi16`  |
|`std::atomic_uint_fast32_t` | `afi32`  |
|`std::atomic_uint_fast64_t` | `afi64`  |

## "At least" and "Atomic At least" Integer and Unsigned Integer

|     Original     | Aliased |           Original            | Aliased |
|------------------|---------|-------------------------------|---------|
| `int_least8_t`   | `il8`   | `std::atomic_int_least8_t`    | `ail8`  |
| `int_least16_t`  | `il16`  | `std::atomic_int_least16_t`   | `ail16` |
| `int_least32_t`  | `il32`  | `std::atomic_int_least32_t`   | `ail32` |
| `int_least64_t`  | `il64`  | `std::atomic_int_least64_t`   | `ail64` |
| `uint_least8_t`  | `ul8`   | `std::atomic_uint_least8_t`   | `aul8`  |
| `uint_least16_t` | `ul16`  | `std::atomic_uint_least16_t`  | `aul16` |
| `uint_least32_t` | `ul32`  | `std::atomic_uint_least32_t`  | `aul32` |
| `uint_least64_t` | `ul64`  | `std::atomic_uint_least64_t`  | `aul64` |


### C & C++ String
|      Original     |  Aliased |       Original       |  Aliased  |
|-------------------|----------|----------------------|-----------|
| `const char*`     | `cstr`   | `std::string`        | `str`     |
| `const char16_t*` | `cstr16` | `std::wstring`       | `wstr`    |
| `const char32_t*` | `cstr32` | `std::u16string`     | `str16`   |
| `<...>*`          | `pstr<T>`| `std::u32string`     | `str32`   |
| `PStr`            | (struct) | `std::string_view`   | `strview` |
|                   |          | `std::stringstream`  | `sstream` |
|                   |          | `std::ostringstream` | `ostream` |

`pstr<T>` is an alias for C-Style string (`char/wchar/char16/char32 []`), and PStr is struct for simple C-String types

### C++ Value Containers
|          Original          |    Aliased    |
|----------------------------|---------------|
| `std::vector<T>`           | `vec<T>`      |
| `std::array<T, idx>`       | `arr<T, idx>` |
| `std::map<K, V>`           | `map<K, V>`   |
| `std::unordered_map<K, V>` | `umap<K, V>`  |
| `std::set<T>`              | `set<T>`      |
| `std::unordered_set<T>`    | `uset<T>`     |
| `std::pair<K, V>`          | `pair<K, V>`  |
| `std::initializer_list<T>` | `initl<T>`    |
| `std::span<T>`             | `span<T>`     |
| `std::tuple<T...>`         | `tuple<T...>` |
| `std::list<T>`             | `list<T>`     |

### C++ Type Containers
|        Original       |    Aliased    |
|-----------------------|---------------|
| `std::optional<T>`    | `topt<T>`     |
| `std::variant<T...>`  | `tvar<T...>`  |
| `std::expected<A, B>` | `texp<A, B>`  |

Another type alias that you and I may not use often

### Raw Pointers

|               Name                |     Original     |   Aliased   |
|-----------------------------------|------------------|-------------|
| Pointer to data                   | `T*`             | `ptr<T>`    |
| Pointer to constant data          | `const T*`       | `ptrcd<T>`  |
| Constant pointer to data          | `T const*`       | `cptr<T>`   |
| Constant pointer to constant data | `const T *const` | `cptrcd<T>` |

### C++ Smart Pointers

|       Original       |  Aliased  |
|----------------------|-----------|
| `std::unique_ptr<T>` | `uptr<T>` |
| `std::shared_ptr<T>` | `sptr<T>` |
| `std::weak_ptr<T>`   | `wptr<T>` |

### Time Points (a.k.a clocks from `std::chrono`)
|                           Original                            |  Aliased  |
|---------------------------------------------------------------|-----------|
| `std::chrono::time_point<std::chrono::high_resolution_clock>` | `HClock`  |
| `std::chrono::time_point<std::chrono::steady_clock>`          | `SClock`  |
| `HClock`                                                      | `Clock`   |

### Commonly used packed type with `concept`
|     Concept   |                                                                 Types convered                                                                |
|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| `Nx32`        | `i32`, `f32`                                                                                                                                  |
| `Nx64`        | `i64`, `f64`                                                                                                                                  |
| `Number`      | `i8`, `i16`, `i32`, `i64`, `idx`, `u8`, `u16`, `u32`, `u64`, `sidx`, `f32`, `f64`, `fld`                                                      |
| `Integer`     | `i8`, `i16`, `i32`, `i64`, `u8`, `u16`, `u32`, `u64`                                                                                          |
| `SignedInt`   | `i8`, `i16`, `i32`, `i64`, `fi8`, `fi16`, `fi32`, `fi64`, `ai8`, `ai16`, `ai32`, `ai64`, `afi8`, `afi16`, `afi32`, `afi64`                    |
| `UnsignedInt` | `u8`, `u16`, `u32`, `u64`, `fu8`, `fu16`, `fu32`, `fu64`, `au8`, `au16`, `au32`, `au64`, `afu8`, `afu16`, `afu32`, `afu64`                    |
| `NtvInteger`  | `i32`, `i64`                                                                                                                                  |
| `NtvFloat`    | `f32`, `f64`                                                                                                                                  |
| `Float`       | `f32`, `f64`, `fld`                                                                                                                           |
| `CSize`       | `idx`, `sidx`                                                                                                                                 |
| `Number`      | `i8`, `i16`, `i32`, `i64`, `idx`, `u8`, `u16`, `u32`, `u64`, `sidx`, `f32`, `f64`, `fld`                                                      |
| `AllStrings`  | `str`, `strview`, `sstream`, `ostream`, `wstr`, `wstrview`, `wsstream`, `wostream`, `str16`, `str16view`, `str32`, `str32view`                |
| `CPStr`       | `char`, `u_char`, `s_char`, `wchar`, `char16`, `char32`                                                                                       |
| `CString`     | `char`, `wchar`, `char16`, `char32`                                                                                                           |
| `String`      | `str`, `strview`, `sstream`, `ostream`                                                                                                        |
| `WString`     | `wstr`, `wstrview`, `wsstream`, `wostream`                                                                                                    |
| `XString`     | `str16`, `str16view`, `str32`, `str32view`                                                                                                    |
| `StringView`  | `strview`, `wstrview`, `str16view`, `str32view`                                                                                               |
| `VContainer`  | `vec<T1>`, `arr<T1, S>`, `map<T1, T2>`, `umap<T1, T2>`,`set<T1>`, `uset<T1>`,`pair<T1, T2>`,`initl<T1>`, `span<T1>`,`tuple<T1>`, `list<T1>`   |
| `TContainer`  | `topt<T>, tvar<T>, texp<T, E>`                                                                                                                |
| `GContainer`  | `std::ranges::range<T>`                                                                                                                       |
| `Pointer`     | `ptr<T>`, `ptrcd<T>`, `cptr<T>`, `cptrcd<T>`, `i32p`, `u32p`, `uptr<T>`, `sptr<T>`, `wptr<T>`                                                 |
| `CPtr`        | `ptr<T>`, `ptrcd<T>`, `cptr<T>`, `cptrcd<T>`, `i32p`, `u32p`                                                                                  |
| `CPPStr`      | `uptr<T>`, `sptr<T>`, `wptr<T>`                                                                                                               |
| `ExtNum`      | `fi8`, `fi16`, `fi32`, `fi64`, `ai8`, `ai16`, `ai32`, `ai64`, `afi8`, `afi16`, `afi32`, `afi64`, `fu8`, `fu16`, `fu32`, `fu64`, `au8`, `au16`, `au32`, `au64`, `afu8`, `afu16`, `afu32`, `afu64`|
| `FInt`        | `fi8`, `fi16`, `fi32`, `fi64`                                                                                                                 |
| `AInt`        | `ai8`, `ai16`, `ai32`, `ai64`                                                                                                                 |
| `AFInt`       | `afi8`, `afi16`, `afi32`, `afi64`                                                                                                             |
| `FUInt`       | `fu8`, `fu16`, `fu32`, `fu64`                                                                                                                 |
| `AUInt`       | `au8`, `au16`, `au32`, `au64`                                                                                                                 |
| `AFUInt`      | `afu8`, `afu16`, `afu32`, `afu64`                                                                                                             |

An example of implementation:
```cpp
template <Numbers T>
void CheckRange(T& min, T& max) {
    if (max < min) std::swap(min, max);
}
```

This will check given bounds, and swap them if `min` is bigger than `max`

---

# `II`. Lib `Tools.Casting`

- ### Decription
    This is just aliases for `static_`, `dynamic_`, `const_`, `reintepret_`, and `any_` cast, because using 2 words for me looks like too verbose.

- ### Code:
    ```cpp
    namespace Tools::Cast {
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

### 1. `scast<T>(value)` alias for `static_cast`.

- ### Advantage:
    - Compile time conversion
    - Can be evaluated on compile-time if you use constexpr
    - Zero runtime overhead

- ### Used for:
    - Numeric conversion
    - Upcast/downcast non-polymorphic

### 2. `dcast<T>(value)` alias for `dynamic_cast`.

- ### Advantage:
    - Runtime castings
- ### Used for:
    - ONLY for pointers and references
    - Needs RTTI
    - Runtime-only (not constexpr compatible)
    Used for:
    - Downcast polymorphic which needs runtime checking

### 3. `ccast<T>(value)` alias for `const_cast`.

- ### Used for:
    - Deletes/adds qualifier "const"
    - Not changing base type

- ### WARNING:
    - Deleting const from absolute const object will cause Undefined Behaviour

### 4. `rcast<T>(value)` alias for `reinterpret_cast`.

- ### Advantage:
    - Bit-level cast
    - Most dangerous
    - Always for last resort

- ### Use ONLY if:
    - You don't know memory layout
    - No other safe alternatives

### 5. `acast<T>(std::any)` alias for `std::any_cast`.

- ### Advantage:
    - Runtime checked
    - Will throw std::bad_any_cast if type is wrong/bad

### 6. `cast<T>(value)` "One-door" casting API.

- ### Philosophy:
    - Default to static_cast
    - Not trying to be smart
    Note:
    - This Function is intended to be simple
    - If you need RTTI / const removal / bit cast, use `scast` / `dcast` / `ccast` / `rcast`

---

# `III`. Lib `Tools.Edges`

- ### Description
    Should've named "limits", but I pick "Edges" just because people won't confuse `<limits>` and `Tools.Limits`, so `Tools.Edges` were chosen.
- ### API Code:
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
        T GetMin();
    }
    ```

`GetMax<T>` : To get max value of given types \
`GetMin<T>` : To get min value of given types

---

# `IV`. Lib `Tools.Files`

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

# `V`. Lib `Tools.FormatNumber`

code:
```cpp
namespace Tools::FormatNumber {
    /* Defaults */
    template <Integer T>
    str Format(const T n);

    template <Float T>
    str Format(const T n);

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
- ### For example:
    - `€1.000,50` or `€1 000,50` in C will be `1000.50`
    - `$1,000.50` in C will be `1000.50`
- ### Example of code usage:
    - `Format(314217)` will return `314'217`
    - `Format(314217, '\'', 3)` will return `314'217`
    - `Format(3142.17, '\'', 3)` will return `3'142.17`
    - `Format(3142.17, '@', 2)` will return `31@42.17`

The 3rd function has the `Char Decimal`, indicates you can custom character for decimals. \
Example:
- `Format(3142.17)` will return `3'142,17`
- `Format(3142.17, ' ', ',', 3)` will return `3 142,17`

---

# `VI`. Lib `Tools.IVec`

IVec or "*I*mproved *Vec*tor" is a container just like `std::vector`, but with better choice of diction, for example: `push_back` is now `append` (just like Python).
All description is already in `IVec/*.hpp`, descriptions are intentionally made short and simple, so even beginners can understand it.

### Master file

- IVec.hpp

    Main entry point for the `Tools::ivec<T>` container library.

- IVec/Base.Master.hpp
    * Master aggregation header for the `Tools::ivec<T>` container.
    * This file serves as the single entry point for the ivec implementation. It includes all segmented module headers in the correct dependency order. Users should typically include "IVec.hpp" which transitively includes this file.
    * Naming Conventions
        - `-Inl` suffix: In-place mutation (modifies the container directly).       Methods without this suffix return a new modified copy.
        - `r-` prefix / `r` suffix: Reverse operation (e.g., rsort).
        - `ref-` prefix: Returns a reference instead of a copy.
        - `c-` prefix: Explicit const version (e.g., cbegin, crefbegin).

    * Note for formatter: Formatter headers (Format.std.hpp, Format.fmt.hpp) are intentionally **NOT included** here to avoid SFINAE conflicts with `<fmt/ranges.h>`. Include them explicitly in your translation unit **only** when needed.


### Base class

- IVec/Base.Class.hpp

    ### Note
    I've reworked `Tools.IVec` because old version is horrobly terrible even for some simple tasks. Yes, I know what are ye thinking. So in this new version, I reworked everything from base class typing into segmented typing. Why? Because I hate my self and C++ it self.

    > ### Brief:
    > > - Primary class declaration for `Tools::ivec<T>` (declarations only).
    >
    > ### Details:
    > > - This header contains the complete public interface declaration for the ivec<T> container template. All method implementations are segmented into dedicated headers and aggregated via Base.Master.hpp.
    > > - This file serves as the canonical reference for the full API surface. Developers should consult this file to discover available methods, then refer to the corresponding implementation header for details.

    ```cpp
    namespace Tools {
        template <typename T>
        class ivec {
            private:
            T*  m_Data;
            idx m_Size;
            idx m_Capacity;

            public:
            /** [Init] Constructors **/
            ivec() noexcept;
            ivec(initl<T> Data);
            ivec(const ivec& Data);
            ivec(ivec&& Data) noexcept;
            explicit ivec(const vec<T>& Data);
            explicit ivec(const span<const T>& Data);

            /** [Init] DeConstructors **/
            ~ivec() noexcept;

            /** [Core] Data stuffs **/
            [[nodiscard]] T* data() noexcept;
            [[nodiscard]] const T* data() const noexcept;
            [[nodiscard]] idx size() const noexcept;
            [[nodiscard]] idx capacity() const noexcept;
            [[nodiscard]] u64 memory() const noexcept;

            /** [Core] Resize and reserve with/for stuffs **/
            void resize(idx Size, const T& Fill = T{});
            void reserve(idx Size);

            /** [Core] Append at end **/
            void append(const T& Element);
            void append(T&& Element);

            /** [Core] Append at specific index **/
            void appendFirst(const T& Item);
            void appendAt(const T& Item, idx At);

            /** [Core] Emplace at end **/
            template<typename... Args>
            void emplace(Args&&... Items);

            /** [Core] Emplace at specific index **/
            template<typename... Args>
            void emplaceFront(Args&&... Items);
            template<typename... Args>
            void emplaceAt(idx At, Args&&... Items);

            /** [Core] Extend this with other iterables **/
            void extend(std::span<const T> Data);

            /** [Core] State **/
            void clear();
            [[nodiscard]] bool isEmpty() const noexcept;

            /** [Access] Common getter **/
            [[nodiscard]] T& operator[](idx Index) noexcept;
            [[nodiscard]] const T& operator[](idx Index) const noexcept;
            [[nodiscard]] T& at(const idx& Index);
            [[nodiscard]] T& at(const idx& Index) const;

            /** [Access] Common setter **/
            [[nodiscard]] ivec& operator=(const ivec& Other);

            /** [Access] Pop front/back/specific index **/
            [[nodiscard]] T pop(const idx& Index);
            [[nodiscard]] T popFirst();
            [[nodiscard]] T popLast();

            /** [Access] Specific Element Accessors **/
            [[nodiscard]] T first() const noexcept;
            [[nodiscard]] T last() const noexcept;
            [[nodiscard]] T first(idx n) const noexcept;
            [[nodiscard]] T last(idx n) const noexcept;
            [[nodiscard]] T front() const noexcept;
            [[nodiscard]] T back() const noexcept;

            /** [Access] Standard Iterators (Pointer-based) **/
            [[nodiscard]] T* begin() noexcept;
            [[nodiscard]] const T* begin() const noexcept;
            [[nodiscard]] const T* cbegin() const noexcept;
            [[nodiscard]] T* end() noexcept;
            [[nodiscard]] const T* end() const noexcept;
            [[nodiscard]] const T* cend() const noexcept;

            /** [Access] Reference Accessors with bounds check **/
            [[nodiscard]] T& refbegin();
            [[nodiscard]] const T& refbegin() const;
            [[nodiscard]] const T& crefbegin() const;
            [[nodiscard]] T& refend();
            [[nodiscard]] const T& refend() const;
            [[nodiscard]] const T& crefend() const;

            /** [Opr] Dunders **/
            [[nodiscard]] /* __add__ */ ivec operator+(const ivec& Other);
            [[nodiscard]] /* __mul__ */ ivec operator*(idx Count);
            [[nodiscard]] /* __eq__  */ bool operator==(const ivec& Other) const;

            /** [Items] Orders **/
            [[nodiscard]] ivec shuffle();
            [[nodiscard]] ivec Sort();
            [[nodiscard]] ivec rSort();
            [[nodiscard]] ivec Reverse();
                          void ShuffleInl();
                          void SortInl();
                          void rSortInl();
                          void ReverseInl();

            /** [Items] Query **/
            [[nodiscard]] ivec Uniques(idx Max = 1);
            [[nodiscard]] ivec Reassign(span<const T> Data, idx Start);
                          void UniquesInl(idx Max = 1);
                          void ReassignInl(span<const T> Data, idx Start);

            /** [Items] Find utils **/
            [[nodiscard]] bool Contains(const T& Item) noexcept;
            [[nodiscard]] idx Find(const T& Item) noexcept;
            [[nodiscard]] idx FindFreq(const T& Item) noexcept;
            [[nodiscard]] pair<idx, vec<T>> FindAll(const T& Item) noexcept;

            /** [Items] Slicers **/
            [[nodiscard]] ivec Slice(i64 From, i64 To);
            [[nodiscard]] ivec Slice(i64 To);
                          void SliceInl(i64 From, i64 To);
                          void SliceInl(i64 To);

            /** [Items] Eraser return new by index **/
            [[nodiscard]] ivec Erase(idx Pos);
            [[nodiscard]] ivec Erase(idx From, idx To);

            /** [Items] Eraser do inline by pointer **/
            void EraseInl(idx Pos);
            void EraseInl(idx From, idx To);

            /** [Items] Eraser return new by pointer **/
            [[nodiscard]] ivec erase(T* pos);
            [[nodiscard]] ivec erase(T* begin, T* end);

            /** [Items] Eraser fo inline by pointer **/
            void eraseInl(T* pos);
            void eraseInl(T* begin, T* end);

            /** [Functional] Generate items by lambda **/
            template <typename Fn>
            requires requires(Fn&& f, const T& x) { f(x); }
            [[nodiscard]] auto Map(Fn&& Func) const -> ivec<decltype(Func(std::declval<const T&>()))>;

            template <typename Fn>
            requires std::predicate<Fn, const T&>
            [[nodiscard]] ivec Filter(Fn&& Pred) const;

            /** [Converter] Convert to common objects **/
            [[nodiscard]]   str fstr() const;
            [[nodiscard]]   str join(strview Delim = ", ") const;
                            void toCArr(span<T> Destination) const;
            template <template<typename, typename...> class Container>
            [[nodiscard]]   auto to() const;

            /* [Converter.Opr] Auto converter to std::span & std::vector by operator */
            explicit operator span<T>() const noexcept;
            explicit operator span<const T>() const noexcept;
            explicit operator vec<T>() const noexcept ;
            explicit operator vec<const T>() const noexcept;

            /* Legacy functions */
            void push_back(const T& Item);
            void push_front(const T& Item);
            void insert(ivec &&v);
            void insert(span<const T>& v);
            void insert(const T& Item, idx At);
            void insert(const T* From, const T* To);
        };
    }
    ```

### Inits

- IVec/Init.Ctor.hpp

    > ### Brief:
    > > Constructor implementations for `Tools::ivec<T>`.
    >
    > ### Details:
    > > Provides all construction pathways for ivec including:
    > > - Default construction (empty, zero-allocation)
    > > - Initializer list construction
    > > - Copy/move construction from std::vector and std::span
    > > - Deep copy construction from another ivec
    > > - Move construction (zero-copy ownership transfer)
    >
    > ### Note
    > > All constructors that allocate memory use operator new[] directly. Elements are constructed via placement new to support non-default-constructible types.

    ```cpp
    /** Init **/

    namespace Tools {
        /// @brief Default constructor. Creates an empty vector with no allocation.
        /// @post size() == 0, capacity() == 0, data() == nullptr
        template <typename T>
        ivec<T>::ivec() noexcept;
    }

    namespace Tools {
        /// Construct with {}
        /// @brief Construct from std::vector<T> (deep copy).
        /// @param Data Source vector to copy elements from.
        /// @note Explicit constructor to prevent implicit conversion.
        ///       Allocates exactly Data.size() capacity. Empty source results in no allocation.
        template <typename T>
        ivec<T>::ivec(initl<T> Data);

        /// Construct from Data std::vector<T>
        /// @brief Deep copy constructor from another ivec.
        /// @param Data Source ivec to copy. All elements are copy-constructed.
        /// @note Allocates exactly other.capacity() (not size) to preserve reserved space.
        ///       If source is empty, no allocation occurs.
        template <typename T>
        ivec<T>::ivec(const vec<T>& Data);

        /// Construct from Data ivec
        /// @brief Deep copy constructor from another ivec.
        /// @param Data Source ivec to copy. All elements are copy-constructed.
        /// @note Allocates exactly other.capacity() (not size) to preserve reserved space.
        ///       If source is empty, no allocation occurs.
        template <typename T>
        ivec<T>::ivec(const ivec& Data);

        /// Construct from temporary other ivec
        /// @brief Move constructor. Transfers ownership from another ivec.
        /// @param Data Source ivec whose resources are stolen. Left in valid empty state.
        /// @post other.size() == 0, other.capacity() == 0, other.data() == nullptr
        /// @note noexcept — guaranteed not to throw. Critical for STL container compatibility.
        template <typename T>
        ivec<T>::ivec(ivec&& Data) noexcept;

        /// Construct from unified containers
        /// @brief Construct from std::span<const T> (deep copy).
        /// @param Data Span of elements to copy. Supports any contiguous range.
        /// @note Explicit constructor to prevent implicit conversion.
        ///       Uses std::uninitialized_copy for optimal construction of non-trivial types.
        ///       Empty span results in no allocation.
        template <typename T>
        ivec<T>::ivec(const span<const T>& Data);
    }
    ```
- IVec/Init.Dtor.hpp
    > ### Brief
    > > Destructor implementation for `Tools::ivec<T>`.
    >
    > ### Details
    > > Responsible for proper cleanup of heap-allocated resources:
    > > 1. Explicitly destroys all constructed elements via destructor calls
    > > 2. Releases raw memory back to the allocator via operator delete[]
    >
    > ### Note
    > > This destructor is `noexcept` and safe to call on moved-from objects `(where m_Data == nullptr)`. `operator delete[](nullptr)` is a valid no-op per the C++ standard.
    >
    > ### Warning
    > > Elements are destroyed in forward order [0, size). If reverse, destruction order is required for your use case, modify accordingly.

    ```cpp
    namespace Tools {
        /// @brief Destructor. Destroys all elements and releases heap memory.
        /// @post All element destructors have been called. Raw memory is freed.
        /// @note noexcept — guaranteed not to throw. Element destructors that throw
        ///       will result in std::terminate() being called.
        template <typename T>
        ivec<T>::~ivec() noexcept;
    }
    ```

### Core features

- IVec/Core.Data.hpp
    > ### Brief
    > > Core data accessors for `Tools::ivec<T>`.
    >
    > ### details
    > Provides read-only and mutable access to the underlying storage, size/capacity queries, and memory usage reporting. All methods are O(1) and `noexcept` where applicable.
    >
    > ### Note
    > These accessors do NOT perform bounds checking. Use `at()` or `refbegin()`/`refend()` for safe bounded access.
    ```cpp
    namespace Tools {
        /// @brief Get mutable pointer to underlying data buffer.
        /// @return Pointer to first element, or nullptr if empty.
        /// @note Lifetime tied to this ivec. Invalidated by reserve(), resize(), clear(),
        ///       append(), extend(), erase(), or any operation that may reallocate.
        template <typename T>
        T* ivec<T>::data() noexcept;

        /// @brief Get const pointer to underlying data buffer.
        /// @return Const pointer to first element, or nullptr if empty.
        /// @note Same lifetime guarantees as mutable data().
        template <typename T>
        const T *ivec<T>::data() const noexcept;

        /// @brief Get number of elements currently stored.
        /// @return Current element count. Always <= capacity().
        template <typename T>
        idx ivec<T>::size() const noexcept;

        /// @brief Get current storage capacity (elements that fit without reallocation).
        /// @return Number of elements that can be held before next reallocation.
        ///         Always >= size().
        template <typename T>
        idx ivec<T>::capacity() const noexcept;

        /// @brief Get total memory used by stored elements in bytes.
        /// @return sizeof(T) * size(). Does NOT include unused capacity overhead.
        /// @note For total allocated memory including reserved capacity,
        ///       use sizeof(T) * capacity() instead.
        template <typename T>
        u64 ivec<T>::memory() const noexcept;
    }
    ```

- IVec/Core.State.hpp
    > ### Brief
    > > Container state management for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides utilities for clearing contents and querying emptiness.
    > > These operations **do NOT** change the allocated capacity.
    ```cpp
    namespace Tools {
        /// Nuke everything
        /// @brief Destroy all elements and set size to zero.
        /// @post size() == 0, capacity() unchanged, data() still valid (but empty).
        /// @note Calls destructor on each element explicitly. Does NOT free heap memory.
        ///       To release memory as well, use shrink_to_fit() after clear() (if available).
        ///       Safe to call on an already-empty vector.
        template <typename T>
        void ivec<T>::clear();

        /// Is there anyone?
        /// @brief Check whether the container holds no elements.
        /// @return true if size() == 0, false otherwise.
        /// @note O(1) complexity. Equivalent to (size() == 0) but more expressive.
        template <typename T>
        bool ivec<T>::isEmpty() const noexcept;
    }
    ```

- IVec/Core.Resize.hpp
    > ### Brief
    > > Capacity management for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides reserve() for pre-allocation without changing size, and resize() for changing the logical element count with optional fill value.
    >
    > ### Note
    > > Both functions use strong exception guarantee for shrink operations. Grow operations provide basic guarantee — if construction of fill values throws, the vector remains in a valid state with elements constructed up to the failure point.
    ```cpp
    namespace Tools {
        /* Resize (with filler value given or default) */
        /// @brief Change the number of stored elements.
        /// @param Size New element count. If smaller than current size, excess elements are destroyed.
        ///             If larger, new elements are copy-constructed from Fill.
        /// @param Fill Value used to initialize new elements when growing. Default-constructed T if omitted.
        /// @post size() == Size. capacity() >= Size.
        /// @note Shrinking does NOT release memory (capacity unchanged). Call shrink_to_fit() after
        ///       resize() if you want to release unused capacity (when available).
        ///       Growing may trigger reallocation if Size > capacity().
        template <typename T>
        void ivec<T>::resize(const idx Size, const T& Fill);

        /* Reserve (with NONE value) */
        /// @brief Pre-allocate storage without changing size.
        /// @param Size Minimum capacity to ensure. No-op if Size <= capacity().
        /// @post capacity() >= Size. size() unchanged. All existing elements preserved.
        /// @note Uses move_if_noexcept for relocation — falls back to copy if move constructor
        ///       is not noexcept, ensuring strong exception safety during reallocation.
        ///       Existing elements are always destroyed before old memory is freed.
        template <typename T>
        void ivec<T>::reserve(const idx Size);
    }
    ```

- IVec/Core.Append.hpp
    > ### Brief
    > > Single-element append operations for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides append() overloads for adding individual elements to the end of the vector. Supports both lvalue (copy) and rvalue (move) semantics. Automatic capacity growth uses 2x strategy.
    >
    > ### Note
    > > - For bulk insertion, use `extend()` or `append(span)` instead.
    > > - For in-place construction without copies/moves, use `emplace()`.
    ```cpp
    namespace Tools {
        /** Append single element (lvalue) **/
        /// @brief Append element by copy-constructing at the end.
        /// @param Element Lvalue reference to copy into the vector.
        /// @post size() increased by 1. Element is copy-constructed at new position.
        /// @note Triggers reallocation if size() == capacity() before insertion.
        ///       Growth factor: 2x current capacity (or 1 if empty).
        template <typename T>
        void ivec<T>::append(const T& Element);

        /** Append single element (rvalue) **/
        /// @brief Append element by move-constructing at the end.
        /// @param Element Rvalue reference to move into the vector.
        /// @post size() increased by 1. Element is move-constructed at new position.
        ///       Source object is left in valid-but-unspecified state.
        /// @note Triggers reallocation if size() == capacity() before insertion.
        ///       Growth factor: 2x current capacity (or 1 if empty).
        template <typename T>
        void ivec<T>::append(T&& Element);
    }
    ```

- IVec/Core.Append.Idx.hpp
    > ### Brief
    > > Positional insertion operations for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides appendFirst() and appendAt() for inserting elements at specific positions.
    > > These operations are O(n) due to element shifting, but benefit from ivec's direct memory control compared to std::vector:
    > > - No iterator invalidation checks overhead
    > > - Direct placement-new construction at target position
    > > - Explicit move-if-noexcept optimization during shift
    >
    > ### Note
    > > For bulk insertion at position, consider using `reassignInl()` or manual `extend()` + shift pattern for better performance.
    ```cpp
    namespace Tools {
        /// @brief Insert element at the beginning of the vector.
        /// @param Item Value to copy-construct at index 0.
        /// @post size() increased by 1. All existing elements shifted right by 1.
        /// @note O(n) operation. Uses move_if_noexcept for shifting to ensure
        ///       strong exception safety when T has noexcept move constructor.
        ///       Triggers reallocation if size() == capacity() before insertion.
        template <typename T>
        void ivec<T>::appendFirst(const T& Item);

        /// @brief Insert element at specified position.
        /// @param Item Value to copy-construct at position At.
        /// @param At Target index [0, size()]. Clamped to size() if out of range.
        /// @post size() increased by 1. Elements at [At, old_size) shifted right by 1.
        /// @note O(n) operation where n = size() - At. Uses move_if_noexcept for shifting.
        ///       When At == size(), behaves identically to append(Element).
        ///       Triggers reallocation if size() == capacity() before insertion.
        template <typename T>
        void ivec<T>::appendAt(const T& Item, idx At);
    }
    ```

- IVec/Core.Emplace.hpp
    > ### Brief
    > > In-place construction at end for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides emplace() for constructing elements directly in the vector's
    > > storage using perfect forwarding. Avoids temporary object creation
    > > and extra copy/move operations compared to append().
    >
    > ### Note
    > > Prefer emplace() over append() when constructing complex objects or
    > > when T is non-copyable/non-movable. For simple types (int, float),
    > > performance difference is negligible.
    ```cpp
    namespace Tools {
        /** Emplace object at end **/
        /// @brief Construct element in-place at the end using forwarded arguments.
        /// @tparam Args Constructor argument types (perfectly forwarded).
        /// @param Items Arguments forwarded to T's constructor.
        /// @post size() increased by 1. Element constructed directly at new position.
        /// @note Triggers reallocation if size() == capacity() before construction.
        ///       Growth factor: 2x current capacity (or 1 if empty).
        ///       If T's constructor throws, vector remains unchanged (strong guarantee).
        template <typename T>
        template <typename... Args>
        void ivec<T>::emplace(Args&&... Items);
    }
    ```

- IVec/Core.Emplace.Idx.hpp
    > ### Brief
    > > Positional in-place construction for `Tools::ivec<T>`.
    >
    > ### Details
    > Provides emplaceFront() and emplaceAt() for constructing elements
    > directly at specific positions using perfect forwarding. Combines
    > the zero-copy benefits of emplace() with positional insertion.
    >
    > ### Note
    > > These are O(n) operations due to element shifting. For simple types,
    > > prefer appendFirst()/appendAt() which have identical performance.
    > > Use emplace variants when constructing complex/non-movable objects.

    ```cpp

    namespace Tools {
        /** Emplace object at 1st index **/
        /// @brief Construct element in-place at the beginning using forwarded arguments.
        /// @tparam Args Constructor argument types (perfectly forwarded).
        /// @param Items Arguments forwarded to T's constructor.
        /// @post size() increased by 1. All existing elements shifted right by 1.
        /// @note Delegates to emplaceAt(0, args...). See emplaceAt() for full details.
        template <typename T>
        template<typename... Args>
        void ivec<T>::emplaceFront(Args&&... Items);

        /** Emplace object at specific index **/
        /// @brief Construct element in-place at specified position using forwarded arguments.
        /// @tparam Args Constructor argument types (perfectly forwarded).
        /// @param At Target index [0, size()]. Clamped to size() if out of range.
        /// @param Items Arguments forwarded to T's constructor.
        /// @post size() increased by 1. Elements at [At, old_size) shifted right by 1.
        ///       New element constructed directly at target position via placement new.
        /// @note O(n) where n = size() - At. Uses move_if_noexcept for shifting.
        ///       Triggers reallocation if size() == capacity() before construction.
        ///       If T's constructor throws after shift, vector is left in valid but
        ///       partially-shifted state (basic exception guarantee).
        template <typename T>
        template<typename... Args>
        void ivec<T>::emplaceAt(idx At, Args&&... Items);
    }

    ```

- IVec/Core.Extend.hpp
    > ### Brief
    > > Bulk element insertion for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides extend() for appending multiple elements from any contiguous
    > > range via std::span. Performs exact pre-allocation to ensure zero
    > > intermediate reallocations during bulk insertion.
    >
    > ### Note
    > > For single-element insertion, use append() instead.
    > > For positional insertion, use reassignInl() or appendAt().
    ```cpp

    namespace Tools {
        /** Generic Extend with span **/
        /// @brief Append all elements from a span to the end of the vector.
        /// @param Data Span of elements to copy-construct at the end.
        /// @post size() increased by D.size(). All source elements are copy-constructed.
        /// @note Performs exact pre-allocation (m_Size + D.size()) before copying,
        ///       guaranteeing zero intermediate reallocations regardless of current capacity.
        ///       Empty span is a no-op. Source and destination may safely overlap
        ///       only if source is entirely before the write position.
        template <typename T>
        void ivec<T>::extend(span<const T> Data);
    }
    ```

### Accessors

- IVec/Access.Getset.hpp
    > ### Brief
    > > Element access operators and copy assignment for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides unchecked `operator[]` for performance-critical paths,
    > > bounds-checked `at()` for safe access, and deep-copy assignment.
    >
    > ### Note
    > > `operator[]` does NOT perform bounds checking in any build configuration.
    > > Use `at()` when index validity cannot be guaranteed at compile time.
    ```cpp
    /** Common Getter Operators **/
    namespace Tools {
        /// @brief Access element by index without bounds checking (mutable).
        /// @param Index Position of the element [0, size()).
        /// @return Mutable reference to the element at Index.
        /// @warning UB if Index >= size(). No debug assertion is performed.
        ///          Use at() for safe bounded access.
        template <typename T>
        T& ivec<T>::operator[](idx Index) noexcept;

        /// @brief Access element by index without bounds checking (const).
        /// @param Index Position of the element [0, size()).
        /// @return Const reference to the element at Index.
        /// @warning UB if Index >= size(). No debug assertion is performed.
        template <typename T>
        const T& ivec<T>::operator[](idx Index) const noexcept;
    }

    /** Legacy getter at (with bounds check) **/
    namespace Tools {
        /// @brief Access element by index with bounds checking (mutable).
        /// @param Index Position of the element [0, size()).
        /// @return Mutable reference to the element at Index.
        /// @throws std::out_of_range if Index >= size().
        template <typename T>
        T& ivec<T>::at(const idx& Index);

        /// @brief Access element by index with bounds checking (const).
        /// @param Index Position of the element [0, size()).
        /// @return Const reference to the element at Index.
        /// @throws std::out_of_range if Index >= size().
        template <typename T>
        T& ivec<T>::at(const idx& Index) const;
    }

    /** Common Setter Operators **/
    namespace Tools {
        /// @brief Deep-copy assignment from another ivec.
        /// @param Other Source vector to copy. Self-assignment is safely handled.
        /// @return Reference to this vector after assignment.
        /// @post size() == Other.size(), capacity() == Other.capacity().
        ///       All elements are copy-constructed into freshly allocated storage.
        /// @note Strong exception guarantee: if allocation or copy construction fails,
        ///       this vector remains unchanged (old data preserved until new data is ready).
        template <typename T>
        ivec<T>& ivec<T>::operator=(const ivec& Other);
    }
    ```

- IVec/Access.Pop.hpp
    > ### Brief
    > > Element removal operations for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides `pop()`, `popFirst()`, and `popLast()` for extracting and removing
    > > elements by value. All operations shift remaining elements to maintain
    > > contiguous storage.
    >
    > ### Note
    > > These are O(n) operations due to element shifting. For bulk removal,
    >       consider `eraseInl()` or `filter()` instead.
    >
    > ### Warning
    > > Calling `pop()` on an empty vector or with Index >= `size()` is UB.
    > > No bounds checking is performed. Use `at()` + `eraseInl()` for safe removal.
    ```cpp
    /** Poper, get then remove **/
    namespace Tools {
        /** Pop specific index **/
        /// @brief Remove and return element at specified index.
        /// @param Index Position of element to remove [0, size()).
        /// @return The removed element (moved if possible).
        /// @post size() decreased by 1. Elements at [Index+1, old_size) shifted left.
        /// @note O(n) where n = size() - Index. Uses move assignment for shifting.
        ///       Last slot is explicitly destroyed after shift to prevent leaks.
        template <typename T>
        T ivec<T>::pop(const idx& Index);

        /** Pop 1st index **/
        /// @brief Remove and return the first element.
        /// @return The removed first element (moved if possible).
        /// @post size() decreased by 1. All remaining elements shifted left.
        /// @note O(n) — equivalent to pop(0). For frequent front removal,
        ///       consider a deque-like structure instead.
        template <typename T>
        T ivec<T>::popFirst();

        /** Pop last index **/
        /// @brief Remove and return the last element.
        /// @return The removed last element (moved if possible).
        /// @post size() decreased by 1. No shifting required.
        /// @note O(1) — most efficient pop variant. Preferred when order doesn't matter.
        template <typename T>
        T ivec<T>::popLast();
    }
    ```

- IVec/Access.Elements.hpp
    > ### Brief
    > > Positional element accessors for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides `first()`, `last()`, `front()`, `back()` and their indexed variants.
    >          All methods return by value (copy) and are noexcept.
    >
    > ### Warning
    > > No bounds checking is performed. Calling on an empty vector or with
    > > out-of-range index is Undefined Behavior. Use `refbegin()`/`refend()`
    > > for bounds-checked reference access.
    ```cpp
    /** First index **/
    namespace Tools {
        /// @brief Get first element by copy.
        /// @return Copy of the first element.
        /// @warning UB if size() == 0. No bounds check performed.
        template <typename T>
        [[nodiscard]] T ivec<T>::first() const noexcept;

        /// @brief Get last element by copy.
        /// @return Copy of the last element.
        /// @warning UB if size() == 0. No bounds check performed.
        template <typename T>
        [[nodiscard]] T ivec<T>::last() const noexcept;

        /// @brief Get nth element from start by copy.
        /// @param n Zero-based offset from the beginning [0, size()).
        /// @return Copy of the element at position n.
        /// @warning UB if n >= size(). No bounds check performed.
        template <typename T>
        [[nodiscard]] T ivec<T>::first(const idx n) const noexcept;

        /// @brief Get nth element from end by copy.
        /// @param n Zero-based offset from the end [0, size()).
        ///          last(0) == last(), last(1) == second-to-last, etc.
        /// @return Copy of the element at position (size() - 1 - n).
        /// @warning UB if n >= size(). No bounds check performed.
        template <typename T>
        [[nodiscard]] T ivec<T>::last(const idx n) const noexcept;
    }

    /** Last index **/
    namespace Tools {
        /// @brief Legacy alias for first(). Equivalent to std::vector::front().
        /// @return Copy of the first element.
        /// @warning UB if size() == 0.
        template <typename T>
        [[nodiscard]] T ivec<T>::front() const noexcept;

        /// @brief Legacy alias for last(). Equivalent to std::vector::back().
        /// @return Copy of the last element.
        /// @warning UB if size() == 0.
        template <typename T>
        [[nodiscard]] T ivec<T>::back() const noexcept;
    }
    ```

- IVec/Access.Iter.hpp
    > ### Brief
    > > Pointer-based iterator accessors for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides `begin()`/`end()` and their explicit const variants `cbegin()`/`cend()`.
    >          All iterators are raw pointers (`T*` / `const T*`), making ivec fully compatible
    >          with STL algorithms, std::ranges, and fmt/ranges without wrapper overhead.
    >
    > ### Note
    > > Mutable `begin()`/`end()` return `T*`, const overloads return const `T*`.
    > > This dual-overload pattern is required for `std::ranges::range` and
    > > `std::ranges::borrowed_range` concept satisfaction on lvalue references.
    ```cpp
    /** First index **/
    namespace Tools {
        /// @brief Get mutable iterator to the first element.
        /// @return Pointer to first element, or nullptr if empty.
        /// @note Equivalent to data(). Satisfies std::ranges::range requirement.
        template <typename T>
        [[nodiscard]] T* ivec<T>::begin() noexcept;

        /// @brief Get const iterator to the first element.
        /// @return Const pointer to first element, or nullptr if empty.
        /// @note Enables range-for and STL algorithms on const ivec.
        ///       Required for std::ranges::borrowed_range<ivec<T>&> satisfaction.
        template <typename T>
        [[nodiscard]] const T* ivec<T>::begin() const noexcept;

        /// @brief Get explicit const iterator to the first element.
        /// @return Const pointer to first element, or nullptr if empty.
        /// @note Use when you need guaranteed const iteration regardless of
        ///       whether the ivec itself is const or mutable.
        template <typename T>
        [[nodiscard]] const T* ivec<T>::cbegin() const noexcept;
    }

    /** Last index **/
    namespace Tools {
        /// @brief Get mutable past-the-end iterator.
        /// @return Pointer one past the last element. Never dereference this value.
        /// @note Equivalent to data() + size(). Satisfies std::ranges::range requirement.
        template <typename T>
        [[nodiscard]] T* ivec<T>::end() noexcept;

        /// @brief Get const past-the-end iterator.
        /// @return Const pointer one past the last element. Never dereference this value.
        /// @note Enables range-for and STL algorithms on const ivec.
        ///       Required for std::ranges::borrowed_range<ivec<T>&> satisfaction.
        template <typename T>
        [[nodiscard]] const T* ivec<T>::end() const noexcept;

        /// @brief Get explicit const past-the-end iterator.
        /// @return Const pointer one past the last element. Never dereference this value.
        /// @note Use when you need guaranteed const iteration regardless of
        ///       whether the ivec itself is const or mutable.
        template <typename T>
        [[nodiscard]] const T* ivec<T>::cend() const noexcept;
    }
    ```

- IVec/Access.Ref.hpp
    > ### Brief
    > > Bounds-checked reference accessors for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides `refbegin()`/`refend()` and their explicit const variants
    >          `crefbegin()`/`crefend()`. Unlike `first()`/`last()` which return by value,
    >          these return references and throw `std::out_of_range` on empty vectors.
    >
    > ### Note
    > > These are the safe counterparts to `first()`/`last()`. Use when you need
    >       a reference (not a copy) AND want bounds checking.
    >
    > ### Warning
    > > All methods throw `std::out_of_range` if `size() == 0`.
    > > They are NOT `noexcept`.
    ```cpp
    /** First index **/
    namespace Tools {
        /// @brief Get mutable reference to first element with bounds checking.
        /// @return Mutable reference to element at index 0.
        /// @throws std::out_of_range if size() == 0.
        /// @note Preferred over first() when you need to modify the element in-place.
        template <typename T>
        [[nodiscard]] T& ivec<T>::refbegin();

        /// @brief Get const reference to first element with bounds checking.
        /// @return Const reference to element at index 0.
        /// @throws std::out_of_range if size() == 0.
        template <typename T>
        [[nodiscard]] const T& ivec<T>::refbegin() const;

        /// @brief Get explicit const reference to first element with bounds checking.
        /// @return Const reference to element at index 0.
        /// @throws std::out_of_range if size() == 0.
        /// @note Use when you need guaranteed const access regardless of whether
        ///       the ivec itself is const or mutable. Analogous to cbegin().
        template <typename T>
        [[nodiscard]] const T& ivec<T>::crefbegin() const;
    }

    /** Last index **/
    namespace Tools {
        /// @brief Get mutable reference to last element with bounds checking.
        /// @return Mutable reference to element at index (size() - 1).
        /// @throws std::out_of_range if size() == 0.
        /// @note Preferred over last() when you need to modify the element in-place.
        template <typename T>
        [[nodiscard]] T& ivec<T>::refend();

        /// @brief Get const reference to last element with bounds checking.
        /// @return Const reference to element at index (size() - 1).
        /// @throws std::out_of_range if size() == 0.
        template <typename T>
        [[nodiscard]] const T& ivec<T>::refend() const;

        /// @brief Get explicit const reference to last element with bounds checking.
        /// @return Const reference to element at index (size() - 1).
        /// @throws std::out_of_range if size() == 0.
        /// @note Use when you need guaranteed const access regardless of whether
        ///       the ivec itself is const or mutable. Analogous to cend().
        template <typename T>
        [[nodiscard]] const T& ivec<T>::crefend() const;
    }
    ```

### Dunder

- IVec/Opr.Dunder.hpp
    > ### Brief
    > > Python-style operator overloads for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides intuitive operator syntax inspired by Python list semantics:
    > > - `operator+` : Concatenation (returns new ivec)
    > > - `operator*` : Repetition (returns new ivec with N copies)
    > > - `operator==`: Element-wise equality comparison
    >
    > ### Note
    > > All operators **return NEW vectors**. No in-place mutation variants
    > > (`+=`, `*=`) are provided to maintain value semantics and prevent
    > > accidental aliasing bugs. Use `extend()` for in-place concatenation.
    ```cpp
    /** Python like functions **/
    namespace Tools {
        // __add__ (a.k.a "extend")
        /// @brief Concatenate two vectors, returning a new ivec.
        /// @param Other Right-hand operand to append.
        /// @return New ivec containing all elements of this followed by all elements of Other.
        /// @note Equivalent to Python: a + b. Does not modify either operand.
        ///       Pre-allocates exact capacity needed (no intermediate reallocations).
        template <typename T>
        ivec<T> ivec<T>::operator+(const ivec& Other);

        // __iadd__ -> "extend"

        // __mul__
        /// @brief Repeat vector contents N times, returning a new ivec.
        /// @param Count Number of repetitions. Zero returns empty vector.
        /// @return New ivec containing this->size() * Count elements.
        /// @note Equivalent to Python: a * n. Does not modify this vector.
        ///       Pre-allocates exact capacity needed. O(n * size()) complexity.
        template <typename T>
        ivec<T> ivec<T>::operator*(const idx Count) ;

        // __imul__ -> no

        // __eq__
        /// @brief Element-wise equality comparison.
        /// @param Other Vector to compare against.
        /// @return true if both vectors have same size AND all corresponding elements are equal.
        /// @note Equivalent to Python: a == b. Short-circuits on first mismatch.
        ///       Uses operator== on element type T.
        template <typename T>
        bool ivec<T>::operator==(const ivec& Other) const;

        // __ne__   -> no.
        // __contains__ -> (already)
        // __len__  -> no.
        // __lt__   -> no.
        // __le__   -> no.
        // __gt__   -> no.
        // __ge__   -> no.

        // Intentionally omitted operators:
        // - operator!= : Can be synthesized from == by compiler (C++20+)
        // - operator<, <=, >, >= : Lexicographic ordering not implemented.
        //   Use std::lexicographical_compare(begin(), end(), ...) explicitly if needed.
        // - operator+=, *= : In-place mutation omitted to preserve value semantics.
        //   Use extend() for concatenation, manual loop for repetition.
        // - operator[] : Defined in Access.Getset.hpp
        // - contains() : Defined in Items.Finders.hpp
    }
    ```

### Items

- IVec/Items.Orders.hpp
    > ### Brief
    > > Sorting, shuffling, and reversing operations for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides both returning (copy-based) and in-place (-Inl) variants:
    > > - `sort()` / `sortInl()`    : Ascending order via `std::sort`
    > > - `rsort()` / `rsortInl()`  : Descending order via `std::sort` + `std::greater`
    > > - `shuffle()` / `shuffleInl()` : Random permutation via `std::shuffle`
    > > - `reverse()` / `reverseInl()` : Element reversal via `std::reverse`
    >
    > ### Note
    > > Returning variants create a deep copy first, then modify the copy.
    > > Original vector is never modified by non-Inl methods.
    > > All operations require `T` to satisfy the relevant STL concept
    > > (`LessThanComparable` for sort, Swappable for `shuffle`/`reverse`).
    ```cpp
    /** Orders return **/
    namespace Tools {
        /// @brief Return a new ivec with elements randomly shuffled.
        /// @return Deep copy of this vector with elements in random order.
        /// @note Uses std::mt19937_64 seeded from std::random_device.
        ///       Original vector is unchanged. O(n) complexity.
        template <typename T>
        [[nodiscard]] ivec<T> ivec<T>::shuffle();

        /// @brief Return a new ivec with elements sorted in ascending order.
        /// @return Deep copy of this vector sorted via operator<.
        /// @note Original vector is unchanged. O(n log n) average complexity.
        ///       Requires T to be LessThanComparable.
        template <typename T>
        [[nodiscard]] ivec<T> ivec<T>::Sort();

        /// @brief Return a new ivec with elements sorted in descending order.
        /// @return Deep copy of this vector sorted via std::greater<T>.
        /// @note Original vector is unchanged. O(n log n) average complexity.
        ///       Requires T to be comparable via std::greater.
        template <typename T>
        [[nodiscard]] ivec<T> ivec<T>::rSort();

        /** Reversing **/
        /// @brief Return a new ivec with elements in reversed order.
        /// @return Deep copy of this vector with elements reversed.
        /// @note Original vector is unchanged. O(n) complexity.
        template <typename T>
        [[nodiscard]] ivec<T> ivec<T>::Reverse();
    }

    /** Orders do inline **/
    namespace Tools {
        /// @brief Shuffle elements in-place using random permutation.
        /// @note Uses thread-local std::mt19937_64 seeded from std::random_device.
        ///       O(n) complexity. Requires T to be Swappable.
        template <typename T>
        void ivec<T>::ShuffleInl();

        /// @brief Sort elements in-place in ascending order.
        /// @note Uses std::sort (introsort). O(n log n) average complexity.
        ///       Requires T to be LessThanComparable.
        template <typename T>
        void ivec<T>::SortInl();

        /// @brief Sort elements in-place in descending order.
        /// @note Uses std::sort with std::greater<T>. O(n log n) average complexity.
        ///       Requires T to be comparable via std::greater.
        template <typename T>
        void ivec<T>::rSortInl();

        /// @brief Reverse element order in-place.
        /// @note Uses std::reverse. O(n) complexity. Requires T to be Swappable.
        template <typename T>
        void ivec<T>::ReverseInl();
    }
    ```

- IVec/Items.Query.hpp
    > ### Brief
    > > Deduplication and bulk reassignment operations for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides two categories of operations:
    > > - `uniques()` / `uniquesInl()`: Remove duplicate elements, keeping at most N occurrences
    > > - `reassign()` / `reassignInl()`: Overwrite/extend elements from a span at a given position
    >
    > ### Note
    > > `uniques()` preserves the relative order of first occurrences.
    > > `reassignInl()` performs in-place overwrite when possible, avoiding reallocation.
    ```cpp
    /** Remove duplicated elements by n times inline/return new **/
    namespace Tools {
        /// @brief Return a new ivec with duplicates removed, keeping at most Max occurrences.
        /// @param Max Maximum number of times each value may appear. Must be > 0.
        /// @return New ivec with duplicates filtered. Original is unchanged.
        /// @note Preserves relative order of first occurrences. O(n) time + O(n) space for hash map.
        ///       Returns empty vector if Max <= 0 or source is empty.
        template <typename T>
        ivec<T> ivec<T>::Uniques(const idx Max);

        /// @brief Remove duplicates in-place, keeping at most Max occurrences.
        /// @param Max Maximum number of times each value may appear. Must be > 0.
        /// @post size() reduced to number of unique elements kept. Capacity unchanged.
        /// @note Preserves relative order. O(n) time + O(n) space for hash map.
        ///       No-op if Max <= 0 or size() <= 1.
        template <typename T>
        void ivec<T>::UniquesInl(const idx Max);
    }

    /** Reassign based on specified iterable **/
    namespace Tools {
        /// @brief Overwrite elements starting at Start with data from span, returning new ivec.
        /// @param Data Span of elements to write.
        /// @param Start Position to begin overwriting [0, size()]. Clamped to size().
        /// @return New ivec with the result. Original is unchanged.
        /// @note If Start + Data.size() > size(), the result is extended to fit.
        ///       Delegates to reassignInl() on a copy.
        template <typename T>
        ivec<T> ivec<T>::Reassign(std::span<const T> Data, const idx Start);

        /// @brief Overwrite elements in-place starting at Start with data from span.
        /// @param Data Span of elements to write.
        /// @param Start Position to begin overwriting [0, size()]. Clamped to size().
        /// @post Elements at [Start, min(Start+Data.size(), old_size)) are overwritten.
        ///       If Start + Data.size() > old_size, vector is extended via reserve() + placement new.
        /// @note Pure overwrite path (no allocation) when Start + Data.size() <= size().
        ///       Extension path uses single reserve() call for exact capacity.
        template <typename T>
        void ivec<T>::ReassignInl(std::span<const T> Data, idx Start);
    }
    ```

- IVec/Items.Find.hpp
    > ### Brief
    > > Linear search utilities for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides O(n) element lookup operations including existence check,
    > > index finding, frequency counting, and multi-index collection.
    > > All methods use linear scan and are noexcept where applicable.
    >
    > ### Note
    > > For sorted data, consider using `std::lower_bound`/`upper_bound` via
    > > `begin()`/`end()` iterators for O(log n) performance instead.
    ```cpp
    /* Non Const & Const Finders */
    namespace Tools {
        /// @brief Check whether an element exists in the vector.
        /// @param Item Element to search for (compared via operator==).
        /// @return true if at least one matching element is found, false otherwise.
        /// @note O(n) linear scan. Const-correct: callable on both mutable and const ivec.
        template <typename T>
        bool ivec<T>::Contains(const T& Item) noexcept;

        /// @brief Find the index of the first occurrence of an element.
        /// @param Item Element to search for (compared via operator==).
        /// @return Index of first match, or size() if not found.
        /// @note O(n) linear scan. Returns size() (not -1) as sentinel value
        ///       since idx is unsigned. Always check result < size() before use.
        template <typename T>
        idx ivec<T>::Find(const T& Item) noexcept;

        /// @brief Count how many times an element appears in the vector.
        /// @param Item Element to count (compared via operator==).
        /// @return Number of occurrences (0 if not found).
        /// @note O(n) linear scan. Equivalent to std::count(begin(), end(), Item).
        template <typename T>
        idx ivec<T>::FindFreq(const T& Item) noexcept;

        /// @brief *Find all* occurrences of an element, returning count and indices.
        /// @param Item Element to search for (compared via operator==).
        /// @return pair<count, vec<idx>> where count is number of matches and
        ///         vec contains all matching indices in ascending order.
        /// @note O(n) linear scan + dynamic allocation for result vector.
        ///       If no matches found, returns {0, empty_vec}.
        template <typename T>
        pair<idx, vec<T>> ivec<T>::FindAll(const T& Item) noexcept;
    }
    ```

- IVec/Items.Slice.hpp
    > ### Brief
    > Sub-range extraction operations for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides Python-style slicing with negative index support:
    > > - `slice(From, To)` / `sliceInl(From, To)`: Extract range [`From`, `To`] inclusive
    > > - `slice(n)` / sliceInl(n): Extract first n elements (n >= 0) or last |n| elements (n < 0)
    >
    > ### Note
    > > Negative indices are resolved relative to `size()`: -1 == last element.
    > > Out-of-range indices are clamped to valid bounds rather than throwing.
    > > All returning variants create deep copies; original is never modified.
    ```cpp
    /** Slicers return new **/
    namespace Tools {
        /// @brief Extract a sub-range [From, To] inclusive, with negative index support.
        /// @param From Start index (inclusive). Negative values count from end (-1 == last).
        /// @param To End index (inclusive). Negative values count from end (-1 == last).
        /// @return New ivec containing elements in [From, To]. Empty if range is invalid.
        /// @note Indices are clamped to [0, size()-1]. Returns empty vector if From > To after normalization.
        ///       Original vector is unchanged. O(k) where k = To - From + 1.
        template <typename T>
        ivec<T> ivec<T>::Slice(i64 From, i64 To);

        /// @brief Extract first n or last |n| elements.
        /// @param To If >= 0: extract elements [0, n]. If < 0: extract last |n| elements.
        /// @return New ivec containing the extracted elements. Empty if n == 0 or vector is empty.
        /// @note Delegates to slice(From, To). Original vector is unchanged.
        template <typename T>
        ivec<T> ivec<T>::Slice(const i64 To);
    }

    /** Slicers do inline **/
    namespace Tools {
        /// @brief Replace contents with sub-range [From, To] inclusive.
        /// @param From Start index (inclusive). Negative values count from end.
        /// @param To End index (inclusive). Negative values count from end.
        /// @post Vector contains only elements from the specified range.
        /// @note Equivalent to *this = slice(From, To). May reallocate.
        template <typename T>
        void ivec<T>::SliceInl(const i64 From, const i64 To);

        /// @brief Replace contents with first n or last |n| elements.
        /// @param To If >= 0: keep elements [0, n]. If < 0: keep last |n| elements.
        /// @post Vector contains only the extracted elements.
        /// @note Equivalent to *this = slice(n). May reallocate.
        template <typename T>
        void ivec<T>::SliceInl(const i64 To);
    }
    ```

- IVec/Items.Erase.Idx.hpp
    > ### Brief
    > > Index-based element removal for `Tools::ivec<T>`. Modern index-based erase are using `Erase` (with '`E`')
    >
    > ### Details
    > > Provides `erase()` and `eraseInl()` overloads that accept index positions.
    > > These delegate to the pointer-based implementations in Items.Eraser.ptr.hpp.
    >
    > ### Slice and Erase
    > > `slice()` vs `erase()` — Key Difference
    > > Both operations work on sub-ranges, but with **opposite** semantics:
    > > - `slice(From, To)`: **KEEPS elements** in [`From`, `To`], discards everything else.
    > >   Think of it as "extract this window."
    > > - `erase(From, To)`: **REMOVES elements** in [`From`, `To`), keeps everything else.
    > >   Think of it as "cut out this section."
    > >
    > > ```cpp
    > > ivec<int> a{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    >>
    > > // Keep only a[1..4], delete everything else
    > > auto s = a.slice(1, 4);    // -> [2, 3, 4, 5]
    > >
    > > // Delete a[1..5), keep everything else
    > > auto e = a.erase(1, 5);    // -> [1, 6, 7, 8, 9, 10]
    > > ```
    >
    > ### Note
    > > Index-based erase uses exclusive end bound [`From`, `To`) matching STL convention,
    > > while slice uses inclusive bounds [`From`, `To`]. Be mindful of this difference.
    ```cpp
    /** Erase return new **/
    namespace Tools {
        /** 1 element return **/
        /// @brief Return new ivec with single element at Pos removed.
        /// @param Pos Index of element to remove [0, size()).
        /// @return New ivec with size() - 1 elements. Original is unchanged.
        /// @note Delegates to erase(T*). O(n) due to element shifting.
        template <typename T>
        ivec<T> ivec<T>::Erase(idx Pos);

        /** N element return **/
        /// @brief Return new ivec with elements in [From, To) removed.
        /// @param From Start index (inclusive) [0, size()].
        /// @param To End index (exclusive) [From, size()].
        /// @return New ivec without the specified range. Original is unchanged.
        /// @note Uses exclusive end bound [From, To) matching STL erase convention.
        ///       This differs from slice() which uses inclusive [From, To].
        ///       Delegates to erase(T*, T*). O(n) due to element shifting.
        template <typename T>
        ivec<T> ivec<T>::Erase(idx From, idx To);
    }

    /** Erase do inline **/
    namespace Tools {
        /** 1 element inline **/
        /// @brief Remove single element at Pos in-place.
        /// @param Pos Index of element to remove [0, size()).
        /// @post size() decreased by 1. Elements after Pos shifted left.
        /// @note Delegates to eraseInl(T*). O(n) due to element shifting.
        template <typename T>
        void ivec<T>::EraseInl(idx Pos);

        /** N element inline **/
        /// @brief Remove elements in [From, To) in-place.
        /// @param From Start index (inclusive) [0, size()].
        /// @param To End index (exclusive) [From, size()].
        /// @post size() decreased by (To - From). Remaining elements compacted.
        /// @note Uses exclusive end bound [From, To). No-op if From >= To.
        ///       Delegates to eraseInl(T*, T*). O(n) due to element shifting.
        template <typename T>
        void ivec<T>::EraseInl(idx From, idx To);
    }
    ```

- IVec/Items.Erase.Ptr.hpp
    > ### Brief
    > Pointer-based element removal for `Tools::ivec<T>`. Legacy pointer-based erase are using `erase` (with '`e`')
    >
    > ### Details
    > > Provides `erase()` and `eraseInl()` overloads that accept raw pointers.
    > > These are the foundational implementations that index-based erasers
    > > delegate to. Pointers must refer to elements within this vector's
    > > allocated buffer `[m_Data, m_Data + m_Size)`.
    >
    > ### Note
    > > Pointer validity is checked at runtime. Out-of-range pointers are either
    > > rejected (throw) or silently ignored depending on the overload.
    > > All operations use move-then-destroy pattern for safe element compaction.
    ```cpp
    /** Erase return new **/
    namespace Tools {
        /// @brief Return new ivec with single element at pointer position removed.
        /// @param pos Pointer to element to remove. Must be within [data(), data()+size()).
        /// @return New ivec with size()-1 elements. Original is unchanged.
        /// @throws std::out_of_range if pos is null or outside valid range.
        /// @note Delegates to eraseInl(idx) on a copy. O(n) due to element shifting.
        template <typename T>
        ivec<T> ivec<T>::erase(T* pos);

        /// @brief Return new ivec with elements in [begin, end) removed.
        /// @param begin Pointer to first element to remove (inclusive).
        /// @param end Pointer past last element to remove (exclusive).
        /// @return New ivec without the specified range. Original is unchanged.
        /// @note Out-of-range pointers are clamped to valid bounds. No-op if begin >= end.
        ///       Delegates to eraseInl(T*, T*) on a copy. O(n) due to element shifting.
        template <typename T>
        ivec<T> ivec<T>::erase(T* begin, T* end);
    }

    /** Erase do inline**/
    namespace Tools {
        /// @brief Remove single element at pointer position in-place.
        /// @param pos Pointer to element to remove. Must be within [data(), data()+size()).
        /// @post size() decreased by 1. Elements after pos shifted left.
        /// @note Silently returns if pos is null or out of range (no exception).
        ///       Uses move-then-destroy pattern for safe compaction. O(n).
        template <typename T>
        void ivec<T>::eraseInl(T* pos);

        /// @brief Remove elements in [begin, end) in-place.
        /// @param begin Pointer to first element to remove (inclusive).
        /// @param end Pointer past last element to remove (exclusive).
        /// @post size() decreased by number of removed elements. Remaining elements compacted.
        /// @note Out-of-range pointers are clamped to valid bounds. No-op if begin >= end.
        ///       Uses batch destroy + shift pattern for efficiency. O(n).
        template <typename T>
        void ivec<T>::eraseInl(T* begin, T* end);
    }
    ```

### Functional

- IVec/Functional.hpp
    > ### Brief
    > > Python-style functional transformations for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides `map()` and `filter()` operations that return new vectors:
    > > - `map(Fn)`: Transform each element via callable `->` `ivec<U>`
    > > - `filter(Pred)`: Keep elements matching predicate `->` `ivec<T>`
    >
    > ### Note
    > > Both operations are non-mutating. Original vector is never modified.
    > > These are eager operations — results are computed immediately.
    > > For lazy evaluation, consider using `std::views` with `begin()`/`end()`.
    ```cpp
    namespace Tools {
        /// @brief Transform each element via callable, returning a new ivec.
        /// @tparam Fn Callable type accepting const T& and returning any type U.
        /// @param Func Transformation function applied to each element.
        /// @return New ivec<U> where U = decltype(Func(const T&)). Same size as source.
        /// @note Exact pre-allocation via reserve(size()). Zero intermediate reallocations.
        ///       Equivalent to Python: [func(x) for x in self].
        ///       Example: ivec<int>{1,2,3}.map([](int x){ return x * 2.0; })
        ///                -> ivec<double>{2.0, 4.0, 6.0}
        template <typename T>
        template <typename Fn>
        requires requires(Fn&& f, const T& x) { f(x); }
        auto ivec<T>::Map(Fn&& Func) const
        -> ivec<decltype(Func(std::declval<const T&>()))>;

        /// @brief Filter elements matching predicate, returning a new ivec.
        /// @tparam Fn Predicate type accepting const T& and returning bool-like value.
        /// @param Pred Predicate function. Elements where Pred(elem) == true are kept.
        /// @return New ivec<T> containing only matching elements in original order.
        /// @note Two-pass algorithm: first pass counts matches for exact pre-allocation,
        ///       second pass copies matching elements. O(n) time, O(k) space where k = matches.
        ///       Equivalent to Python: [x for x in self if pred(x)].
        ///       Example: ivec<int>{1,2,3,4,5}.filter([](int x){ return x % 2 == 0; })
        ///                -> ivec<int>{2, 4}
        template <typename T>
        template <typename Fn>
        requires std::predicate<Fn, const T&>
        [[nodiscard]] ivec<T> ivec<T>::Filter(Fn&& Pred) const;
    }
    ```

### Converter

- IVec/Converter.hpp
    > ### brief
    > > String formatting and generic container conversion for `Tools::ivec<T>`.
    >
    > ### details
    > > Provides utilities for converting ivec contents to strings and
    > > other container types. Explicit conversion operators (span, vector)
    > > are defined separately in Converter.Opr.hpp.
    >
    > ### note
    > > `toVector()` and `toSpan()` have been removed from this file.
    > > - Use explicit conversion operators instead:
    > > - `static_cast<std::vector<T>>(v)` or `vec<T>(v)`
    > > - `static_cast<std::span<T>>(v)` or `span<T>(v)`
    ```cpp
    namespace Tools {
        /** Convert (almost) everything to string **/
        /// @brief Convert entire vector to a bracketed string representation.
        /// @return String in format "[elem0, elem1, ..., elemN]" using std::format.
        /// @note Uses std::format("{}") for each element. T must be formattable.
        ///       For custom formatting with spec forwarding, use fmt::format or std::format
        ///       directly with Format.fmt.hpp / Format.std.hpp included.
        template <typename T>
        str ivec<T>::fstr() const;

        /** join with delimiter **/
        /// @brief Join all elements into a single string with a delimiter.
        /// @param Delim Separator string placed between elements. Default: ", ".
        /// @return Concatenated string of all elements separated by Delim.
        ///         Empty string if vector is empty.
        /// @note Uses std::format("{}") for each element. T must be formattable.
        ///       Example: ivec<int>{1,2,3}.join(" | ") → "1 | 2 | 3"
        template <typename T>
        str ivec<T>::join(strview Delim) const;

        /** To C Array (wrapped with span) **/
        /// @brief Copy elements into a pre-allocated C-style array via span.
        /// @param Destination Span wrapping the target buffer. Elements are assigned (not constructed).
        /// @note Copies min(size(), Destination.size()) elements. Safe for partial copies.
        ///       No-op if destination is empty or source is empty.
        ///       Destination elements must already be constructed (uses operator=, not placement new).
        template <typename T>
        void ivec<T>::toCArr(span<T> Destination) const;

        /** Generic conversion **/
        /// @brief Generic conversion to any container constructible from iterator pair.
        /// @tparam Container Template template parameter accepting any standard container.
        /// @return Container<T> constructed from begin()/end() iterators.
        /// @note Replaces type-specific converters (toVector, toArray, etc.).
        ///       Example: v.to<std::vector>() -> std::vector<T>
        ///                v.to<std::list>()   -> std::list<T>
        ///                v.to<std::deque>()  -> std::deque<T>
        template <typename T>
        template <template<typename...> class Container>
        auto ivec<T>::to() const;
    }
    ```

- IVec/Converter.Opr.hpp
    > ### brief
    > > Explicit type conversion operators for `Tools::ivec<T>`.
    >
    > ### details
    > > Provides explicit conversions to std::span and std::vector.
    >          All operators are marked explicit to prevent accidental implicit
    >          copies or dangling views.
    >
    > ### note
    > > span conversions are O(1) — they create a non-owning view.
    > > vector conversions are O(n) — they perform a deep copy.
    > > Since all operators are explicit, you must write:
    > > ```cpp
    > >  auto s = std::span<int>(my_ivec);      // OK
    > >  auto v = std::vector<int>(my_ivec);    // OK (deep copy)
    > >  std::span<int> s = my_ivec;            // Won't compile (explicit)
    > > ```
    ```cpp
    /** Auto converter to std::span (O(1), Non-Owning View) **/
    namespace Tools {
        /// @brief Explicit conversion to mutable std::span.
        /// @return span<T> viewing this vector's data. Lifetime tied to this ivec.
        /// @note O(1). No allocation. Invalidated by any operation that reallocates.
        template <typename T>
        ivec<T>::operator span<T>() const noexcept;

        /// @brief Explicit conversion to const std::span.
        /// @return span<const T> viewing this vector's data. Lifetime tied to this ivec.
        /// @note O(1). No allocation. Preferred over mutable span when modification is not needed.
        template <typename T>
        ivec<T>::operator span<const T>() const noexcept;
    }

    /** Auto converter to std::vector (O(n), Deep Copy) **/
    namespace Tools {
        /// @brief Explicit conversion to std::vector via deep copy.
        /// @return New std::vector<T> containing copies of all elements.
        /// @note O(n) time and space. Independent lifetime from this ivec.
        ///       Equivalent to toVector(). Use when ownership transfer is needed.
        template <typename T>
        ivec<T>::operator vec<T>() const noexcept;

        /// @brief Explicit conversion to const std::vector via deep copy.
        /// @return New std::vector<const T> containing copies of all elements.
        /// @note O(n) time and space. Rarely needed — prefer vec<T> in most cases.
        template <typename T>
        ivec<T>::operator vec<const T>() const noexcept;
    }
    ```

### Legacy choise of diction

- IVec/Legacy.hpp
    > ### Brief
    > > STL-compatible and legacy API aliases for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides familiar function names for users migrating from std::vector
    > > or other containers. All functions delegate to modern ivec equivalents:
    > > - `push_back()`   equal to `append()`
    > > - `push_front()`  equal to `appendFirst()`
    > > - `insert(v)`     equal to `extend()`
    > > - `insert(item, at)` equal to `appendAt()`
    > > - `insert(ptr, ptr)` equal to manual extend with pointer range
    >
    > ### Note
    > > These are thin wrappers with zero overhead. Prefer the modern API
    > > (append, extend, appendAt) in new code for clarity and consistency.
    ```cpp
    namespace Tools {
        /** Append single element (legacy) **/
        /// @brief "Append" single element to end (STL-compatible alias).
        /// @param Item Element to copy-append.
        /// @note Delegates to append(const T&). Equivalent to std::vector::push_back.
        template <typename T>
        void ivec<T>::push_back(const T& Item);

        /** Append from first index (Legacy-ish) **/
        /// @brief "Insert" single element at beginning (legacy alias).
        /// @param Item Element to copy-insert at front.
        /// @note Delegates to appendFirst(). O(n) due to element shifting.
        ///       Equivalent to std::deque::push_front.
        template <typename T>
        void ivec<T>::push_front(const T& Item);

        /** Move version (optional, for performance) **/
        /// @brief "Extend" vector by moving all elements from another ivec.
        /// @param v Source ivec whose elements are moved into this vector.
        /// @post Source is left in valid-but-unspecified state (typically empty).
        /// @note Delegates to extend() via implicit span conversion.
        ///       More efficient than copy-insert for temporary sources.
        template <typename T>
        void ivec<T>::insert(ivec&& v);

        /// @brief "Extend" vector by copying elements from a span.
        /// @param v Span of elements to copy-append.
        /// @note Delegates to extend(span<const T>). Accepts any contiguous range
        ///       that converts to span (std::vector, std::array, C arrays, etc.).
        /* Safety note
        *
        * v.insert(std::span{arr});        // Won't bind to non-const lvalue ref
        * void insert(span<const T> v);    // Accepts both lvalues and rvalues
        */
        template <typename T>
        void ivec<T>::insert(span<const T>& v);

        /** Append at Nth index (legacy) **/
        /// @brief "Insert" single element at specified position (legacy alias).
        /// @param Item Element to copy-insert.
        /// @param At Target index [0, size()]. Clamped to size() if out of range.
        /// @note Delegates to appendAt(). O(n) due to element shifting.
        ///       Equivalent to std::vector::insert(iterator, value).
        template <typename T>
        void ivec<T>::insert(const T& Item, const idx At);

        /// @brief "Extend" vector by copying elements from raw pointer range [From, To).
        /// @param From Pointer to first element (inclusive). Null-safe.
        /// @param To Pointer past last element (exclusive). Null-safe.
        /// @note Safe: handles nullptr, reversed range (From >= To), and empty range.
        ///       Pre-allocates exact capacity needed (single reallocation).
        ///       O(n) where n = To - From.
        template <typename T>
        void ivec<T>::insert(const T* From, const T* To);
    }
    ```

### Formater for std & fmt (**Do not** include on Master.hpp)

Warning: Do NOT uncomment these in this master header.
Including custom formatters alongside `<fmt/ranges.h>` causes SFINAE ambiguity.
Users must opt-in by including these headers directly in their .cpp files.
Or pick only ivec or others.

- IVec/Format.std.hpp
    > ### Brief
    > > Optional custom `std::formatter` for `Tools::ivec<T>`.
    >
    > ### Details
    > > Provides format spec forwarding (`{:.2f}`, `{:x}`, etc.) for `std::format`.
    > > Include this file only when you need spec forwarding beyond what
    > > `std::ranges` provides by default.
    ```cpp
    #if __has_include(<format>) && defined(__cpp_lib_format)
    #include <format>
    template <typename T>
    struct std::formatter<Tools::ivec<T>, char> : std::formatter<T> {...};
    #endif
    ```

- IVec/Format.fmt.hpp
    > ### Brief
    > > Optional custom `fmt::formatter` for `Tools::ivec<T>`.
    >
    > ### Details
    > > **Do NOT** include this file together with `<fmt/ranges.h>` in the same
    > translation unit. They conflict due to SFINAE ambiguity.
    >
    > Usage:
    >   - For basic `{}` formatting: just use `<fmt/ranges.h>` (no custom formatter needed)
    >   - For format spec forwarding (`{:.2f}`, `{:x}`, etc.): include THIS file instead
    >
    > ### Note
    > > This formatter uses `.begin()`/`.end()` iterators, maintaining full flexibility
    > > with any iterator-based algorithm or range adapter.
    ```cpp
    #if __has_include(<fmt/format.h>)
    #include <fmt/format.h>
    template <typename T>
    struct fmt::formatter<Tools::ivec<T>, char> : fmt::formatter<T> {...};
    #endif
    ```

### Debug (**Do not** include on Master.hpp)

- IVec/Base.RangesQualification.hpp
    > ### Brief
    > > Compile-time C++20/26 ranges concept verification for `Tools::ivec<T>`.
    >
    > ### Details
    > > This header is an OPT-IN debugging aid. It is intentionally NOT included
    > > in Base.Master.hpp to avoid slowing down normal compilation or causing
    > > false-positive failures during development.
    >
    > > Include this file in your test TU or main.cpp to verify that ivec
    > > correctly satisfies the required range concepts after modifying
    > > iterator/accessor implementations.
    >
    > ### Warning
    > > Do NOT include this in production headers or Base.Master.hpp.
    > > The negative static_assert for rvalue borrowed_range is expected
    > > and intentional — it confirms correct ownership semantics.
    ```cpp
    #if __has_include(<ranges>)
    #include <ranges>

    // Compile-time verification (uncomment to enforce):
    namespace Tools {
        template <typename T>
        concept IsIVecRange = std::ranges::range<ivec<T>>;
        static_assert(IsIVecRange<i32>, "ivec must satisfy std::ranges::range");

        template <typename T>
        concept IsIVecBorrowedRange_Val = std::ranges::borrowed_range<ivec<T>>;
        static_assert(IsIVecBorrowedRange_Val<i32>, "ivec (&) must satisfy std::ranges::borrowed_range");

        template <typename T>
        concept IsIVecBorrowedRange_Ref = std::ranges::borrowed_range<ivec<T>&>;
        static_assert(IsIVecBorrowedRange_Ref<i32>, "ivec (&) must satisfy std::ranges::borrowed_range");
    }

    #endif
    ```

<!-- ### Usage Example
```

``` -->


# `VII`. Lib `Tools.Linking`

This is a windows-specific tool to call a .dll during runtime.

- ### API Codes:
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

        // Slightly safer CallFunctionC (deprecated)
        int CallFunctionC_s(                /* Function IV B */
            const str& File,                /* File to find */
            const str& EntryPoint,          /* Finnction to call (disable magle!) */
            const vec<str>& Args,           /* C Argv in vector */
            int TerminalSize = 50,          /* Optional Terminal size */
            bool debug = true               /* Optional Debugging log */
        );

        #if defined(ITANIUM_ENABLED)
        template <typename T>
        str RemoveSignature(
            const str& Func,                /* Mangled function name with itanium format */
            bool WithArgs = true            /* Include args or not*/
        );
        #endif
    }
    ```


### Functions:
### 1. `GetFile`
- ### API Code
    ```cpp
    str GetFile(
        const str& File
    );
    ```
- ### Description
    Resolves and returns the DLL file path based on the given base name.

- ### Parameters
    File — Base name of the .dll file (e.g. "Test.dll")

- ### Returns
    Resolved file path as str

- ### Notes
    - Intended for internal path normalization
    - Can be extended to support custom search directories

- ### Example
    ```cpp
    str File = GetFile("DynamicLib");
    fmt::println("file {}", File);  // DynamicLib.dll
    ```

### 2. `LoadSymbol`
- ### API Code
    ```cpp
    T LoadSymbol(
        const HMODULE lib,
        const str& EntryPoint
    );
    ```

- ### Description
    Loads a function symbol (entry point) from a previously loaded DLL module.

- ### Parameters
    lib — Handle returned by LoadLibrary
    EntryPoint — Exported function name (must match exactly)

- ### Returns
    Function pointer of type T

- Warning ⚠️
    - Incorrect function signature casting will cause undefined behavior or crashes.
    - Used internally only

### 3. `CallFunction` (Generic Template)
- ### API Code
    ```cpp
    template<typename Return, typename... Args>
    Return CallFunction(
        str File,
        str EntryPoint,
        Args... args
    );
    ```
- ### Description
    Fully generic function caller for DLL exports with arbitrary arguments and return type.

- ### Parameters
    - `File` — Target DLL file
    - `EntryPoint` — Function name (mangling must be disabled with extern "C")
    - `Args...` — Arguments forwarded to the function

- ### Returns
    Function return value of type Return

- ### Example
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
- ### API Code
    ```cpp
    void CallFunctionA(
        str& File,
        const str& Msg,
        const str& EntryPoint,
        const int TerminalSize = 50,
        const bool debug = true
    );
    ```
- ### Description
    Calls a DLL function that accepts a narrow string (std::string / char*) message.

- ### Parameters
    - `File` — Target DLL file
    - `Msg` — Message forwarded to DLL
    - `EntryPoint` — Exported function name
    `TerminalSize` — Optional formatting/log width
    `debug` — Enables debug output

Recommended DLL Signature generation
    ```cpp
    extern "C" void MyFunction(const char* msg);
    ```

### 5. `CallFunctionAW` (Wide String)
- ### API Code
    ```cpp
    void CallFunctionAW(
        str& File,
        const wstr& MsgW,
        const str& EntryPoint,
        const int TerminalSize = 50,
        const bool debug = true
    );
    ```
- ### Description
    Wide-character version of CallFunctionA, designed for Unicode-safe messaging.

- Recommended DLL Signature
    ```
    extern "C" void MyFunction(const wchar_t* msg);
    ```

- ### Notes
    - Useful for UTF-16 Windows APIs
    - Avoids encoding mismatch issues

### 6. `CallFunctionB` (No Arguments)
- ### API Code:
    ```cpp
    void CallFunctionB(
        str& File,
        const str& EntryPoint,
        const int TerminalSize = 50,
        const bool debug = true
    );
    ```
- ### Description
    - Calls a DLL function that takes no parameters.

- ### Example DLL Export
    ```cpp
    extern "C" void Init();
    ```

- ### Example Usage
    ```cpp
    Tools::Linking::CallFunctionB(
        "Plugin.dll",
        "Init"
    );
    ```

### 7. CallFunctionC (C-style argv)
- ### API Code
    ```cpp
    int CallFunctionC(
        str& File,
        const str& EntryPoint,
        const vec<str> Args,
        const int TerminalSize = 50,
        const bool debug = true
    );
    ```
- ### Description
    - Simulates int main(int argc, const char** argv) style function calls inside a DLL.

- ### Parameters
    - Args — Safe vector representation of argv (argc inferred)

- Recommended DLL Signature
    ```cpp
    extern "C" i32 Entry(const i32 argc, const char** argv);
    ```

- Why vector instead of raw argv?
    - Because raw pointer mismatches = instant crash.
    - Vector is safer and controlled.

### 8. CallFunctionC_s (Safer Variant)
- ### API Code
    ```cpp
    i32 CallFunctionC_s(
        str& File,
        const str& EntryPoint,
        const vec<str>& Args,
        const i32 TerminalSize = 50,
        bool debug = true
    );
    ```

- ### Description
    - This is basically `CallFunctionC` but with slightly safe hacks

### 9. RemoveSignature (Optional - Itanium ABI)
- ### API Code
    ```cpp
    template <typename T>
    str RemoveSignature(
        const str& Func,
        bool WithArgs = true
    );
    ```

- ### Availability
    **_Only_** enabled if `__has_include(<cxxabi.h>)`

- ### Description
    - Removes C++ mangled signatures (Itanium ABI) to produce readable function names.

- ### Use Case
    - Debugging symbol names
    - Reflection utilities
    - Cross-platform demangling (Clang/GCC)

---

# `VIII`. Lib `Tools.OS`

- ### Description:
    - This is a library for essential OS API functions, but make it easier.

- ### API Codes:
    ```cpp
    // Terminal utils
    namespace Tools::OS::Terminal {
        i32 TerminalSize(cstr DIR = "X", const i32 offset = 0);
        i32 TerminalSizeWidth(const i32 offset = 0){return TerminalSize("X", offset);}
        i32 TerminalSizeHeight(const i32 offset = 0){return TerminalSize("Y", offset);}
        umap<cstr, i32> TerminalSizeMap(){
            return umap<cstr, i32>{{"X", TerminalSizeWidth(0)},{"Y", TerminalSizeHeight(0)}};
        }
        void Clear();
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
        T ReadFromProcess(idx PID, u32ptr Address);

        template <typename T>
        bool WriteProcess(idx PID, u32ptr Address, T data);

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

    ### 1. Terminal
    - The function `TerminalSize` returns current terminal size (duh), you have 2 choises, `X` (row) axis or `Y` (collumn) axis. You pass it on 1st parameter.
    - There are 3 other function that wraps 1st function. `-Width`, `-Height`, and `-Map`. 2nd and 3rd are obvious, 4th return an `std::unordered_map` of `X` and `Y` axis.
    - `Clear()` are for clear the entire console screen (duh)

    ### 2. File
    - You can ignore the `cstr_safe` function, it's just used internally for converting stuffs. All function are using `std::string_view` as parameter, and maybe it'll be changed to `std::string` or maybe `const char*`

    ### 3. Sleep
    - This is sleep function provides by your OS, sometimes `std::this_thread::sleep_for(std::chrono::seconds(n));` can sometimes be inaccurate if you pass _too complex_ number.

    ### 4. Process
    - Yes, this is some sort of a process hacking tools, you can read, write (yes, an actual writing on specified address like how game h*kcing). Please use it fairly and wisely, because wrong movement can crash your project or even you OS. Also, you can check if _**a** process_ or _**this** process_ is running with admin privilege.

---

# `IX`. Lib `Tools.Style`

- ### Description:
    - Library to make you borix text into something from like Ms. Word or something, like colors, italic, bold, etc etc. Use only `Bold`, `Italic`, `Under`, `Strike`, `ColorFG/BG` only.

- ### API Codes
    ```cpp
    // Base struct coloring
    namespace Tools::Style {
        struct Color {
            u8 R, G, B;
            Color(const u8 R = 0, const u8 G = 0, const u8 B = 0);
            Color(const u32 Hex);
            Color(const str& Hex = "0xFFFFFF");
        };
        Color RandomColor(u8 Min, u8 Max);
        void RandomColor(u8 Min, u8 Max, Color& Coloring);
    }

    /* Return new */
    namespace Tools::Style {
        str Reverse(const strview& Text);
        str UpperA(const strview& Text);
        str LowerA(const strview& Text);
        str Sort(const strview& Text);
        vec<str> Debug(const strview& Text);
        str Bold(const strview& Text);
        str Italic(const strview& Text);
        str Underline(const strview& Text);
        str Strike(const strview& Text);
        str ColorFG(const strview& Text, const Color& FG);
        str ColorBG(const strview& Text, const Color& BG);
    }

    /* Modify in-place */
    namespace Tools::Style {
        void Reverse(str* Tx);
        void Upper(str* Text);
        void Lower(str* Text);
        void Sort(str* Text);
        void Debug(const strview& Text, vec<char>& Destination);
        void Bold(str* Text);
        void Italic(str* Text);
        void Underline(str* Text);
        void Strike(str* Text);
        void ColorFG(str* Text, const Color& FG);
        void ColorBG(str* Text, const Color& BG);
    }

    ```

---

# `X`. Lib `Tools.StyleW`

- ### Description:
    - Same as `Tools.Style`, but with `std::wstring` (`wstr`) support, slightly different choise of diction, but still good, and maybe kinda simpler. Just add 'W' at the end of function name.

- API Codes:
    ```cpp

    /* Make new retrun (const std::wstring_view& Text) */
    namespace Tools::Style {
        wstr ReverseW(const wstrview& Text);
        wstr UpperW(const wstrview& Text);
        wstr LowerW(const wstrview& Text);
        wstr SortW(const wstrview& Text);

        vec<wchar> DebugW(const wstrview& Text);

        wstr BoldW(const wstrview& Text);
        wstr ItalicW(const wstrview& Text);
        wstr UnderlineW(const wstrview& Text);
        wstr StrikeW(const wstrview& Text);

        wstr ColorFGW(const wstrview& Text, const Color& FG);
        wstr ColorBGW(const wstrview& Text, const Color& BG);

        wstr ResetW(const wstrview& Text);
    }

    /* Modifly in place, always use pointer (*std::wstring Text) */
    namespace Tools::Style {
        void ReverseW(wstr* Text);
        void UpperW(wstr* Text);
        void LowerW(wstr* Text);
        void SortW(wstr* Text);

        void DebugW(const wstrview& Text, vec<wchar>& Destination);

        void BoldW(wstr* Text);
        void ItalicW(wstr* Text);
        void UnderlineW(wstr* Text);
        void StrikeW(wstr* Text);

        void ColorFGW(wstr* Text, const Color& FG);
        void ColorBGW(wstr* Text, const Color& BG);

        void ResetW(wstr* Text);
    }
    ```

---

# `XI`. Lib `Tools.PrintHeader`

- ### Description:
    This function is to make something like this:
    ```
    ----------------[ Hello! ]----------------
    ```

- ### API Code:
    ```cpp
    namespace Tools::Styling {
        str PrintMid (
            const str& text = "Hello",
            char borderChar = '=',
            int offset = 0,
            bool printing = false
        );
    }
    ```

- ### Examples:
    - `Tools::Styling::PrintMid("[ My Cool C++ App! ]", '~')`

    - return:
        ```
        ~~~~~~~~~~~~~~~~[ My Cool C++ App! ]~~~~~~~~~~~~~~~~
        ```

    - `Tools::Styling::PrintMid(" My magcial C++ App! ", '/')`

    - return:
        ```
        //////////////// My magcial C++ App! ////////////////
        ```

---

# `XII`. Lib `Tools.Random`
 * ### Code suffixes you'll find on Random functions
    | **Suffix**|      **Meaning**      | **Types** |        **Meaning**       |
    |-----------|-----------------------|-----------|--------------------------|
    | `I`       | Integer (`i32`)       |  `VI`     |  Vector `i32`            |
    | `L`       | Long (`i64`)          |  `VL`     |  Vector `i64`            |
    | `F`       | Float (`f32`)         |  `VF`     |  Vector `f32`            |
    | `D`       | Double (`f64`)        |  `VD`     |  Vector `f64`            |
    | `V`       | Vector                |  `BI`     |  Bundled `i32`           |
    | `B`       | Bundled               |  `BL`     |  Bundled `i64`           |
    | `SB`      | Scattered Bundle      |  `BF`     |  Bundled `f32`           |
    |           |                       |  `BF`     |  Bundled `f32`           |
    |           |                       |  `BD`     |  Bundled `f64`           |
    |           |                       |  `SBI`    |  Scattered Bundled `i32` |
    |           |                       |  `SBL`    |  Scattered Bundled `i64` |
    |           |                       |  `SBF`    |  Scattered Bundled `f32` |
    |           |                       |  `SBD`    |  Scattered Bundled `f64` |
    |           |                       |  `TVI`    |  Vector Threaded `i32`   |
    |           |                       |  `TVL`    |  Vector Threaded `i64`   |
    |           |                       |  `TVF`    |  Vector Threaded `f32`   |
    |           |                       |  `TVD`    |  Vector Threaded `f64`   |

- ### Functions
    - `Singes` return single random value
    - `Vector` returns multiple random number in `std::vector<T>`
    - `Bundled` returns multiple random number in `std::vector<std::vector<T>>`
    - `Scattered Bundled` returns multiple random number in `std::vector<std::vector<T>>` but with different count of each sub-vector
    - `-Thread` means everything is done in pararel

- ### API Codes Synopsis:
    - Supported types are `i32`, `i64`, `f32`, and `f64`. `Num` will return single value, `Nums` will return a bunch of numbers.

    ### File `Common.hpp`
    > ### Brief
    > Internal common utilities and definitions for the ToolsE::Random module.
    > This header provides shared dependencies, type aliases, and helper functions
    > used across the randomization library. It includes core Tools library components
    > for types, casting, rounding, and base randomization primitives.

    > ### Library Overview
    > Tools.Random is a high-performance, C++26-compliant randomization wrapper
    > designed to provide Python-like expressiveness with C++ type safety.

    > ### Key Features:
    > - **Type Safety**: Uses C++20/26 concepts (OneOf) to ensure correct type usage.
    > - **Thread Safety**: Utilizes `static thread_local` generators for single-threaded
    >   functions and `std::jthread` with local generators for multi-threaded operations.
    > - **Flexibility**: Supports both preset generators (32/64-bit Mersenne Twister)
    >   and custom user-provided generators via `TwisterAny<>`.
    > - **Unicode Support**: Full support for char, wchar_t, char16_t, and char32_t.

    > ### File Structure
    > The library is organized into three main categories:
    > 1. **Base**: Single-threaded functions with preset generators.
    > 2. **Custom**: Single-threaded functions accepting a custom `TwisterAny<>` reference.
    > 3. **Thread**: Multi-threaded functions using `std::jthread` for parallel generation.

    > ### Naming Conventions
    > Functions follow a strict suffix pattern to indicate their behavior: \
    > `I`: Integer (`i32`) \
    > `L`: Long Integer (`i64`) \
    > `F`: Float (`f32`) \
    > `D`: Double (`f64`) \
    > `V`: Vector (`std::vector` or custom `vec`) \
    > `B`: Bundle (`vec<vec<T>>`) \
    > `SB`: Scattered Bundle (`vec<vec<T>>` with random sub-vector sizes) \
    > `T`: Threaded (Multi-threaded implementation) \
    > Example: `RandomNumsTVI` `->` Random Numbers, Threaded, Vector, Integer 32.

    ### Master file
    `Tools.Random`, random number wrapper for singly/multiple items per function
    - Total files: 14
    - Total function: 11*6 = 66 funcs
    - Total size: 131 KB

    Legend
    - Types
        - `I` stands for "Integer" (i32)
        - `L` stands for "Long" (i64)
        - `F` stands for "Float" (f32)
        - `D` stands for "Double" (f64)
        - `V` stands for "Vector"
        - `B` stands for "Bundled"
        - `SB` stands for "Scattered Bundle"

    - How they process?
        - Functions end with `VI` or something else without `T` are single thread
        - `T` stands for "Threaded", which means those are using multithreading

    - Vector types
        - `VI` stands for "Vector Integer"
        - `VL` stands for "Vector Long Integer"
        - `VF` stands for "Vector Float"
        - `VD` stands for "Vector Double"

    - Vector in vector (bundle) types
        - `BI` stands for "Bundled Integer"
        - `BL` stands for "Bundled Long Integer"
        - `BF` stands for "Bundled Float"
        - `BD` stands for "Bundled Double"

    - Vector in vector with random size each subvector
        - `SBI` stands for "Scattered Bundled Integer"
        - `SBL` stands for "Scattered Bundled Long Integer"
        - `SBF` stands for "Scattered Bundled Float"
        - `SBD` stands for "Scattered Bundled Double"

    Twister available in 32/64-bit or in Custom

    ```cpp
    /** Required for functions **/
    #include "Random/_Common.hpp"

    /** Singly functions **/
    #include "Random/Single.Base.hpp"
    #include "Random/Single.Custom.hpp"

    /** Vector functions **/
    #include "Random/Vector.Base.hpp"
    #include "Random/Vector.Custom.hpp"
    #include "Random/Vector.Thread.hpp"
    #include "Random/Vector.Thread.Custom.hpp"

    /** Bundled functions (vector in vector) **/
    #include "Random/Bundle.Base.hpp"
    #include "Random/Bundle.Custom.hpp"
    #include "Random/Bundle.Thread.hpp"
    #include "Random/Bundle.Thread.Custom.hpp"

    /** SBundled functions (vector in vector with scattered sizes) **/
    #include "Random/SBundle.Base.hpp"
    #include "Random/SBundle.Custom.hpp"
    #include "Random/SBundle.Thread.hpp"
    #include "Random/SBundle.Thread.Custom.hpp"

    /** Random String **/
    #include "Random/String.Base.hpp"
    #include "Random/String.Custom.hpp"

    /** Random Choice from vec or ivec **/
    #include "Random/Choice.Base.hpp"
    #include "Random/Choice.Custom.hpp"
    ```

    ### Singly functions

    ### `Random/Single.Base.hpp`
    Provides functions for generating single random numbers using preset thread-local generators.

    This header implements the core "Single" functionality of Tools.Random. It offers
    both generic template functions and type-specific overloads for integers and floating-point
    numbers. All functions in this file utilize `static thread_local` (`sthread`) generators,
    ensuring high performance and thread-safety without the overhead of mutexes or explicit
    generator management by the user.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    auto i = Random::RandomNumI(-50, 50);   // Integer [-50, 50]
    auto d = Random::RandomNumD(0.0, 1.0);  // Double [0.0, 1.0]
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
    * @namespace Tools::Random
    * @brief Generic template functions for single random number generation.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a single random integer within the specified range.
        *
        * Uses a 64-bit Mersenne Twister generator stored in thread-local storage.
        *
        * @tparam Int The integer type (must be i32 or i64).
        * @param Min The lower bound of the range (inclusive). Default: -100.
        * @param Max The upper bound of the range (inclusive). Default: 100.
        * @return Int A random integer between Min and Max.
        * @note auto swap if Min > Max.
        */
        template <Tools::Types::Integer Int = i32>
        Int RandomNum(
            Int Min = -100,
            Int Max = 100
        );

        /**
        * @brief Generates a single random floating-point number within the specified range.
        *
        * Uses a 64-bit Mersenne Twister generator and applies optional rounding.
        *
        * @tparam Real The floating-point type (must be f32, f64, or fld).
        * @param Min The lower bound of the range (inclusive). Default: -2.71.
        * @param Max The upper bound of the range (inclusive). Default: 2.71.
        * @param Rounding The number of decimal places to round the result to. Default: 0.
        * @return Real A random floating-point number between Min and Max.
        * @note auto swap if Min > Max.
        */
        template <Tools::Types::Float Real = f32>
        Real RandomNum(
            Real Min = -2.71,
            Real Max = 2.71,
            const u32 Rounding = 0
        );
    }

    /** Integer **/
    /**
    * @namespace Tools::Random
    * @brief Type-specific overloads for integer random number generation.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a single 32-bit random integer.
        */
        inline i32 RandomNumI(
            i32 ValueMin = -10,
            i32 ValueMax = 10
        );

        /**
        * @brief Generates a single 64-bit random integer.
        *
        * Optimized with a 64-bit Mersenne Twister generator.
        */
        inline i64 RandomNumL(
            i64 ValueMin = -100,
            i64 ValueMax = 100
        );
    }

    /** Floats **/
    /**
    * @namespace Tools::Random
    * @brief Type-specific overloads for floating-point random number generation.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a single 32-bit floating-point number.
        * @return f32 A random 32-bit float.
        */
        inline f32 RandomNumF(
            f32 ValueMin = -2.71,
            f32 ValueMax = 2.71,
            const u32 Rounding = 0
        );

        /**
        * @brief Generates a single 64-bit floating-point number (double).
        * @return f64 A random 64-bit double.
        */
        inline f64 RandomNumD(
            f64 ValueMin = -3.14,
            f64 ValueMax = 3.14,
            const u32 Rounding = 0
        );
    }
    ```

    ### `Random/Single.Custom.hpp`
    Provides functions for generating single random numbers using a user-provided generator.
    This header implements the "Custom" variant of single number generation. Unlike the Base
    versions which use internal thread-local generators, these functions accept a reference
    to a `TwisterAny<>` engine. This allows for:
    - Deterministic reproduction of results by seeding the generator externally.
    - Usage of custom PRNG configurations.
    - Better control over generator state in complex applications.

    Usage
    ```cpp
    using namespace Tools;
    // Create a custom 64-bit twister
    Twister64 myGen(12345);
    auto i = Random::RandomNumI(myGen, -50, 50);
    auto d = Random::RandomNumD(myGen, 0.0, 1.0);
    ```

    File synopsis
    ```cpp
    /** Generic with custom twister **/
    /**
    * @namespace Tools::Random
    * @brief Generic template functions for single random number generation with custom engines.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a single random integer using a custom generator.
        *
        * @tparam Int The integer type (must be i32 or i64).
        * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
        * @param ValueMin The lower bound of the range (inclusive). Default: -100.
        * @param ValueMax The upper bound of the range (inclusive). Default: 100.
        * @return Int A random integer between Min and Max.
        * @note auto swap if Min > Max.
        */
        template <Tools::Types::Integer Int = i32>
        Int RandomNum(
            TwisterAny<>& Gen,
            Int ValueMin = -100,
            Int ValueMax = 100
        );

        /**
        * @brief Generates a single random floating-point number using a custom generator.
        *
        * @tparam Real The floating-point type (must be f32, f64, or fld).
        * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
        * @param ValueMin The lower bound of the range (inclusive). Default: -2.71.
        * @param ValueMax The upper bound of the range (inclusive). Default: 2.71.
        * @param Rounding The number of decimal places to round the result to. Default: 0.
        * @return Real A random floating-point number between Min and Max.
        * @note auto swap if Min > Max.
        */
        template <Tools::Types::Float Real = f32>
        Real RandomNum(
            TwisterAny<>& Gen,
            Real ValueMin = -2.71,
            Real ValueMax = 2.71,
            const u32 Rounding = 0
        );
    }

    /** Integer with custom twister **/
    namespace Tools::Random {
        /**
        * @brief Generates a single 32-bit random integer using a custom generator.
        * @return i32 A random 32-bit integer.
        */
        inline i32 RandomNumI(
            TwisterAny<>& Gen,
            i32 ValueMin = -10,
            i32 ValueMax = 10
        );

        /**
        * @brief Generates a single 64-bit random integer using a custom generator.
        * @return i64 A random 64-bit integer.
        */
        inline i64 RandomNumL(
            TwisterAny<>& Gen,
            i64 ValueMin = -10,
            i64 ValueMax = 10
        );
    }

    /** Float with custom twister **/
    namespace Tools::Random {
        /**
        * @brief Generates a single 32-bit floating-point number using a custom generator.
        * @return f32 A random 32-bit float.
        */
        inline f32 RandomNumF(
            TwisterAny<>& Gen,
            f32 ValueMin = -10,
            f32 ValueMax = 10,
            const u32 Rounding = 0
        );

        /**
        * @brief Generates a single 64-bit floating-point number (double) using a custom generator.
        * @return f64 A random 64-bit double.
        */
        inline f64 RandomNumD(
            TwisterAny<>& Gen,
            f64 ValueMin = -10,
            f64 ValueMax = 10,
            const u32 Rounding = 0
        );
    }

    ```

    ### Vector functions

    ### `Random/Vector.Base.hpp`
    Provides functions for generating vectors of random numbers using preset thread-local generators.

    This header implements the core "Vector" functionality of Tools.Random. It generates
    a `vec<T>` containing random values within a specified range. Like the Single module,
    it uses `static thread_local` generators for high performance and implicit thread safety.

    Performance Note:
    All vector generation functions pre-allocate memory using `reserve()` to avoid
    reallocations during the generation loop. For very large counts (>32,767),
    a warning will be triggered via `WarningCount()`.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    auto ints = Random::RandomNumsVI(100, 0, 50);       // 100 integers [0, 50]
    auto dbls = Random::RandomNumsVD(1000, -1.0, 1.0);  // 1000 doubles [-1.0, 1.0]
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
    * @namespace Tools::Random
    * @brief Generic template functions for vector random number generation.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a vector of random integers.
        *
        * Uses a 64-bit Mersenne Twister generator stored in thread-local storage.
        *
        * @return vec<Int> A vector containing 'Count' random integers.
        * @note auto swap if Min > Max.
        */
        template <Tools::Types::Integer Int = i32>
        vec<Int> RandomNumsV(
            const idx ValueCount = 10,
            Int ValueMin = -10, Int ValueMax = 10
        );

        /**
        * @brief Generates a vector of random floating-point numbers.
        *
        * Uses a 64-bit Mersenne Twister generator and applies optional rounding to each element.
        *
        * @return vec<Real> A vector containing 'Count' random floats/doubles.
        * @note auto swap if Min > Max.
        */
        template <Tools::Types::Float Real = f32>
        vec<Real> RandomNumsV(
            const idx ValueCount = 10,
            Real ValueMin = -2.71, Real ValueMax = 2.71,
            const u32 Rounding = 0
        );
    }

    /** Integer **/
    /**
    * @namespace Tools::Random
    * @brief Type-specific overloads for integer vector generation.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a vector of 32-bit random integers.
        *
        * Optimized with a 32-bit Mersenne Twister generator.
        * @return vec<i32> Vector of random i32 values.
        */
        inline vec<i32> RandomNumsVI(
            const idx ValueCount = 10,
            i32 ValueMin = -10, i32 ValueMax = 10
        );

        /**
        * @brief Generates a vector of 64-bit random integers.
        *
        * Optimized with a 64-bit Mersenne Twister generator.
        * @return vec<i64> Vector of random i64 values.
        */
        inline vec<i64> RandomNumsVL(
            const idx ValueCount = 10,
            i64 ValueMin = -100, i64 ValueMax = 100
        );
    }

    /** Floats **/
    /**
    * @namespace Tools::Random
    * @brief Type-specific overloads for floating-point vector generation.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a vector of 32-bit floating-point numbers.
        * @return vec<f32> Vector of random f32 values.
        */
        inline vec<f32> RandomNumsVF(
            const idx ValueCount = 10,
            f32 ValueMin = -2.71, f32 ValueMax = 2.71,
            const u32 Rounding = 0
        );

        /**
        * @brief Generates a vector of 64-bit floating-point numbers (doubles).
        * @return vec<f64> Vector of random f64 values.
        */
        inline vec<f64> RandomNumsVD(
            const idx ValueCount = 10,
            f64 ValueMin = -3.14, f64 ValueMax = 3.14,
            const u32 Rounding = 0
        );
    }

    ```

    ### `Random/Vector.Custom.hpp`
    Provides functions for generating vectors of random numbers using a user-provided generator.

    This header implements the "Custom" variant of vector generation. Unlike the Base
    versions which use internal thread-local generators, these functions accept a reference
    to a `TwisterAny<>` engine. This is useful for:
    - Reproducible batch generation with a specific seed.
    - Using non-standard PRNG configurations.
    - Sharing a single generator state across multiple generation calls.

    Range Safety: If Min > Max, the values are automatically swapped internally. No exception is thrown for inverted ranges.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    Twister64 myGen(42);
    auto data = Random::RandomNumsVI(myGen, 1000, 0, 100);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
    * @namespace Tools::Random
    * @brief Generic template functions for vector generation with custom engines.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a vector of random integers using a custom generator.
        *
        * @tparam Int The integer type (must be i32 or i64).
        * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
        * @param ValueCount Number of elements to generate. Default: 10.
        * @param ValueMin Lower bound of the range (inclusive). Default: -10.
        * @param ValueMax Upper bound of the range (inclusive). Default: 10.
        * @return vec<Int> A vector containing 'Count' random integers.
        * @note If Min > Max, they are automatically swapped.
        */
        template <Tools::Types::Integer Int = i32>
        vec<Int> RandomNumsV(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            Int ValueMin = -10, Int ValueMax = 10
        );

        /**
        * @brief Generates a vector of random floating-point numbers using a custom generator.
        *
        * @tparam Real The floating-point type (must be f32 or f64).
        * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
        * @param ValueCount Number of elements to generate. Default: 10.
        * @param ValueMin Lower bound of the range (inclusive). Default: -2.71.
        * @param ValueMax Upper bound of the range (inclusive). Default: 2.71.
        * @param Rounding Decimal precision for rounding each element. Default: 0.
        * @return vec<Real> A vector containing 'Count' random floats/doubles.
        * @note If Min > Max, they are automatically swapped.
        */
        template <Tools::Types::Float Real = f32>
        vec<Real> RandomNumsV(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            Real ValueMin = -2.71, Real ValueMax = 2.71,
            const u32 Rounding = 0
        );
    }

    /** Integer **/
    /**
    * @namespace Tools::Random
    * @brief Type-specific overloads for integer vector generation with custom engines.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a vector of 32-bit random integers using a custom generator.
        * @return vec<i32> Vector of random i32 values.
        */
        inline vec<i32> RandomNumsVI(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            i32 ValueMin = -10, i32 ValueMax = 10
        );

        /**
        * @brief Generates a vector of 64-bit random integers using a custom generator.
        * @return vec<i64> Vector of random i64 values.
        */
        inline vec<i64> RandomNumsVL(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            i64 ValueMin = -100, i64 ValueMax = 100
        );
    }

    /** Floats **/
    /**
    * @namespace Tools::Random
    * @brief Type-specific overloads for floating-point vector generation with custom engines.
    */
    namespace Tools::Random {
        /**
        * @brief Generates a vector of 32-bit floating-point numbers using a custom generator.
        * @return vec<f32> Vector of random f32 values.
        */
        inline vec<f32> RandomNumsVF(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            f32 ValueMin = -2.71, f32 ValueMax = 2.71,
            const u32 Rounding = 0
        );

        /**
        * @brief Generates a vector of 64-bit floating-point numbers (doubles) using a custom generator.
        * @return vec<f64> Vector of random f64 values.
        */
        inline vec<f64> RandomNumsVD(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            f64 ValueMin = -3.14, f64 ValueMax = 3.14,
            const u32 Rounding = 0
        );
    }
    ```

    ### `Random/Vector.Thread.hpp`
    Provides multi-threaded functions for generating vectors of random numbers.

    This header implements parallel random number generation using `std::jthread`.
    Unlike the single-threaded Base versions, these functions split the workload
    across multiple threads to accelerate generation for large datasets.

    `thread_safety`: Thread Safety & Generator Strategy
    To avoid data races on the non-thread-safe Mersenne Twister engine, each worker
    thread creates its own LOCAL generator instance. The local generators are seeded
    deterministically from the master generator to ensure reproducibility while
    maintaining parallel performance.

    Warning: For small counts (<1000), the overhead of thread creation may exceed
            the benefit. Use single-threaded versions (Vector.Base.hpp) for small datasets.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    // Generate 1M integers using 8 threads
    auto data = Random::RandomNumsTVI(1'000'000, -100, 100, 8);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for multi-threaded vector generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a vector of random integers using multiple threads.
         *
         * Splits the work into chunks and processes them in parallel. Each thread
         * uses a locally-seeded Twister64 to avoid contention.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param ValueCount Total number of elements to generate. Default: 10.
         * @param ValueMin Lower bound of the range (inclusive). Default: -10.
         * @param ValueMax Upper bound of the range (inclusive). Default: 10.
         * @param Threads Number of worker threads to use. Default: 4.
         * @return vec<Int> A vector containing 'Count' random integers.
         * @note If Min > Max, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        vec<Int> RandomNumsTV(
            const idx ValueCount = 10,
            Int ValueMin = -10, Int ValueMax = 10,
            const idx Threads = 4
        );

        /**
         * @brief Generates a vector of random floating-point numbers using multiple threads.
         *
         * @tparam Real The floating-point type (must be f32, f64, or fld).
         * @param ValueCount Total number of elements. Default: 10.
         * @param ValueMin Lower bound (inclusive). Default: -10.
         * @param ValueMax Upper bound (inclusive). Default: 10.
         * @param Threads Number of worker threads. Default: 4.
         * @param Rounding Decimal precision for rounding. Default: 0.
         * @return vec<Real> A vector containing 'Count' random floats/doubles.
         */
        template <Tools::Types::Float Real = f32>
        vec<Real> RandomNumsTV(
            const idx ValueCount = 10,
            Real ValueMin = -10, Real ValueMax = 10,
            const u32 Rounding = 0,
            const idx Threads = 4
        );
    }

    /** Integer **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded integer vector generation.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded generation of 32-bit integer vector.
         * @return vec<i32>
         */
        inline vec<i32> RandomNumsTVI(
            const idx ValueCount = 10,
            i32 ValueMin = -10, i32 ValueMax = 10,
            const idx Threads = 4
        );

        /**
         * @brief Multi-threaded generation of 64-bit integer vector.
         * @return vec<i64>
         */
        inline vec<i64> RandomNumsTVL(
            const idx ValueCount = 10,
            i64 ValueMin = -10, i64 ValueMax = 10,
            const idx Threads = 4
        );
    }

    /** Floats **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded float vector generation.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded generation of f32 vector.
         * @return vec<f32>
         */
        inline vec<f32> RandomNumsTVF(
            const idx ValueCount = 10,
            f32 ValueMin = -10, f32 ValueMax = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );

        /**
         * @brief Multi-threaded generation of f64 vector.
         * @return vec<f64>
         */
        inline vec<f64> RandomNumsTVD(
            const idx ValueCount = 10,
            f64 ValueMin = -10, f64 ValueMax = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );
    }
    ```

    ### `Random/Vector.Thread.Custom.hpp`
    Provides multi-threaded vector generation using a user-provided custom generator.

    This header combines the flexibility of custom PRNG engines with parallel execution.
    The user-provided generator is used ONLY for seeding worker threads sequentially.
    Each worker then creates its own LOCAL Twister engine (matching the master's type)
    to avoid data races and contention during generation.

    `thread_safety` Thread Safety & Generator Strategy:
    - Master generator (`Gen`) is accessed ONLY in the calling thread for seeding.
    - Each worker creates a local `WorkerTwister` seeded deterministically from master.
    - No mutexes needed; zero contention during the generation phase.
    - Worker twister type is automatically deduced from the master via `std::decay_t<decltype(Gen)>`.

    Warning:
    - For small counts (<1000), the overhead of thread creation may exceed the benefit.
    - Use single-threaded versions (Vector.Custom.hpp) for small datasets.

    Note:
    - Reproducibility depends entirely on the state of 'Gen' passed by the caller. The same seed + same thread count will always produce identical results.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    // Generate 1M integers using 8 threads with custom 32-bit twister
    Twister32 gen(123123);
    auto data = Random::RandomNumsTVI(gen, 1'000'000, -100, 100, 8);

    // Generate 500K doubles with rounding using custom 64-bit twister
    Twister64 gen64(42);
    auto dbls = Random::RandomNumsTVD(gen64, 500'000, -3.14, 3.14, 4, 8);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for multi-threaded vector generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a vector of random integers using multiple threads and a custom generator.
         *
         * Splits the work into chunks and processes them in parallel. Each thread gets
         * a locally-seeded Twister matching the master's type to avoid contention.
         *
         * @tparam Int The integer type (must satisfy Tools::Types::Integer). Default: i32.
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param ValueCount Total number of elements to generate. Default: 10.
         * @param ValueMin Lower bound of the range (inclusive). Default: -10.
         * @param ValueMax Upper bound of the range (inclusive). Default: 10.
         * @param Threads Number of worker threads to use. Default: 4.
         * @return vec<Int> A vector containing 'ValueCount' random integers.
         * @note If ValueMin > ValueMax, they are automatically swapped.
         * @note Returns empty vector if ValueCount == 0 or Threads == 0.
         */
        template <Tools::Types::Integer Int = i32>
        vec<Int> RandomNumsTV(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            Int ValueMin = -10, Int ValueMax = 10,
            const idx Threads = 4
        );

        /**
         * @brief Generates a vector of random floating-point numbers using multiple threads and a custom generator.
         *
         * @tparam Real The floating-point type (must satisfy Tools::Types::Float). Default: f32.
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param ValueCount Total number of elements to generate. Default: 10.
         * @param ValueMin Lower bound of the range (inclusive). Default: -10.
         * @param ValueMax Upper bound of the range (inclusive). Default: 10.
         * @param Rounding Decimal precision for rounding each element. Default: 0.
         * @param Threads Number of worker threads to use. Default: 4.
         * @return vec<Real> A vector containing 'ValueCount' random floats/doubles.
         * @note If ValueMin > ValueMax, they are automatically swapped.
         * @note Returns empty vector if ValueCount == 0 or Threads == 0.
         */
        template <Tools::Types::Float Real = f32>
        vec<Real> RandomNumsTV(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            Real ValueMin = -10, Real ValueMax = 10,
            const u32 Rounding = 0,
            const idx Threads = 4
        );
    }

    /** Integer **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded integer vector generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded generation of i32 vector with custom engine.
         * @return vec<i32>
         */
        inline vec<i32> RandomNumsTVI(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            i32 ValueMin = -10, i32 ValueMax = 10,
            const idx Threads = 4
        );

        /**
         * @brief Multi-threaded generation of i64 vector with custom engine.
         * @return vec<i64>
         */
        inline vec<i64> RandomNumsTVL(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            i64 ValueMin = -10, i64 ValueMax = 10,
            const idx Threads = 4
        );
    }

    /** Floats **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded float vector generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded generation of f32 vector with custom engine.
         * @return vec<f32>
         */
        inline vec<f32> RandomNumsTVF(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            f32 ValueMin = -10, f32 ValueMax = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );

        /**
         * @brief Multi-threaded generation of f64 vector with custom engine.
         * @return vec<f64>
         */
        inline vec<f64> RandomNumsTVD(
            TwisterAny<>& Gen,
            const idx ValueCount = 10,
            f64 ValueMin = -10, f64 ValueMax = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );
    }
    ```

    ### Bundled functions (vector in vector)

    ### `Random/Bundle.Base.hpp`

    Provides functions for generating 2D vectors (bundles) with fixed sub-vector sizes.

    This header implements the "Bundle" functionality, generating a `Bundle<T>` where
    every inner vector has exactly the same length ('Count'). This is ideal for representing
    matrices, grids, or batched datasets with uniform dimensions.

    Note:
    - For bundles with varying sub-vector sizes, see SBundle.Base.hpp.
    - All functions use preset thread-local generators for implicit thread safety.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    // Create a 4x10 matrix of integers
    auto grid = Random::RandomNumsBI(4, 10, 0, 100);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of random integers with fixed dimensions.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param ValueCountPerVec Number of elements per sub-vector (columns). Default: 10.
         * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
         * @param ValueMin Lower bound of the range (inclusive). Default: -100.
         * @param ValueMax Upper bound of the range (inclusive). Default: 100.
         * @return Bundle<Int> A 2D vector with dimensions [SubVectorCount][Count].
         * @note If Min > Max, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        Bundle<Int> RandomNumsB(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            Int ValueMin = -100, Int ValueMax = 100
        );

        /**
         * @brief Generates a 2D vector of random floating-point numbers with fixed dimensions.
         *
         * @tparam Real The floating-point type (must be f32 or f64).
         * @param ValueCountPerVec Number of elements per sub-vector. Default: 10.
         * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
         * @param ValueMin Lower bound (inclusive). Default: -3.14.
         * @param ValueMax Upper bound (inclusive). Default: 3.14.
         * @param Rounding Decimal precision for rounding. Default: 0.
         * @return Bundle<Real> A 2D vector with dimensions [SubVectorCount][Count].
         */
        template <Tools::Types::Float Real = f32>
        Bundle<Real> RandomNumsB(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            Real ValueMin = -3.14, Real ValueMax = 3.14, const u32 Rounding = 0
        );
    }

    /** Integers **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for integer bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of i32 with fixed dimensions.
         * Uses optimized Twister32 generator.
         */
        inline Bundle<i32> RandomNumsBI(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            i32 ValueMin = -10, i32 ValueMax = 10
        );

        /**
         * @brief Generates a 2D vector of i64 with fixed dimensions.
         * Uses optimized Twister64 generator.
         */
        inline Bundle<i64> RandomNumsBL(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            i64 ValueMin = -100, i64 ValueMax = 100
        );
    }

    /** Floats **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for floating-point bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of f32 with fixed dimensions.
         * Uses optimized Twister32 generator.
         */
        inline Bundle<f32> RandomNumsBF(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            f32 ValueMin = -2.71, f32 ValueMax = 2.71,
            const u32 Rounding = 0
        );

        /**
         * @brief Generates a 2D vector of f64 with fixed dimensions.
         * Uses optimized Twister64 generator.
         */
        inline Bundle<f64> RandomNumsBD(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            f64 ValueMin = -3.14, f64 ValueMax = 3.14,
            const u32 Rounding = 0
        );
    }
    ```

    ### `Random/Bundle.Custom.hpp`
    Provides functions for generating 2D vectors (bundles) with fixed dimensions using a user-provided generator.

    This header implements the "Custom" variant of bundle generation. It accepts a reference
    to a `TwisterAny<>` engine, allowing for deterministic matrix generation or integration
    with external PRNG state management.

    Note: Unlike Base versions, these functions do NOT use internal thread-local generators.
        The caller is responsible for ensuring thread safety if the same generator is
        shared across multiple threads.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    Twister64 myGen(12345);
    auto matrix = Random::RandomNumsBI(myGen, 4, 10, 0, 100);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of random integers with fixed dimensions using a custom generator.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
         * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
         * @param ValueCountPerVec Number of elements per sub-vector. Default: 10.
         * @param ValueMin Lower bound of the range (inclusive). Default: -100.
         * @param ValueMax Upper bound of the range (inclusive). Default: 100.
         * @return Bundle<Int> A 2D vector with dimensions [SubVectorCount][Count].
         * @note If Min > Max, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        Bundle<Int> RandomNumsB(
            TwisterAny<>& Gen,
            const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
            Int ValueMin = -100, Int ValueMax = 100
        );

        /**
         * @brief Generates a 2D vector of random floating-point numbers with fixed dimensions using a custom generator.
         *
         * @tparam Real The floating-point type (must be f32 or f64).
         * @param Gen A reference to a Mersenne Twister engine (TwisterAny<>).
         * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
         * @param ValueCountPerVec Number of elements per sub-vector. Default: 10.
         * @param ValueMin Lower bound (inclusive). Default: -3.14.
         * @param ValueMax Upper bound (inclusive). Default: 3.14.
         * @param Rounding Decimal precision for rounding. Default: 0.
         * @return Bundle<Real> A 2D vector with dimensions [SubVectorCount][Count].
         */
        template <Tools::Types::Float Real = f32>
        Bundle<Real> RandomNumsB(
            TwisterAny<>& Gen,
            const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
            Real ValueMin = -3.14, Real ValueMax = 3.14, const u32 Rounding = 0
        );
    }

    /** Integer **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for integer bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of i32 with fixed dimensions using a custom generator.
         */
        inline Bundle<i32> RandomNumsBI(
            TwisterAny<>& Gen,
            const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
            i32 ValueMin = -10, i32 ValueMax = 10
        );

        /**
         * @brief Generates a 2D vector of i64 with fixed dimensions using a custom generator.
         */
        inline Bundle<i64> RandomNumsBL(
            TwisterAny<>& Gen,
            const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
            i64 ValueMin = -100,i64  ValueMax = 100
        );
    }

    /** Floats **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for floating-point bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of f32 with fixed dimensions using a custom generator.
         */
        inline Bundle<f32> RandomNumsBF(
            TwisterAny<>& Gen,
            const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
            f32 ValueMin = -2.71, f32 ValueMax = 2.71,
            const u32 Rounding = 0
        );

        /**
         * @brief Generates a 2D vector of f64 with fixed dimensions using a custom generator.
         */
        inline Bundle<f64> RandomNumsBD(
            TwisterAny<>& Gen,
            const idx ValueCountPerVec = 10, const idx SubVectorCount = 4,
            f64 ValueMin = -3.14, f64 ValueMax = 3.14,
            const u32 Rounding = 0
        );
    }
    ```

    ### `Random/Bundle.Thread.hpp`
    Provides multi-threaded functions for generating 2D vectors (bundles) with fixed dimensions.

    This header implements parallel bundle generation using std::jthread. Work is distributed
    at the sub-vector level (row-level parallelism), where each thread processes specific
    rows in a round-robin fashion to ensure balanced workload distribution.

    `thread_safety`: Thread Safety & Generator Strategy
    Each worker thread creates its own LOCAL generator seeded from the master generator.
    This eliminates data races on the non-thread-safe Mersenne Twister engine while
    maintaining deterministic reproducibility for the same seed.

    Warning:
    For small bundles (e.g., < 4 sub-vectors or < 100 elements each), threading overhead may exceed benefits. Consider using Bundle.Base.hpp for small datasets.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    // Generate a 100x1000 matrix using 8 threads
    auto grid = Random::RandomNumsTBI(100, 1000, 0, 255, 8);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for multi-threaded bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of random integers using multiple threads.
         *
         * Distributes sub-vectors across threads in round-robin fashion. Each thread
         * uses a locally-seeded Twister64 to avoid contention.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
         * @param ValueCountPerVec Elements per sub-vector. Default: 10.
         * @param ValueMin Lower bound (inclusive). Default: -10.
         * @param ValueMax Upper bound (inclusive). Default: 10.
         * @param Threads Number of worker threads. Default: 4.
         * @return Bundle<Int> A 2D vector with dimensions [SubVectorCount][Count].
         * @note If Min > Max, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        Bundle<Int> RandomNumsTB(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            Int ValueMin = -10, Int ValueMax = 10,
            const idx Threads = 4
        );

        /**
         * @brief Generates a 2D vector of random floating-point numbers using multiple threads.
         *
         * @tparam Real The floating-point type (must be f32, f64, or fld).
         * @param SubVectorCount Number of rows. Default: 4.
         * @param ValueCountPerVec Elements per row. Default: 10.
         * @param ValueMin Lower bound. Default: -10.
         * @param ValueMax Upper bound. Default: 10.
         * @param Threads Worker count. Default: 4.
         * @param Rounding Decimal precision. Default: 0.
         * @return Bundle<Real>
         */
        template <Tools::Types::Float Real = f32>
        Bundle<Real> RandomNumsTB(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            Real ValueMin = -10, Real ValueMax = 10,
            const u32 Rounding = 0,
            const idx Threads = 4
        );
    }

    /** Integer **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded integer bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded generation of 2D i32 bundle.
         * Uses Twister32 per thread for optimal performance.
         */
        inline Bundle<i32> RandomNumsTBI(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            i32 ValueMin = -10, i32 ValueMax = 10,
            const idx Threads = 4
        );

        /**
         * @brief Multi-threaded generation of 2D i64 bundle.
         * Uses Twister64 per thread.
         */
        inline Bundle<i64> RandomNumsTBL(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            i64 ValueMin = -10, i64 ValueMax = 10,
            const idx Threads = 4
        );
    }

    /** Floats **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded float bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded generation of 2D f32 bundle.
         * Uses Twister32 per thread.
         */
        inline Bundle<f32> RandomNumsTBF(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            f32 ValueMin = -10, f32 ValueMax = 10,
            const u32 Rounding = 0,
            const idx Threads = 4
        );

        /**
         * @brief Multi-threaded generation of 2D f64 bundle.
         * Uses Twister64 per thread.
         */
        inline Bundle<f64> RandomNumsTBD(
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            f64 ValueMin = -10, f64 ValueMax = 10,
            const u32 Rounding = 0,
            const idx Threads = 4
        );
    }
    ```

    ### `Random/Bundle.Thread.Custom.hpp`
    Provides multi-threaded bundle generation using a user-provided custom generator.

    This header combines the flexibility of custom PRNG engines with parallel execution.
    The user-provided generator is used ONLY for seeding worker threads. Each worker
    then uses its own local Twister engine to avoid data races and contention.

    `thread_safety` Thread Safety Note:
    The input generator `Gen` is accessed sequentially in the main thread to derive
    seeds for workers. It is NOT shared across threads during generation, ensuring
    complete thread safety without mutexes.

    Warning:
    Since this uses a custom generator, reproducibility depends entirely on the state of 'Gen' passed by the caller.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    Twister64 myGen(12345);
    auto matrix = Random::RandomNumsTBI(myGen, 100, 1000, 0, 255, 8);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for multi-threaded bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of random integers using multiple threads and a custom generator.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param SubVectorCount Number of rows/sub-vectors. Default: 4.
         * @param ValueCountPerVec Elements per sub-vector. Default: 10.
         * @param ValueMin Lower bound (inclusive). Default: -10.
         * @param ValueMax Upper bound (inclusive). Default: 10.
         * @param Threads Number of worker threads. Default: 4.
         * @return Bundle<Int> A 2D vector with dimensions [SubVectorCount][Count].
         * @note If Min > Max, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        Bundle<Int> RandomNumsTB(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            Int ValueMin = -10, Int ValueMax = 10,
            const idx Threads = 4
        );

        /**
         * @brief Generates a 2D vector of random floating-point numbers using multiple threads and a custom generator.
         *
         * @tparam Real The floating-point type (must be f32, f64, or fld).
         * @param Gen Reference to custom engine (used for seeding).
         * @param SubVectorCount Number of rows. Default: 4.
         * @param ValueCountPerVec Elements per row. Default: 10.
         * @param ValueMin Lower bound. Default: -10.
         * @param ValueMax Upper bound. Default: 10.
         * @param Threads Worker count. Default: 4.
         * @param Rounding Decimal precision. Default: 0.
         * @return Bundle<Real>
         */
        template <Tools::Types::Float Real = f32>
        Bundle<Real> RandomNumsTB(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            Real ValueMin = -10, Real ValueMax = 10,
            const u32 Rounding = 0,
            const idx Threads = 4
        );
    }

    /** Integer **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded integer bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded 2D i32 bundle generation with custom engine.
         * Uses Twister32 per worker for optimal performance.
         */
        inline Bundle<i32> RandomNumsTBI(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            i32 ValueMin = -10, i32 ValueMax = 10,
            const idx Threads = 4
        );

        /**
         * @brief Multi-threaded 2D i64 bundle generation with custom engine.
         * Uses Twister64 per worker.
         */
        inline Bundle<i64> RandomNumsTBL(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            i64 ValueMin = -10, i64 ValueMax = 10,
            const idx Threads = 4
        );
    }

    /** Floats **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded float bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded 2D f32 bundle generation with custom engine.
         * Uses Twister32 per worker.
         */
        inline Bundle<f32> RandomNumsTBF(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            f32 ValueMin = -10, f32 ValueMax = 10,
            const u32 Rounding = 0,
            const idx Threads = 4
        );

        /**
         * @brief Multi-threaded 2D f64 bundle generation with custom engine.
         * Uses Twister64 per worker.
         */
        inline Bundle<f64> RandomNumsTBD(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4, const idx ValueCountPerVec = 10,
            f64 ValueMin = -10, f64 ValueMax = 10,
            const u32 Rounding = 0,
            const idx Threads = 4
        );
    }
    ```

    ### SBundled functions (vector in vector with scattered sizes)

    ### `Random/SBundle.Base.hpp`
    Provides functions for generating 2D vectors (scattered bundles) with RANDOM sub-vector sizes.

    Unlike Bundle.Base.hpp where every sub-vector has the same length, SBundle generates
    a `Bundle<T>` where each inner vector has a size randomly chosen between [CountMin, CountMax].
    This is useful for simulating ragged arrays, variable-length sequences, or testing
    algorithms with non-uniform data structures.

    Note:
    - All functions use preset thread-local generators for implicit thread safety.
    - For fixed-size bundles, see Bundle.Base.hpp.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    // Create 5 sub-vectors, each with random size between 10 and 30
    auto ragged = Random::RandomNumsSBI(5, 10, 30, -100, 100);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for scattered bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a 2D vector of random integers with varying sub-vector sizes.
         *
         * Each sub-vector's length is independently randomized within [CountMin, CountMax].
         * Uses a 64-bit Mersenne Twister generator stored in thread-local storage.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param SubVectorCount Number of sub-vectors to generate. Default: 4.
         * @param ValueCountMin Minimum elements per sub-vector (inclusive). Default: 10.
         * @param ValueCountMax Maximum elements per sub-vector (inclusive). Default: 30.
         * @param ValueMin Lower bound of value range (inclusive). Default: -100.
         * @param ValueMax Upper bound of value range (inclusive). Default: 100.
         * @return Bundle<Int> A ragged 2D vector.
         * @note If Min > Max or CountMin > CountMax, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        Bundle<Int> RandomNumsSB(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            Int ValueMin = -100, Int ValueMax = 100
        );

        /**
         * @brief Generates a 2D vector of random floating-point numbers with varying sub-vector sizes.
         *
         * @tparam Real The floating-point type (must be f32 or f64).
         * @param SubVectorCount Number of sub-vectors. Default: 4.
         * @param ValueCountMin Min elements per sub-vector. Default: 10.
         * @param ValueCountMax Max elements per sub-vector. Default: 30.
         * @param ValueMin Lower bound of value range. Default: -3.14.
         * @param ValueMax Upper bound of value range. Default: 3.14.
         * @param Rounding Decimal precision for rounding. Default: 0.
         * @return Bundle<Real> A ragged 2D vector.
         */
        template <Tools::Types::Float Real = f32>
        Bundle<Real> RandomNumsSB(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            Real ValueMin = -3.14, Real ValueMax = 3.14,
            const i32 Rounding = 0
        );
    }

    /** Integer **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for integer scattered bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a ragged 2D vector of i32.
         * Uses optimized Twister32 generator.
         */
        inline Bundle<i32> RandomNumsSBI(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            i32 ValueMin = -10, i32 ValueMax = 10
        );

        /**
         * @brief Generates a ragged 2D vector of i64.
         * Uses optimized Twister64 generator.
         */
        inline Bundle<i64> RandomNumsSBL(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            i64 ValueMin = -100, i64 ValueMax = 100
        );
    }

    /** Floats **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for floating-point scattered bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a ragged 2D vector of f32.
         * Uses optimized Twister32 generator.
         */
        inline Bundle<f32> RandomNumsSBF(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            f32 ValueMin = -2.71, f32 ValueMax = 2.71,
            const i32 Rounding = 0
        );

        /**
         * @brief Generates a ragged 2D vector of f64.
         * Uses optimized Twister64 generator.
         */
        inline Bundle<f64> RandomNumsSBD(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            f64 ValueMin = -3.14, f64 ValueMax = 3.14,
            const i32 Rounding = 0
        );
    }
    ```

    ### `Random/SBundle.Custom.hpp`

    Provides functions for generating scattered bundles (ragged 2D vectors) using a user-provided generator.

    This header implements the "Custom" variant of scattered bundle generation. Each sub-vector
    has a randomly determined size within [ItemCountMin, ItemCountMax], and values are generated using
    the caller-supplied TwisterAny<> engine.

    Note:
    - Unlike Base versions, these functions do NOT use internal thread-local generators. The caller is responsible for thread safety if sharing the generator across threads.
    - If Min > Max or ItemCountMin > ItemCountMax, values are automatically swapped internally.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    Twister64 myGen(42);
    auto ragged = Random::RandomNumsSBI(myGen, 5, 10, 30, -100, 100);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for scattered bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a ragged 2D vector of random integers using a custom generator.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
         * @param SubVectorCount Number of sub-vectors. Default: 4.
         * @param ValueCountMin Minimum elements per sub-vector (inclusive). Default: 10.
         * @param ValueCountMax Maximum elements per sub-vector (inclusive). Default: 30.
         * @param ValueMin Lower bound of value range (inclusive). Default: -100.
         * @param ValueMax Upper bound of value range (inclusive). Default: 100.
         * @return Bundle<Int> A ragged 2D vector with varying sub-vector sizes.
         * @note If Min > Max or ItemCountMin > ItemCountMax, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        Bundle<Int> RandomNumsSB(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            Int ValueMin = -100, Int ValueMax = 100
        );

        /**
         * @brief Generates a ragged 2D vector of random floating-point numbers using a custom generator.
         *
         * @tparam Real The floating-point type (must be f32 or f64).
         * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
         * @param SubVectorCount Number of sub-vectors. Default: 4.
         * @param ValueCountMin Min elements per sub-vector. Default: 10.
         * @param ValueCountMax Max elements per sub-vector. Default: 30.
         * @param ValueMin Lower bound of value range. Default: -3.14.
         * @param ValueMax Upper bound of value range. Default: 3.14.
         * @param Rounding Decimal precision for rounding. Default: 0.
         * @return Bundle<Real> A ragged 2D vector.
         */
        template <Tools::Types::Float Real = f32>
        Bundle<Real> RandomNumsSB(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            Real ValueMin = -3.14, Real ValueMax = 3.14,
            const i32 Rounding = 0
        );
    }

    /** Integer **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for integer scattered bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a ragged 2D vector of i32 using a custom generator.
         * @return Bundle<i32>
         */
        inline Bundle<i32> RandomNumsSBI(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            i32 ValueMin = -10, i32 ValueMax = 10
        );

        /**
         * @brief Generates a ragged 2D vector of i64 using a custom generator.
         * @return Bundle<i64>
         */
        inline Bundle<i64> RandomNumsSBL(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            i64 ValueMin = -100, i64 ValueMax = 100
        );
    }

    /** Floats **/
    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for floating-point scattered bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a ragged 2D vector of f32 using a custom generator.
         * @return Bundle<f32>
         */
        inline Bundle<f32> RandomNumsSBF(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            f32 ValueMin = -2.71, f32 ValueMax = 2.71,
            const i32 Rounding = 0
        );

        /**
         * @brief Generates a ragged 2D vector of f64 using a custom generator.
         * @return Bundle<f64>
         */
        inline Bundle<f64> RandomNumsSBD(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            f64 ValueMin = -3.14, f64 ValueMax = 3.14,
            const i32 Rounding = 0
        );
    }
    ```

    ### `Random/SBundle.Thread.hpp`
    Provides multi-threaded functions for generating scattered bundles (ragged 2D vectors).

    This header implements parallel generation of ragged arrays where each sub-vector has
    a randomly determined size within [CountMin, CountMax]. Work distribution uses an
    atomic work-stealing approach: each worker thread grabs the next available sub-vector
    index dynamically, ensuring balanced load even when sub-vector sizes vary significantly.

    `thread_safety`: Thread Safety & Generator Strategy
    Each worker thread creates its own LOCAL Twister engine seeded from the master generator.
    This eliminates data races on the non-thread-safe Mersenne Twister while maintaining
    deterministic reproducibility for the same initial seed.

    Note:
    - Sub-vector sizes are pre-calculated sequentially before spawning workers to ensure deterministic size distribution regardless of thread count.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    // Generate 100 ragged sub-vectors (size 10-50 each) using all hardware threads
    auto data = Random::RandomNumsTSBI(100, 10, 50, -100, 100, 2);
    ```

    File synopsis
    ```cpp
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for multi-threaded scattered bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a ragged 2D vector of random integers using multiple threads.
         *
         * Uses atomic work-stealing for load balancing across threads. Each worker gets
         * a locally-seeded Twister64 to avoid contention.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param SubVectorCount Number of sub-vectors. Default: 4.
         * @param ValueCountMin Min elements per sub-vector (inclusive). Default: 10.
         * @param ValueCountMax Max elements per sub-vector (inclusive). Default: 30.
         * @param ValueMin Lower bound of value range (inclusive). Default: -10.
         * @param ValueMax Upper bound of value range (inclusive). Default: 10.
         * @param Thread Number of worker threads. 0 = hardware_concurrency(). Default: 0.
         * @return Bundle<Int> A ragged 2D vector with varying sub-vector sizes.
         * @note If Min > Max or CountMin > CountMax, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        Bundle<Int> RandomNumsTSB(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            Int ValueMin = -10, Int ValueMax = 10,
            const idx Thread = 4
        );

        /**
         * @brief Generates a ragged 2D vector of random floating-point numbers using multiple threads.
         *
         * @tparam Real The floating-point type (must be f32, f64, or fld).
         * @param SubVectorCount Number of sub-vectors. Default: 4.
         * @param ValueCountMin Min elements per sub-vector. Default: 10.
         * @param ValueCountMax Max elements per sub-vector. Default: 30.
         * @param ValueMin Lower bound of value range. Default: -10.
         * @param ValueMax Upper bound of value range. Default: 10.
         * @param Thread Worker count. 0 = hardware_concurrency(). Default: 0.
         * @param Rounding Decimal precision for rounding. Default: 0.
         * @return Bundle<Real> A ragged 2D vector.
         */
        template <Tools::Types::Float Real = f32>
        Bundle<Real> RandomNumsTSB(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            Real ValueMin = -10, Real ValueMax = 10,
            const u32 Rounding = 0,
            const idx Thread = 4
        );
    }

    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded integer scattered bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded ragged 2D i32 bundle generation.
         * Uses Twister32 per worker for optimal performance.
         */
        inline Bundle<i32> RandomNumsTSBI(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            i32 ValueMin = -10, i32 ValueMax = 10,
            const idx Thread = 0
        );

        /**
         * @brief Multi-threaded ragged 2D i64 bundle generation.
         * Uses Twister64 per worker.
         */
        inline Bundle<i64> RandomNumsTSBL(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            i64 ValueMin = -10, i64 ValueMax = 10,
            const idx Thread = 0
        );
    }

    /**
     * @namespace Tools::Random
     * @brief Type-specific overloads for multi-threaded float scattered bundle generation.
     */
    namespace Tools::Random {
        /**
         * @brief Multi-threaded ragged 2D f32 bundle generation.
         * Uses Twister32 per worker.
         */
        inline Bundle<f32> RandomNumsTSBF(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            f32 ValueMin = -10, f32 ValueMax = 10,
            const u32 Rounding = 0,
            const idx Thread = 0
        );

        /**
         * @brief Multi-threaded ragged 2D f64 bundle generation.
         * Uses Twister64 per worker.
         */
        inline Bundle<f64> RandomNumsTSBD(
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            f64 ValueMin = -10, f64 ValueMax = 10,
            const u32 Rounding = 0,
            const idx Thread = 0
        );
    }
    ```

    ### `Random/SBundle.Thread.Custom.hpp`
    Provides multi-threaded scattered bundle generation using a user-provided custom generator.

    This header combines ragged array generation with parallel execution and external
    PRNG control. Each sub-vector has a randomly determined size within [ValueCountMin, ValueCountMax].
    Work distribution uses an atomic work-stealing approach: each worker thread grabs the next
    available sub-vector index dynamically, ensuring balanced load even when sub-vector sizes
    vary significantly.

    `thread_safety` Thread Safety & Generator Strategy
    - The user-provided generator (`Gen`) is accessed ONLY sequentially in the calling thread
    to derive seeds for workers. It is NOT shared across threads during generation.
    - Each worker creates its own LOCAL Twister engine (type deduced from master via
    `std::decay_t<decltype(Gen)>`) seeded deterministically from the master.
    - No mutexes needed; zero contention during the generation phase.

    Note:
    - Sub-vector sizes are pre-calculated sequentially before spawning workers to ensure deterministic size distribution regardless of thread count.

    Warning: Reproducibility depends entirely on the state of 'Gen' passed by the caller. The same seed + same thread count will always produce identical results.

    Usage
    ```cpp
        #include "Random.hpp"
    using namespace Tools;

    // Generate 100 ragged sub-vectors (size 10-50 each) using 8 threads with custom generator
    Twister64 myGen(42);
    auto data = Random::RandomNumsTSBI(myGen, 100, 10, 50, -100, 100, 8);

    // Auto-detect hardware concurrency (Thread = 0)
    Twister32 gen32(12345);
    auto ragged = Random::RandomNumsTSBF(gen32, 50, 5, 20, -1.0f, 1.0f, 2, 0);
    ```

    File synopsis
    ```cpp
    /** Generic **/
    /**
     * @namespace Tools::Random
     * @brief Generic template functions for multi-threaded scattered bundle generation with custom engines.
     */
    namespace Tools::Random {
        /**
         * @brief Generates a ragged 2D vector of random integers using multiple threads and a custom generator.
         *
         * Uses atomic work-stealing for load balancing. Each worker gets a locally-seeded
         * Twister engine matching the type of the provided master generator.
         *
         * @tparam Int The integer type (must be i32 or i64).
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param SubVectorCount Number of sub-vectors. Default: 4.
         * @param ValueCountMin Min elements per sub-vector (inclusive). Default: 10.
         * @param ValueCountMax Max elements per sub-vector (inclusive). Default: 30.
         * @param ValueMin Lower bound of value range (inclusive). Default: -10.
         * @param ValueMax Upper bound of value range (inclusive). Default: 10.
         * @param Thread Number of worker threads. 0 = hardware_concurrency(). Default: 0.
         * @return Bundle<Int> A ragged 2D vector with varying sub-vector sizes.
         * @note If Min > Max or CountMin > CountMax, they are automatically swapped.
         */
        template <Tools::Types::Integer Int = i32>
        Bundle<Int> RandomNumsTSB(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            Int ValueMin = -10, Int ValueMax = 10,
            const idx Thread = 0
        );

        /**
         * @brief Generates a ragged 2D vector of random floating-point numbers using multiple threads and a custom generator.
         *
         * @tparam Real The floating-point type (must be f32, f64, or fld).
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param SubVectorCount Number of sub-vectors. Default: 4.
         * @param ValueCountMin Min elements per sub-vector. Default: 10.
         * @param ValueCountMax Max elements per sub-vector. Default: 30.
         * @param ValueMin Lower bound of value range. Default: -10.
         * @param ValueMax Upper bound of value range. Default: 10.
         * @param Thread Worker count. 0 = hardware_concurrency(). Default: 0.
         * @param Rounding Decimal precision for rounding. Default: 0.
         * @return Bundle<Real> A ragged 2D vector.
         */
        template <Tools::Types::Float Real = f32>
        Bundle<Real> RandomNumsTSB(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            Real ValueMin = -10, Real ValueMax = 10,
            const u32 Rounding = 0,
            const idx Thread = 0
        );
    }

    namespace Tools::Random {
        /*
        * @brief Generates a ragged 2D vector of i32 paralelly and custom twister.
        * @return Bundle<i32>
        */
        inline Bundle<i32> RandomNumsTSBI(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            i32 ValueMin = -10, i32 ValueMax = 10,
            const idx Thread = 0
        );

        /*
        * @brief Generates a ragged 2D vector of i64 paralelly and custom twister.
        * @return Bundle<i64>
        */
        inline Bundle<i64> RandomNumsTSBL(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            i64 ValueMin = -10, i64 ValueMax = 10,
            const idx Thread = 0
        );
    }

    namespace Tools::Random {
        /*
        * @brief Generates a ragged 2D vector of f32 paralelly and custom twister.
        * @return Bundle<f32>
        */
        inline Bundle<f32> RandomNumsTSBF(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            f32 ValueMin = -10, f32 ValueMax = 10,
            const u32 Rounding = 0,
            const idx Thread = 0
        );

        /*
        * @brief Generates a ragged 2D vector of f64 paralelly and custom twister.
        * @return Bundle<f64>
        */
        inline Bundle<f64> RandomNumsTSBD(
            TwisterAny<>& Gen,
            const idx SubVectorCount = 4,
            idx ValueCountMin = 10, idx ValueCountMax = 30,
            f64 ValueMin = -10, f64 ValueMax = 10,
            const u32 Rounding = 0,
            const idx Thread = 0
        );
    }
    ```

    ### Random String

    ### `Random/String.Base.hpp`

    Provides Python-like random character and string generation functions.

    Supports generation from codepoint ranges (like Python's chr()) or from
    predefined character sets. All functions use thread-local preset generators.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    auto c = Random::RandomChar('A', 'Z');          // Random uppercase letter
    auto s = Random::RandomStr("abcdef", 10);        // 10-char hex-like string
    auto w = Random::RandomWStr(L"αβγδ", 5);        // 5 Greek letters
    auto cp = Random::RandomChar<char32_t>(0x4E00, 0x9FFF); // CJK character
    ```

    File synopsis
    ```cpp
    namespace Tools::Random {
        /**
         * @brief Concept for valid character set containers.
         * Matches std::string variants and vectors of character types.
         */
        template <typename T>
        concept CharSet = OneOf<T,
            str, wstr, str16, str32,
            vec<char>, vec<wchar>, vec<char16>, vec<char32>
        >;
    }

    /** Single char **/
    namespace Tools::Random {
        /**
         * @brief Generates a random character within a codepoint range [From, To].
         *
         * Inspired by Python's chr(random.randint(from, to)).
         * Uses TwisterFor<Ret> to select optimal generator for the character width.
         *
         * @tparam Ret The character type to return. Default: char.
         * @param From Lower codepoint bound (inclusive).
         * @param To Upper codepoint bound (inclusive).
         * @return Ret A random character in the specified range.
         * @note If From > To, they are automatically swapped.
         */
        template <Char Ret = char>
        Ret RandomChar(u32 From, u32 To);

        /**
         * @brief Selects a random element from a character set.
         *
         * Similar to Python's random.choice(charset).
         *
         * @tparam Ret The character type to return. Default: char.
         * @param CharSet A string or vector of characters to choose from.
         * @return Ret A randomly selected character. Returns default-constructed
         *         value if CharSet is empty.
         */
        template <Char Ret = char>
        Ret RandomChar(const CharSet auto& CharSet);
    }

    /** Generic String Generation **/
    namespace Tools::Random {
        /**
         * @brief Generates a string of random characters from a codepoint range.
         *
         * @tparam Ret The character type for the resulting string. Default: char.
         * @param From Lower codepoint bound (inclusive).
         * @param To Upper codepoint bound (inclusive).
         * @param Count Number of characters to generate.
         * @return std::basic_string<Ret> The generated string.
         * @note Returns empty string if Count <= 0.
         */
        template <Char Ret = char>
        std::basic_string<Ret> RandomStr(u32 From, u32 To, const idx Count);

        /**
         * @brief Generates a string by randomly selecting characters from a charset.
         *
         * @tparam Ret The character type for the resulting string. Default: char.
         * @param CharSet Source character set (string or vector of chars).
         * @param Count Number of characters to generate.
         * @return std::basic_string<Ret> The generated string.
         * @note Returns empty string if CharSet is empty or Count <= 0.
         */
        template <Char Ret = char>
        std::basic_string<Ret> RandomStr(const CharSet auto& CharSet, const idx Count);
    }

    /** Single range chars **/
    namespace Tools::Random {
        // Generate random char from codepoint range
        inline char GetRandomChar(u32 From, u32 To);

        // Generate random wchar from codepoint range
        inline wchar GetRandomWChar(u32 From, u32 To);
    }

    /** String range chars **/
    namespace Tools::Random {
        // Generate Standard string std::string from given range
        inline str MakeRandomStr(u32 From, u32 To, const idx Count);

        // Generate Wide string std::wstring from given range
        inline wstr MakeRandomWStr(u32 From, u32 To, const idx Count);
    }

    /** String charset **/
    namespace Tools::Random {
        // Generate Standard string std::string from charset (str, vec<char>)
        str MakeRandomStr(const OneOf<vec<char>, str> auto& CharSet, const idx Count);

        // Generate Wide string std::wstring from charset (wstr, vec<wchar>)
        wstr MakeRandomWStr(const OneOf<vec<wchar>, wstr> auto& CharSet, const idx Count);
    }
    ```

    ### `Random/String.Custom.hpp`
    Provides Python-like random character and string generation functions with custom twister engine

    Supports generation from codepoint ranges (like Python's chr()) or from predefined character sets. All functions use thread-local preset generators.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    TwisterAny<> Gen;
    auto c = Random::RandomChar(Gen, 'A', 'Z');          // Random uppercase letter
    auto s = Random::RandomStr(Gen, "abcdef", 10);        // 10-char hex-like string
    auto w = Random::RandomWStr(Gen, L"αβγδ", 5);        // 5 Greek letters
    auto cp = Random::RandomChar<char32_t>(Gen, 0x4E00, 0x9FFF); // CJK character
    ```

    File synopsis
    ```cpp
    /** Generic Single char **/
    namespace Tools::Random {
        /**
         * @brief Generates a random character within a codepoint range [From, To].
         *
         * Inspired by Python's chr(random.randint(from, to)).
         * Uses TwisterFor<Ret> to select optimal generator for the character width.
         *
         * @tparam Ret The character type to return. Default: char.
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param From Lower codepoint bound (inclusive).
         * @param To Upper codepoint bound (inclusive).
         * @return Ret A random character in the specified range.
         * @note If From > To, they are automatically swapped.
         */
        template <Char Ret = char>
        Ret RandomChar(TwisterAny<>& Gen, u32 From, u32 To);

        /**
         * @brief Selects a random element from a character set.
         *
         * Similar to Python's random.choice(charset).
         *
         * @tparam Ret The character type to return. Default: char.
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param CharSet A string or vector of characters to choose from.
         * @return Ret A randomly selected character. Returns default-constructed
         *         value if CharSet is empty.
         */
        template <Char Ret = char>
        Ret RandomChar(TwisterAny<>& Gen, const CharSet auto& CharSet);
    }

    /** Generic String Generation **/
    namespace Tools::Random {
        /**
         * @brief Generates a string of random characters from a codepoint range.
         *
         * @tparam Ret The character type for the resulting string. Default: char.
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param From Lower codepoint bound (inclusive).
         * @param To Upper codepoint bound (inclusive).
         * @param Count Number of characters to generate.
         * @return std::basic_string<Ret> The generated string.
         * @note Returns empty string if Count <= 0.
         */
        template <Char Ret = char>
        std::basic_string<Ret> RandomStr(TwisterAny<>& Gen, u32 From, u32 To, const idx Count);

        /**
         * @brief Generates a string by randomly selecting characters from a charset.
         *
         * @tparam Ret The character type for the resulting string. Default: char.
         * @param Gen Reference to custom Mersenne Twister engine (used for seeding workers).
         * @param CharSet Source character set (string or vector of chars).
         * @param Count Number of characters to generate.
         * @return std::basic_string<Ret> The generated string.
         * @note Returns empty string if CharSet is empty or Count <= 0.
         */
        template <Char Ret = char>
        std::basic_string<Ret> RandomStr(TwisterAny<>& Gen, const CharSet auto& CharSet, const idx Count);
    }

    /** Single range chars with custom Twister **/
    namespace Tools::Random {
        // Generate random char from codepoint range
        inline char GetRandomChar(TwisterAny<>& Gen, u32 From, u32 To);

        // Generate random wchar from codepoint range
        inline wchar GetRandomWChar(TwisterAny<>& Gen, u32 From, u32 To);
    }

    /** String range chars with custom Twister **/
    namespace Tools::Random {
        // Generate Standard string std::string from given range
        inline str MakeRandomStr(TwisterAny<>& Gen, u32 From, u32 To, const idx Count);

        // Generate Wide string std::wstring from given range
        inline wstr MakeRandomWStr(TwisterAny<>& Gen, u32 From, u32 To, const idx Count);
    }

    /** String charset with custom Twister **/
    namespace Tools::Random {
        // Generate Standard string std::string from charset (str, vec<char>) with custom Twister
        str MakeRandomStr(TwisterAny<>& Gen, const OneOf<vec<char>, str> auto& CharSet, const idx Count);

        // Generate Wide string std::wstring from charset (wstr, vec<wchar>) with custom Twister
        wstr MakeRandomWStr(TwisterAny<>& Gen, const OneOf<vec<wchar>, wstr> auto& CharSet, const idx Count);
    }
    ```

    ### Random Choice from Generic Iterables

    ### `Random/Choice.Base.hpp`
    Provides Python-like random selection functions (choice & sample) using preset generators.

    This header implements generic random selection from any contiguous container (`std::vector`, `std::array`, etc.) using thread-local preset generators.

    - **Choice**: Selects a single random element (like Python's `random.choice`).
    - **Sample**: Selects N random elements WITH replacement (like Python's `random.choices`).

    Note: All functions use preset thread-local generators via Single.Base.hpp and Vector.Base.hpp. For custom generator support, see Choice.Custom.hpp.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    vec<i32> data = {10, 20, 30, 40, 50};

    auto item  = Random::Choice(data);           // Single random element
    auto items = Random::Sample(data, 3);        // 3 random elements (with replacement)
    auto sub   = Random::Choice(data, 1, 3);     // Random from index [1..3]
    auto subs  = Random::Sample(data, 1, 3, 5);  // 5 random elements from index [1..3]
    ```

    File synopsis
    ```cpp
    /** Single item **/
    namespace Tools::Random {
        /** Get single random item **/
        /**
         * @brief Selects a single random element from the entire container.
         *
         * Equivalent to Python's `random.choice(data)`.
         * Uses a preset thread-local generator internally.
         *
         * @tparam Data Any contiguous container with `.size()` and `operator[]`
         *                   (e.g., vec<T>, std::vector<T>, std::array<T,N>).
         * @param DataSet Source data container.
         * @return typename Container::value_type A randomly selected element.
         *         Returns default-constructed value if container is empty.
         *
         * @note Time complexity: O(1).
         */
        template <typename Data>
        auto Choice(const Data& DataSet) -> Data::value_type;;

        /** Get single random item from selected range **/
        /**
         * @brief Selects a single random element from a sub-range [From, To].
         *
         * @tparam Data Any contiguous container with `.size()` and `operator[]`.
         * @param DataSet Source data container.
         * @param From Lower bound index (inclusive). Auto-swapped if From > To.
         * @param To Upper bound index (inclusive). Clamped to Data.size()-1.
         * @return typename Container::value_type A randomly selected element from the specified range.
         *         Returns default-constructed value if container is empty.
         * @throws std::out_of_range if From >= Data.size() after validation.
         *
         * @see ValidateChoiceRange in _Common.hpp for range validation details.
         */
        template<typename Data>
        auto Choice(const Data& DataSet, idx From, idx To) -> Data::value_type;;
    }

    /** Many items **/
    namespace Tools::Random {
        /** Get N random items **/
        /**
         * @brief Selects N random elements from the entire container (with replacement).
         *
         * Equivalent to Python's `random.choices(data, k=Count)`.
         * Elements may appear multiple times in the result since sampling is done
         * with replacement.
         *
         * @tparam Data Any contiguous container with `.size()` and `operator[]`.
         * @param DataSet Source data container.
         * @param Count Number of elements to select.
         * @return vec<typename Container::value_type> Vector containing 'Count' randomly
         *         selected elements. Returns empty vector if Data is empty or Count <= 0.
         *
         * @note Time complexity: O(Count). Memory: allocates a new vec of size Count.
         */
        template <typename Data>
        vec<typename Data::value_type> Sample(const Data& DataSet, const idx Count);

        /** Get N random items from selected range **/
        /**
         * @brief Selects N random elements from a sub-range [From, To] (with replacement).
         *
         * @tparam Data Any contiguous container with `.size()` and `operator[]`.
         * @param DataSet Source data container.
         * @param From Lower bound index (inclusive). Auto-swapped if From > To.
         * @param To Upper bound index (inclusive). Clamped to Data.size()-1.
         * @param Count Number of elements to select.
         * @return vec<typename Container::value_type> Vector containing 'Count' randomly
         *         selected elements from the specified range.
         *         Returns empty vector if Data is empty or Count <= 0.
         * @throws std::out_of_range if From >= Data.size() after validation.
         *
         * @see ValidateChoiceRange in _Common.hpp for range validation details.
         */
        template <typename Data>
        vec<typename Data::value_type> Sample(const Data& DataSet, idx From, idx To, const idx Count);
    }
    ```

    ### `Random/Choice.Custom.hpp`

    Provides Python-like random selection functions (choice & sample) using a user-provided generator.

    This header implements generic random selection from any contiguous container
    (`std::vector`, `std::array`, etc.) using a caller-supplied TwisterAny<> engine.

    - "Choice": Selects a single random element (like Python's `random.choice`).
    - "Sample": Selects N random elements WITH replacement (like Python's `random.choices`).

    Note:
    Unlike Base versions, these functions do NOT use internal thread-local generators.
    The caller is responsible for thread safety if sharing the generator across threads.

    Usage
    ```cpp
    #include "Random.hpp"
    using namespace Tools;

    Twister64 gen(42);
    vec<i32> data = {10, 20, 30, 40, 50};

    auto item  = Random::Choice(gen, data);           // Single random element
    auto items = Random::Sample(gen, data, 3);        // 3 random elements (with replacement)
    auto sub   = Random::Choice(gen, data, 1, 3);     // Random from index [1..3]
    auto subs  = Random::Sample(gen, data, 1, 3, 5);  // 5 random elements from index [1..3]
    ```

    File synopsis
    ```cpp
    /** Single item **/
    namespace Tools::Random {
        /** Get single random item **/
        /**
         * @brief Selects a single random element from the entire dataset using a custom generator.
         *
         * Equivalent to Python's `random.choice(data)`.
         *
         * @tparam Data Any contiguous container with `.size()` and `operator[]`
         *              (e.g., vec<T>, std::vector<T>, std::array<T,N>).
         * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
         * @param DataSet Source data container.
         * @return typename Data::value_type A randomly selected element.
         *         Returns default-constructed value if dataset is empty.
         *
         * @note Time complexity: O(1).
         */
        template <typename Data>
        auto Choice(TwisterAny<>& Gen, const Data& DataSet) -> Data::value_type;

        /** Get single random item from selected range **/
        /**
         * @brief Selects a single random element from a sub-range [From, To] using a custom generator.
         *
         * @tparam Data Any contiguous container with `.size()` and `operator[]`.
         * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
         * @param DataSet Source data container.
         * @param From Lower bound index (inclusive). Auto-swapped if From > To.
         * @param To Upper bound index (inclusive). Clamped to DataSet.size()-1.
         * @return typename Data::value_type A randomly selected element from the specified range.
         *         Returns default-constructed value if dataset is empty.
         * @throws std::out_of_range if From >= DataSet.size() after validation.
         *
         * @see ValidateChoiceRange in _Common.hpp for range validation details.
         */
        template<typename Data>
        auto Choice(TwisterAny<>& Gen, const Data& DataSet, idx From, idx To) -> Data::value_type;
    }

    /** Many items **/
    namespace Tools::Random {
        /** Get N random items **/
        /**
         * @brief Selects N random elements from the entire dataset using a custom generator (with replacement).
         *
         * Equivalent to Python's `random.choices(data, k=Count)`.
         * Elements may appear multiple times in the result since sampling is done
         * with replacement.
         *
         * @tparam Data Any contiguous container with `.size()` and `operator[]`.
         * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
         * @param DataSet Source data container.
         * @param Count Number of elements to select.
         * @return vec<typename Data::value_type> Vector containing 'Count' randomly
         *         selected elements. Returns empty vector if dataset is empty or Count <= 0.
         *
         * @note Time complexity: O(Count). Memory: allocates a new vec of size Count.
         */
        template <typename Data>
        vec<typename Data::value_type> Sample(TwisterAny<>& Gen, const Data& DataSet, const idx Count);

        /** Get N random items from selected range **/
        /**
         * @brief Selects N random elements from a sub-range [From, To] using a custom generator (with replacement).
         *
         * @tparam Data Any contiguous container with `.size()` and `operator[]`.
         * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
         * @param DataSet Source data container.
         * @param From Lower bound index (inclusive). Auto-swapped if From > To.
         * @param To Upper bound index (inclusive). Clamped to DataSet.size()-1.
         * @param Count Number of elements to select.
         * @return vec<typename Data::value_type> Vector containing 'Count' randomly
         *         selected elements from the specified range.
         *         Returns empty vector if dataset is empty or Count <= 0.
         * @throws std::out_of_range if From >= DataSet.size() after validation.
         *
         * @see ValidateChoiceRange in _Common.hpp for range validation details.
         */
        template <typename Data>
        vec<typename Data::value_type> Sample(TwisterAny<>& Gen, const Data& DataSet, idx From, idx To, const idx Count);
    }
    ```


- ### Note:
    - I **_don't_** recommend using singles function inside a loop, instead, generate multiple value, then iterate through that container instead

---

# `XIII`. Lib `Tools.RandomHW` (Deprecated)

- Basically same as `Tools.Random`, but with better seeder from `x86` function called `RDSEED` and `RDRAND`, you just add the `HW` on the namespace (`Tools::Random` -> `Tools::RandomHW`), and you can access the functions.
- This library is limited to `x86`, using this on ARM may invalid or maybe cause something bad.
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

# `XIV`. Lib `Tools.Randomizer`

Library used internally for `Tools.Random` and `Tools.RandomHW`, this just contain aliases for some objects.

### API Synopsis
Customizeable Mersenne Twister engine with _**generic** named parameters_.

- ### Out
    Output is unsigned integer type (`u32` or `u64`). All mask/constant parameters derive their type from this.

- ### Tampering recurrance for generation
    - `WordSize` (`w`):  Bits per state element (32 or 64).
    - `Degree` (`n`)  :  Internal state array size.
    - `MidWord` (`m`) :  Feedback XOR offset.
    - `LowerBit` (`r`):  Separation point for lower bits.
    - `XORMask` (`a`) :  Conditional XOR mask. Type follows Out.

- ### Tampering parameter for post processing
    - `ShiftR_U` (`u`):  Tempering right-shift amount.
    - `Mask_U` (`d`)  :  Tempering AND mask after shift `u`. Type follows Out.
    - `ShiftL_S` (`s`):  Tempering left-shift amount for `u`.
    - `Mask_S` (`b`)  :  Tempering AND mask after shift `s`. Type follows Out.
    - `ShiftL_T` (`t`):  Tempering left-shift amount for `s`.
    - `Mask_T` (`c`)  :  Tempering AND mask after shift `t`. Type follows Out.
    - `ShiftR_L` (`l`):  Tempering right-shift amount for `t`.

- ### Initialization parameter
    - `SeedMul` (`f`) :  State initialization multiplier. Type follows Out.

- ### Note:
    - Default values correspond to `MT19937-64`.

- ### Warning:
    - Changing individual parameters produces a **_non-standard_** variant that has **not** been statistically verified. Use provided presets (`Twister64`, `Twister32`) unless you are conducting PRNG research.
    - When `Out=u32`, default mask constants are TRUNCATED from 64-bit `MT19937-64` values and do **not** match standard `MT19937-32` constants. Always use `Twister32` preset for verified 32-bit generation, and use `Twister64` preset for verified 64-bit generation,

### API Synopsis
```cpp
#include <random>
#include "Types.hpp"

namespace Tools::Random {
    using namespace Tools::Types;

    template <UnsignedInt Out>
    consteval Out Get_XORMask();

    template <UnsignedInt Out>
    consteval Out Get_Mask_U();

    template <UnsignedInt Out>
    consteval Out Get_Mask_S();

    template <UnsignedInt Out>
    consteval Out Get_Mask_T();

    template <UnsignedInt Out>
    consteval Out Get_SeedMul();

    template <
        // Output Type, default is u64
        UnsignedInt Out = u64,

        // Tampering recurrance for generation
        idx WordSize = 0x40,                    // w <idx>
        idx Degree   = 0x138,                   // n <idx>
        idx MidWord  = 0x9c,                    // m <idx>
        idx LowerBit = 0x1f,                    // r <idx>
        Out XORMask  = Get_XORMask<Out>(),      // a <Out>

        // Tampering parameter for post processing
        idx ShiftR_U = 0x1d,                    // u <idx>
        Out Mask_U   = Get_Mask_U<Out>(),       // d <Out>
        idx ShiftL_S = 0x11,                    // s <idx>
        Out Mask_S   = Get_Mask_S<Out>(),       // b <Out>
        idx ShiftL_T = 0x25,                    // t <idx>
        Out Mask_T   = Get_Mask_T<Out>(),       // c <Out>
        idx ShiftR_L = 0x2b,                    // l <idx>

        // Initialization parameter
        Out SeedMul  = Get_SeedMul<Out>()       // f <Out>
    >
    using TwisterAny = std::mersenne_twister_engine<
        Out,
        WordSize, Degree, MidWord, LowerBit, XORMask,
        ShiftR_U, Mask_U,
        ShiftL_S, Mask_S,
        ShiftL_T, Mask_T,
        ShiftR_L,
        SeedMul
    >;
}
```

### Commonly used aliases

```cpp
namespace Tools::Random {
    using Twister32 = std::mt19937;
    using Twister64 = std::mt19937_64;
    using RdDevice  = std::random_device;

    template <Integer T>
    using DistInt = std::uniform_int_distribution<T>;

    template <Float T>
    using DistReal = std::uniform_real_distribution<T>;
}
```

---

# `XV`. Lib `Tools.Rounding`

Library to round floating numbers just like Python and common math knowledge.

- API Codes:
    ```cpp
    namespace Tools::Round {
        // Internal helper
        f64 static BankersRound(f64 x);

        // Rounder
        template <Float T>
        T Round(const T value, const i32 digits);
    }
    ```

- ### Example:
    ```cpp
    f64 a = 3.14159;
    f64 b = Tools::Round::Round(a, 2);
    fmt::println("a = {} -> {}", a, b);  // a = 3.14159 -> 3.14
    ```

---

# `XVI`. Lib `Tools.Vector`

Library to do some calculation with vector. Those choise of diction for function names are chosen carefully so it can describe itself without you have to guess and doing unnecessary trial & error.

- ### Per section includes:
    - `Vector/Accumulator.hpp` : For sum, product, and averages
    - `Vector/Find.hpp` : Finding utilities
    - `Vector/Order.hpp` : Data order utilities
    - `Vector/Order.inl.hpp` : Data order utilities inline
    - `Vector/Slice.hpp` : Slice elements
    - `Vector/Slice.inl.hpp` : Slice elements inline

- ### API Codes:
    ```cpp
    // Accumulators
    namespace Tools::Vector {
        template<Numbers T>
        T Sum(const vec<T>& v);     // +

        template<Numbers T>
        T Product(const vec<T>& v); // *

        template <Numbers T>
        T Avg(const vec<T>& v);
    }

    // Find
    namespace Tools::Vector {
        // Binary search
        template<Numbers T>
        T Find_binary(const vec<T>& v, const T Element);

        // Binary search, first index + value, return pair of index and value itself
        template<Numbers T>
        pair<idx, T> FindP_binary(const vec<T>& v, const T Element);

        // Linear search
        template <Numbers T>
        T Find_line(const vec<T>& v, const T Element);

        // Linear search, first index + value, return pair of index and value itself
        template <Numbers T>
        T FindP_line(const vec<T>& v, const T Element);

        // Find an element frequency
        template<Numbers T>
        idx FindFreq(const vec<T>& v, const T Element);

        // Find elements and frequency
        template<Numbers T>
        umap<T, idx> FindNFreq(const vec<T>& v);

        // Extractor
        template<Numbers T>
        vec<T> ExtractUnique(const vec<T>& v);

        // Remove duplicated values
        template<typename T>
        vec<T> RemoveDuplicates(const vec<T>& Data);

        // Remove duplicated values inline
        template<typename T>
        void RemoveDuplicatesInl(vec<T>& Data);
    }

    // Order
    namespace Tools::Vector {
        template <Numbers T>
        vec<T> Sort(const vec<T>& v);

        template <Numbers T>
        vec<T> Shuffle(const vec<T>& v);

        template <Numbers T>
        vec<T> Reverse(const vec<T>& v);

        template <typename T, typename... Args>
        vec<T> Combine(const vec<T>& First, const Args&... Rest);

        template <typename T, typename... Args>
        vec<T> BlendVectors(const vec<T>& First, const Args&... Rest);
    }

    // Order Inline
    namespace Tools::VectorInl {
        template <Numbers T>
        void Sort(vec<T>& v);

        template <Numbers T>
        void Shuffle(vec<T>& v);

        template <Numbers T>
        void Reverse(vec<T>& v);

        template <typename T, typename... Args>
        void Combine(vec<T>& First, const Args&... Rest);

        template <typename T, typename... Args>
        void Blend(vec<T>& First, const Args&... Rest);

    }

    // Slices (return new)
    namespace Tools::Vector {
        template <typename T>
        vec<T> Slice(const vec<T>& vec, idx x, idx y);

        template <typename T>
        vec<T> Slice(const vec<T>& vec, idx n);
    }

    // Slices Inline
    namespace Tools::VectorInl {
        template <typename T>
        void Slice(vec<T>& vec, idx x, idx y);

        template <typename T>
        void Slice(vec<T>& vec, idx n);
    }
    ```

---

# `XVII`. Lib `Tools.PStr`

### What is this?

Lightweight, non-owning string view with Class Template Argument Deduction (CTAD).

Char Character type. Defaults to `char`. Must be one of:
- Native type: `char`, `unsigned char`, `signed char`, `wchar_t`, `char16_t`, or `char32_t`.
- Alias type:  `char`, `u_char`, `s_char`, `wchar`, `char16`, or `char32`.

### Overview
PStr ("Pointer STRing") is a zero-overhead wrapper around a C-style string pointer and its length. Unlike `std::basic_string`, it does NOT own or allocate memory. It provides `std::string`-like ergonomics while maintaining raw pointer efficiency.

### Key Features
- Non-owning: Stores only a pointer + size. No heap allocation.
- CTAD Support: Automatic type deduction from string literals.
- Multi-char-type: Supports char, wchar_t, char16_t, char32_t via constraints.
- Null-safe: Constructor gracefully handles nullptr input.
- Implicit conversions: To `const Char*` and `std::span<const Char>`.
- Explicit ownership transfer: Conversion to `std::basic_string` requires explicit cast   to prevent accidental heap allocations.

### Lifetime Warning
- PStr does NOT copy the underlying string data. The caller MUST ensure that the
pointed-to string outlives the PStr instance. Dangling pointers will cause UB.

### API Synopsis
```cpp
template <typename Char = char>
requires OneOf<Char, char, u_char, s_char, wchar, char16, char32>
class PStr {
    private:
    const Char* StrData;    // <- Pointer to external string data (non-owning)
    idx StrSize;            // <- Cached string length in character count

    public:
    /* ---- CTOR ---- */
    /* @brief Default constructor, creates empty string (nullptr) and 0 size
     */
    PStr() noexcept;

    /* @brief   Constructor from C-string pointer
     * @param   p Pointer to null-terminated string. May be nullptr (results in empty PStr).
     * @note    Length is computed via std::char_traits<Char>::length() to support
     *          all character types (not just char). O(n) operation.
     */
    PStr(const Char* p) noexcept;

    /*
     * @brief       Construct from a pointer and explicit length.
     * @param p     Pointer to string data. Does NOT need to be null-terminated.
     * @param len   Number of characters. No length computation performed. O(1).
     * @note        Use this for substrings, binary data, or when length is already known
     *              to avoid redundant strlen/char_traits::length calls.
     */
    PStr(const Char* p, idx len) noexcept;
    /* ---- End CTOR ---- */

    /* ---- Debug Data ---- */

    /* @brief Returns the number of characters in the string. O(1). */
    idx size() const noexcept;

    /* @brief Returns the number of characters in the string multiplied sizeof current char type. O(1). */
    idx sizeBytes() const noexcept;

    /* @brief Returns true if the string has zero length. O(1). */
    bool empty() const noexcept;

    /*
     * @brief Returns raw pointer to the underlying string data.
     * @return Pointer to first character, or nullptr if empty/default-constructed.
     */
    const Char* data() const noexcept;
    /* ---- End Debug Data ---- */

    /* ---- Getter ---- */
    /*
     * @brief Access character at index without bounds checking.
     * @param i Zero-based character index.
     * @return Const reference to the character.
     * @warning No bounds checking. Caller must ensure i < size().
     */
    const Char& operator[](idx i) const noexcept;
    /* ---- End Getter ---- */

    /* ---- Converter ---- */
    /*
     * @brief Access character at index without bounds checking.
     * @param i Zero-based character index.
     * @return Const reference to the character.
     * @warning No bounds checking. Caller must ensure i < size().
     */
    operator const Char*() const noexcept;          // Implicit conversion to C-string pointer

    /*
     * @brief Implicit conversion to std::span<const Char>.
     * @return Span covering the entire string. Zero-copy, enables ranges/views interop.
     */
    operator span<const Char>() const noexcept;

    /*
     * @brief EXPLICIT conversion to std::basic_string<Char>.
     * @return Owning copy of the string data (heap allocated).
     * @warning This performs a full deep copy. Marked explicit to prevent
     *          accidental allocations in function arguments or assignments.
     */
    explicit operator std::basic_string<Char>() const;
    /* ---- End Converter ---- */
};
```

### Example of usage:
```cpp
#include <Tools/PStr.hpp>

i32 main() {
    // CTAD: type automatically deduced
    PStr a = "Hello";           // PStr<char>
    PStr b = L"Wide Hello";     // PStr<wchar_t>

    // Explicit default type
    PStr<> c = "Default char";  // PStr<char>

    // Substring / binary-safe construction
    PStr d("Hello, World!", 5); // PStr<char>, size=5 → "Hello"

    // Safe observers
    fmt::println("Size: {}, Empty: {}", a.size(), a.empty());

    // Implicit conversion to span (zero-copy)
    std::span<const char> sp = a;

    // Explicit conversion to owning string (heap allocation!)
    std::string owned = scast<std::string>(a);
}

```

---

# `XVIII`. Lib `Tools.Time`

A library (but more liek shortcut) to do some calculations with Time

Target of this library:
- **Simplicity**: No complex template magic - just works
- **Precision**: Uses high-resolution clock by default
- **Type Safety**: Concepts ensure correct usage
- **Modern C++**: Leverages C++20 features
<!-- - **Zero Overhead**: All operations are compile-time checked -->

- ### API Codes
    ```cpp
    namespace Tools::Time {
        // Count given duration (Manual)
        template <Duration T>
        u64 CountDuration(const HClock& Begin, const HClock& End)

        // Sleep for given duration in `Tools::Time::Units::*` unit
        template <Duration T>
        void Sleep(const u64& Dur)

        // Return value + Time elapsed for Executor()
        template <typename Ret>
        struct ExecutorReturn;

        // Proxy class for void, Return type is std::optional
        template <>
        struct ExecutorReturn<void>;

        // Unified result container for timed function execution
        template <typename Ret>
        struct ExecutorData : ExecutorReturn<Ret>;

        // Executes any callable and measures its elapsed time
        template <typename D = Units::us, typename Fn, typename... Args>
        requires std::invocable<Fn, Args...>
        auto Executor(Fn&& Func, Args&&... args);
    }
    ```

- ### Example of usage
    1. Elapsed time
        ```cpp
        #include <fmt/format.h>
        #include <Tools/Types.hpp>
        #include <Tools/Time.hpp>

        void Heavy() {
            u128 result = 0;
            i16 max = GET_MAX(i16);
            for(i16 i = 0; i < max; i++){
                result += i;
            }
            fmt::println("0+1+...+{} = {}", max, result);
        }

        i32 main(){
            HClock Begin = HTimeNow();      // get current time point (before task)
            Heavy();                        // simulate some task
            HClock End = HTimeNow();        // get current time point (after task)
            fmt::println(
                "Heavy took {} μs",
                CountDuration<us>(Begin, End).count()   // get elapsed time
            );
        }
        ```

    2. Run function directly from `Executor`
        ```cpp
        #include "Tools/Time.hpp"

        str RandomStrings() {
            auto Data_az = Random::RandomNumsVI(15, 97, 122);    // a..z
            auto Data_AZ = Random::RandomNumsVI(15, 65, 90);     // A..Z
            auto Data_09 = Random::RandomNumsVI(15, 48, 57);     // 0..9
            auto Data_CS = Random::RandomNumsVI(15, 36, 62);     // Common Symbols

            // Combine Data
            auto Data = CombineVectors(Data_az, Data_AZ, Data_09, Data_CS);

            // Shuffle Data
            RdDevice RdDev;
            std::ranges::shuffle(Data, Twister64(RdDev()));

            auto DataStr = Data | std::views::transform(
                [](const i32& Num) {
                    return scast<char>(Num);
                }
            );

            auto Result = fmt::format(
                "60 random chars: {}",
                fmt::format(
                    fmt::fg(fmt::color::cyan),
                    "{}",
                    fmt::join(DataStr, "")
                )
            );

            return fmt::format("{}", Result);
        }

        i32 main() {
            // Time a void function directly
            auto timeMs = Tools::Time::FunctionElapsed<Tools::Time::Units::ms>([] {
                std::vector<i32> v(1000000);
                std::iota(v.begin(), v.end(), 0);
                std::sort(v.begin(), v.end(), std::greater<i32>());
            });

            fmt::println("Sorting took {} ms", timeMs);
            return 0;
        }
        ```
        out:
        ```
        16:17 .\Random Chars [3ms]
        ~$ clang++ main.cpp -o main.exe -O3 -std=c++26 -lfmt

        17:05 .\Random Chars [6s 250ms]
        ~$ .\main
        Function returned: 60 random chars: 8M6I5*kvPaNo(92CsS5A89;56k4xh1euW10'0G:)3w1o+u3L;CWBx3:1SLp0, Time: 33 μs

        17:05 .\Random Chars [13ms]
        ~$
        ```

    3. Precise Sleep
        ```cpp
        #include "Tools/Time.hpp"
        using namespace Tools;
        int main() {
            fmt::println("Starting...");

            // Sleep for 1.5 seconds
            Time::Sleep<Time::Units::ms>(1500);

            fmt::println("1.5 s (seconds) later...");

            // Sleep for 250 microseconds
            Time::Sleep<Time::us>(250);

            fmt::println("250 μs (microseconds) later...");
            return 0;
        }
        ```

- ### Common mistakes
    1. Time Point vs. Duration Confusion
        - Wrong: `auto dur = HTimeNow();` (this is a time point, not duration)
        - Right: `auto dur = end - begin;` (this gives a duration)
    2. Unit Selection Tips
        - Use `us` (`microseconds`) for most performance measurements
        - Use `ns` (`nanoseconds`) for extremely precise measurements
        - Use `ms` (`milliseconds`) for user-facing timing info
    3. Clock Selection Guide
        - `HTimeNow()`: _**Highest**_ precision, but may vary if system clock changes
        - `TimeNow()`: _**Steady**_ clock, better for measuring intervals (not implemented in current API but available)

# ---
