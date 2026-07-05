# Tools.cpp

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
    |`Tools/Time.hpp`           | Time & Clock utilities                                        |
    |`Tools/Edges.hpp`          | Min/max getter for types                                      |
    |`Tools/Files.hpp`          | I/O files utility                                             |
    |`Tools/FormatNumber.hpp`   | Number formatter                                              |
    |`Tools/IVec.hpp`           | "Improved Vector", custom made container                      |
    |`Tools/Linking.hpp`        | Linking utility to dynamic linked (.dll) using windows API    |
    |`Tools/OS.hpp`             | Some utilities using OS APIs                                  |
    |`Tools/Random.hpp`         | Random Number generator                                       |
    <!-- |`Tools/RandomHW.hpp`       | Hardware-level random generator (x86 only)                    | -->
    |`Tools/Randomizer.hpp`     | Stuff to make random number (used by Random and RandomHW)     |
    |`Tools/Rounding.hpp`       | Python-like rounding utility                                  |
    |`Tools/Style.hpp`          | Text styler for str                                           |
    |`Tools/StyleW.hpp`         | Text styler for wstr                                          |
    |`Tools/Types.hpp`          | Type aliases                                                  |
    |`Tools/Vector.hpp`         | Pyhton-like functions for vector                              |
    |`Tools/VectorSlice.hpp`    | Vector slicing function                                       |
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
    <!-- |`Tools/RandomHW/*`     | Hardware-level random number implementations      | -->
    |`Tools/Types/*`        | Types aliased "concept" + "using" implementations |
    |`Tools/Vector/*`       | Common operations for Vector implementations      |

- ### Folder `Tools/Types/*`
    |               Files              |           What is this?            |
    |----------------------------------|------------------------------------|
    | `/Types/Clock.hpp`         | Clocks & Units aliases             |
    | `/Types/Containers.hpp`    | Containers aliases                 |
    | `/Types/Int.hpp`           | Signed interger aliases            |
    | `/Types/UInt.hpp`          | Unsigned integer aliases           |
    | `/Types/Float.hpp`         | Floating aliases                   |
    | `/Types/Pointer.hpp`       | Pointer aliases (not recommended)  |
    | `/Types/String.hpp`        | String type aliases                |
    | `/Types/Memory.hpp`        | Smart pointer aliases              |

- ### Folder `Tools/IVec/*`
    |             File             |                           What is this?                            |
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
    |`/IVec/Legacy.hpp`            | Legacy functions with vector-like dictions                         |

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
    | `/Random/Common.hpp`   | Internal utility for other files                                     |
    | `/Random/Single.hpp`   | Single number generator                                              |
    | `/Random/Vector.hpp`   | Generator for `std::vector<>`                                        |
    | `/Random/Bundle.hpp`   | Generator for `std::vector<std::vector<>>`                           |
    | `/Random/Sbundle.hpp`  | Just like `bundle`, but every sub-vector's size are different        |
    | `/Random/Vector.thread.hpp`   | Just like `/Random/Vector.hpp` but with multithreading        |
    | `/Random/Bundle.thread.hpp`   | Just like `/Random/Bundle.hpp` but with multithreading        |
    | `/Random/Sbundle.thread.hpp`  | Just like `/Random/SBector.hpp`, but with multithreading      |

- ### Folder `Tools/Random.Basic/*` (Deprecated)
    Just like `Tools.Random`, but `Twister32`&`Twister64` are initialized on single number generator. So `vector`, `bundle`, and `sbundle` are repeated use of `single`, which is not a good practice of use.
    |               File                        |       What is this?      |
    |-------------------------------------------|--------------------------|
    | `/Random.Basic/Random.basic.hpp`          | _Same as `Tools.Random`_ |
    | `/Random.Basic/Random.common.basic.hpp`   | _Same as `Tools.Random.Common`_ |
    | `/Random.Basic/Random.single.basic.hpp`   | _Same as `Tools.Random.Single`_ |
    | `/Random.Basic/Random.vector.basic.hpp`   | _Same as `Tools.Random.Vector`_ |
    | `/Random.Basic/Random.bundle.basic.hpp`   | _Same as `Tools.Random.Bundle`_ |
    | `/Random.Basic/Random.sbundle.basic.hpp`  | _Same as `Tools.Random.SBundle`_ |


- ### Folder `Tools/RandomHW/*` (Deprecated)
    Just like `Tools.Random`, but optimized for x86 command called `RDSEED` and `RDRAND`
    |               File               |                      What is this?                            |
    |----------------------------------|---------------------------------------------------------------|
    | `/RandomHW/Common.hpp`  | Single number HW generator                                    |
    | `/RandomHW/Single.hpp`  | Generator for `std::vector<std::vector<>>`                    |
    | `/RandomHW/Vector.hpp`  | Just like `bundle`, but every sub-vector's size are different |
    | `/RandomHW/Bundle.hpp`  | Internal utility for other files                              |
    | `/RandomHW/SBundle.hpp` | Generator for `std::vector<>`                                 |

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
| `SignedInt`   | `i8`, `i16`, `i32`, `i64`                                                                                                                     |
| `UnsignedInt` | `u8`, `u16`, `u32`, `u64`                                                                                                                     |
| `NtvInteger`  | `i32`, `i64`                                                                                                                                  |
| `NtvFloat`    | `i32`, `i64`                                                                                                                                  |
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
        T GetMin()
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
All description is already in `IVec/Vase.hpp`, descriptions are intentionally made short and simple, so even beginners can understand it.

- ### API  Codes
    ```cpp
    template <typename T>
    class ivec {
        private:

        T* IVecData;

        /** Helper **/
        inline idx Normalize(i64 i) ;
        idx IVecSize;
        idx IVecCapacity;

        public:

        /** Data features **/
        T* data();
        idx size();
        idx capacity();

        /** Init features **/
        // Default constructor
        ivec();
        // Constructors
        ivec(const initl<T> Data);
        ivec(const vec<T>& Data);
        ivec(const ivec& other);
        ivec(ivec&& other);

        // DeConstructors
        ~ivec();

        /** Basic Functions **/
        void reserve(const idx Size);
        void resize(const idx Size, const T& fill = T{});

        void append(const T& Element);
        void append(const T&& Element);
        void append(const ivec<T>& iv);
        void append(const vec<T>& v);

        void extend(const ivec<T>& v);
        void extend(const vec<T>& v);

        idx GetSize() const noexcept;

        /** Getter and setter **/
        T pop(const idx& Index);
        T& operator[](idx Index);

        const T& operator[](idx Index) const;
        ivec<T>& operator=(const ivec& Other);

        /** Advanced **/
        void sliceInl(i64 x, i64 y);
        void sliceIln(i64 n);
        ivec<T> slice(i64 x, i64 y);
        ivec<T> slice(i64 n);

        void clear();
        bool isEmpty();

        void appendFirst(const T& Element);
        void appendAt(const T& Element, idx At);
        bool contains(const T& Element);
        idx find(const T& Element);
        idx findFreq(const T& Element);
        pair<idx, vec<T>> findAll(const T& Element);

        /* Orders */
        ivec<T> shuffle();
        void shuffleInl();

        ivec<T> sort();
        void sortInl();

        ivec<T> rsort();
        void rsortInl();

        ivec<T> reverse();
        void reverseInl();

        ivec<T> erase(T* pos);
        void eraseInl(T* pos);

        ivec<T> erase(T* begin, T* end);
        void eraseInl(T* begin, T* end);

        ivec<T> uniques(idx n = 1);
        void uniquesInl(idx n = 1);

        T popFirst();
        T popLast();

        u64 memory();

        template<typename... Args>
        void emplace(Args&&... args);

        template<typename... Args>
        void emplaceFront(Args&&... args);

        template<typename... Args>
        void emplaceAt(Args&&... args, idx n);

        str fstr();

        /** Iterators **/
        T first();
        T front();
        T* begin();
        const T* cbegin();
        T& refbegin();

        T last();
        T back();
        T* end();
        const T* cend();
        T& refend();

        /** Conversion **/
        vec<T> toVector();
        span<T> toSpan();
        template <idx S>
        arr<T, S> toArray();

        /* Auto Converter to std::span */
        operator span<T>() noexcept;
        operator span<const T>() const noexcept;

        T* toCArr();

        /* Legacy functions */
        void push_back(const T& Element);
        void push_front(const T& Element);

        T at(const idx Index);

        void insert(const ivec<T>& v);
        void insert(const vec<T>& v);
        void insert(const T& Element, idx At);
        void insert(const T* A, const T* B);
    };
    ```

    Yes, the function name can already tell itself what are they doing. But here's the breakdown if you want it anyway

### Breakdown
Let's start with the private functions

1. `IVec_Data` Current array
2. `IVec_Size` Current size
3. `IVec_Capacity` Current capacity
4. `Normalize` Normalizer `i64` to `idx`

And then public, we have a lot of sections

### 1. Data utility
1. `data()` returns current array (raw, C-Style array)
2. `size()` returns current size
3. `capacity()` return current capacity

    > ### Warning
    > If you think size is the same as capacity, then no, size is current element count, capacity is current element count + reserved slots. So size and capacity will not alway be the same.


### 2. Constructors

4. `ivec();` The default constructor with nothing in it
5. (a) `ivec(const initl<T> Data);` Constructor to make `ivec a{1.68, 2.71, 3.14}` possible
5. (b) `ivec(const span<const T>& Data);` Construct with `std::span` elegantly
6. `ivec(const vec<T>& Data);` Constructor to auto convert `std::vector` to `Tools::ivec`
7. `ivec(const ivec& other);` Same as 3rd constructor but used to copy other ivec
8. `ivec(ivec&& other);` Same as 4th but you write it inplace

### 3. Destructor

9. `~ivec()` to remove everything

### 4. Basic functions

10. `void reserve(const idx Size);` Reserve slots, this can reduce runtime because it calls the `syscall` once
11. `void resize(const idx Size, const T& fill = T{});` Resize `size` and fill it with 1 specified value
12. `void append(const T& Element);` Push elements to back
13. `void append(const T&& Element);` Push elements to back by rvalue
14. `void append(const ivec<T>& iv);` Append `ivec` to current `ivec`, example `ivec{1, 2, 3}.append(ivec{4, 5, 6})` will result `ivec a{1, 2, 3, ivec{4, 5, 6}}`
15. `void append(const vec<T>& v);` Append `vec` to current `ivec`, example is same as 11th

16. `void extend(const ivec<T>& v);` Extend with `ivec` to current `ivec`, example `ivec a{1, 2, 3}.extend(ivec{4, 5, 6})` will result `ivec a{1, 2, 3, 4, 5, 6}`
17. `void extend(const vec<T>& v);` Extend with `vec` to current `ivec`, example is the same as 13th
18. `idx GetSize() const noexcept;` Basically same as `std::vector<T>::size()` and `Tools::ivec<T>::size()`

### 5. Common Advanced functions

19. `T pop(const idx& Index);` To get and remove immediately selected index
20. `T& operator[](idx Index);` To get selected index with the `[]` thing
21. `const T& operator[](idx Index) const;` Same as before, but make it constant
22. `ivec<T>& operator=(const ivec& Other);` Setter to selected index


### 6. Advanced functions

>
> ### Note
> Default function is return new, suffix -`Inl` indicates inline
>

23. `void sliceInl(i64 x, i64 y);` Slice inlinely from range `x..y`
24. `void sliceInl(i64 n);` Slice `0..n` or `n..Size`. Positive will iterate from 0 to `n` (forward), negative will iterate from `ivec_size` to `n` (backward)
25. `ivec<T> slice(i64 x, i64 y);` Same as 20, but return new ivec
26. `ivec<T> slice(i64 n);` Same as 21, but return new ivec
27. `void clear();` To nuke everything inside
28. `bool isEmpty();` Check is this thing is empty or no

29. `void appendFirst(const T& Element);` Append an element at 1st index
30. `void appendAt(const T& Element, idx At);` Append an element at specified index
31. `bool contains(const T& Element);` Check if this ivec contains specific Element
32. `idx find(const T& Element);` Find index of an element
33. `idx findFreq(const T& Element);` Find frequency of selected element
34. `pair<idx, vec<T>> findAll(const T& Element);` Find an element and check in which indexes appeared

### 7. Orders & Find

35. `ivec<T> shuffle();` Shuffle current ivec, then return new
36. `void shuffleInl();` Shuffle current ivec inlinely
37. `ivec<T> sort();` Sort current ivec, then return new
38. `void sortInl();` Sort current ivec inlinely
39. `ivec<T> rsort();` Sort, then reverse current ivec, then return new
40. `void rsortInl();` Sort, then reverse current ivec inlinely
41. `ivec<T> reverse();` Reverse current ivec, then return new
42. `void reverseInl();` Reverse current ivec inlinely
43. `ivec<T> erase(idx pos);` (*) Erase specific position (unlike pop, this one is not return selected index(es)), then return new
44. `void eraseInl(idx pos);` (*) Erase specific position inlinely
45. `ivec<T> erase(idx begin, idx end);` (*) Erase specific range, then return new
46. `void eraseInl(idx begin, idx end);` (*) Erase specific range inlinely
47. `ivec<T> uniques(idx n = 1);` Make elements appeared maximum `n` times, then return new; `n=1` means everything only appear once
48. `void uniquesInl(idx n = 1);` Make elements appeared maximum `n` times inlinely
48. `T popFirst();` Get index 0 and remove immediately
50. `T popLast();` Get index last and remove immidiately
51. `u64 memory();` Get total memory used for current array
52. `void emplace(Args&&... args);` Build object in array on-fly at last index
53. `void emplaceFront(Args&&... args);` Build object in array on-fly at first index
54. `void emplaceAt(Args&&... args, idx n);` Build object in array on-fly at specific index

    > ### Note*
    > `slice` and `erase` might be simmilar, but it's different! Example:
    > ```cpp
    > ivec<i32> a{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    >
    > // Keep only a[1..4], delete everything else
    > ivec<i32> a_s = a.slice(1, 4);
    > fmt::println("{}", a_s);  // [2, 3, 4, 5]
    >
    > // Delete only a[1..4], keep everything else
    > ivec<i32> a_e = a.erase(1, 5);
    > fmt::println("{}", a_e);  // [1, 6, 7, 8, 9, 10]
    > ```
    > ㅤ

### 8. Conversion
55. `str fstr();`: Formatted STRing, make everything everything inside and (almost) every data type into a string
55. `vec<T> toVector();`: `ivec` to `std::vector` converter
57. `span<T> toSpan();` or `operator std::span()`: `ivec` to `std::span` converter
58. `arr<T, S> toArray();`: `ivec` to `std::array` converter
59. `T* toCArr();`: `ivec` to raw pointer converter

### 9. Iterators
60. `T first();` First index getter
61. `T first(idx n);` First + n index getter
62. `T front();` First index getter (legacy choise of diction)
63. `T* begin();` First index iterator
64. `const T* cbegin` Constant first index iterator
65. `T& refbegin();` Reference of first index iterator

66. `T last();` Last index getter
67. `T last(idx n);` Last - n index getter
68. `T back();` Last index getter (legacy choise of diction)
69. `T* end();` Last index iterator
70. `const T* cend();` Constant last index iterator
71. `T& refend();` Reference of last index iterator

### 10. Legacies

This one is to make renaming `vec` to `ivec` possible without breaking current `vec` codes, but only some, not everything.

72. `void push_back(const T& Element);` The same as `std::vector<T>::push_back`
73. `void push_front(const T& Element);` Not standard from STL, but STL-isch choise of diction
74. `T at(const idx Index);` Specific index getter, I have absolutely zero why `.at` even exist, but oké
75. `ivec<T> erase(T* pos);` Specific index eraser with iterator, then return new
76. `void eraseInl(T* pos);` Specific index eraser with iterator inlinely
77. `ivec<T> erase(T* begin, T* end);` Range eraser with iterator, then return new
78. `void eraseInl(T* begin, T* end);` Range erasee with iterator inlinely
79. `void insert(const ivec<T>& v);` Extender like from `std::range::insert` specificly for `ivec`
80. `void insert(const vec<T>& v);` Extender like from `std::range::insert` specificly for `std::vector`
81. `void insert(const T& Element, idx At);` Append to specific index
82. `void insert(const T* A, const T* B);` Extender like from `std::vector<T>::insert` with iterators, yes, you can extend current container from other containers

    > ### Note
    > `erase` functions from `advanced` are the wrapper from `legacy` \
    > ㅤ

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

    ```cpp
    /* Singles */

    // Generic
    namespace Tools::Random {
        template <typename Int>
        requires OneOf<Int, i32, i64>
        inline Int RandomNum(
            Int Min = -100,
            Int Max = 100
        );

        template <typename Real>
        requires OneOf<Real, f32, f64>
        inline Real RandomNum(
            Real Min = -2.71,
            Real Max = 2.71,
            const i32 Rounding = 0
        );
    }

    // All
    namespace Tools::Random {
        inline i32 RandomNumI(
            i32 Min = 0,            // Minimum value
            i32 Max = 9             // Maximum value
        );
        inline i64 RandomNumL(
            i64 Min = -100,
            i64 Max = 100
        );

        // Floats
        inline f32 RandomNumF(
            f32 Min = -2.71,
            f32 Max = 2.71, const i32 Rounding = 0
        );

        inline f64 RandomNumD(
            f64 Min = -3.14,
            f64 Max = 3.14, const i32 Rounding = 0
        );
    }
    ```

    ```cpp
    /* Vector */

    // Generic
    namespace Tools::Random {
        template <typename Int>
        requires OneOf<Int, i32, i64>
        vec<Int> RandomNumsVInt(
            const idx Count = 10,       // Element count
            Int Min = -10,              // Minimum value
            Int Max = 10                // Maximum value
        );

        template <typename Real>
        requires OneOf<Real, f32, f64>
        vec<Real> RandomNumsVReal(
            const idx Count = 10,
            Real Min = -2.71,
            Real Max = 2.71,
            const i32 Rounding = 0
        );
    }

    // Integers
    namespace Tools::Random {
        vec<i64> RandomNumsVL(
            idx Count = 64,
            i64 Min = 0,
            i64 Max = 10
        );

        vec<i64> RandomNumsVL(
            const idx Count = 10,
            i64 Min = -100,
            i64 Max = 100
        );
    }

    // Floats
    namespace Tools::Random {
        vec<f32> RandomNumsVF(
            const idx Count = 10,
            f32 Min = -2.71,
            f32 Max = 2.71,
            const i32 Rounding = 0
        );

        vec<f64> RandomNumsVD(
            const idx Count = 10,
            f64 Min = -3.14,
            f64 Max = 3.14,
            const i32 Rounding = 0
        );
    }
    ```

    ```cpp
    /* Vector Thread */

    // Generic
    namespace Tools::Random {
        template <typename Int>
        requires OneOf<Int, i32, i64>
        vec<Int> RandomNumsTV(
            const idx Count = 10,       // Element count
            Int Min = -10,              // Max value
            Int Max = 10,               // Min value
            const idx Threads = 4       // Thread count
        );

        template <typename Real>
        requires OneOf<Real, f32, f64>
        vec<Real> RandomNumsTV(
            const idx Count = 10,
            Real Min = -10,
            Real Max = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );
    }

    // Integer
    namespace Tools::Random {
        vec<i32> RandomNumsTVI(
            const idx Count = 10,
            i32 Min = -10,
            i32 Max = 10,
            const idx Threads = 4
        );

        vec<i64> RandomNumsTVL(
            const idx Count = 10,
            i64 Min = -10,
            i64 Max = 10,
            const idx Threads = 4
        );
    }

    // Float
    namespace Tools::Random {
        vec<f32> RandomNumsTVF(
            const idx Count = 10,
            f32 Min = -10,
            f32 Max = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );

        vec<f64> RandomNumsTVD(
            const idx Count = 10,
            f64 Min = -10,
            f64 Max = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );
    }

    ```

    ```cpp
    /* Bundles */

    // Generic
    namespace Tools::Random {
        template <typename Int>
        requires OneOf<Int, i32, i64>
        vec<vec<Int>> RandomNumsB(
            const idx SubVectorCount = 64,  // How many sub-vectors
            const idx Count = 256,          // Elements for each sub-vectors
            Int Min = -100,                 // Minimum value
            Int Max = 100                   // Maximum value
        );

        template <typename Real>
        requires OneOf<Real, f32, f64>
        vec<vec<Real>> RandomNumsB(
            const idx SubVectorCount = 64,
            const idx Count = 256,
            Real Min = -3.14,
            Real Max = 3.14,
            const i32 Rounding = 0
        );
    }

    // Integers
    namespace Tools::Random {
        vec<vec<i32>> RandomNumsBI(
            const idx SubVectorCount = 64,
            const idx Count = 256,
            i32 Min = -10,
            i32 Max = 10
        );

        vec<vec<i64>> RandomNumsBL(
            const idx SubVectorCount = 64,
            const idx Count = 256,
            i64 Min = -100,
            i64 Max = 100
        );
    }

    // Floats
    namespace Tools::Random {
        vec<vec<f32>> RandomNumsBF(
            const idx SubVectorCount = 64,
            const idx Count = 256,
            f32 Min = -2.71,
            f32 Max = 2.71,
            const i32 Rounding = 0
        );

        vec<vec<f64>> RandomNumsBD(
            const idx SubVectorCount = 64,
            const idx Count = 256,
            f64 Min = -3.14,
            f64 Max = 3.14,
            const i32 Rounding = 0
        );
    }
    ```

    ```cpp
    /* Bundle Thread */

    // Generic
    namespace Tools::Random {
        template <typename Int>
        requires OneOf<Int, i32, i64>
        vec<vec<Int>> RandomNumsTB(
            const idx SubVectorCount = 4,   // How manu sub-vectors
            const idx Count = 10,           // Elements for each sub-vectors
            Int Min = -10,                  // Max value
            Int Max = 10,                   // Min value
            const idx Threads = 4           // Thread count
        );

        template <typename Real>
        requires OneOf<Real, f32, f64>
        vec<vec<Real>> RandomNumsTB(
            const idx SubVectorCount = 4,
            const idx Count = 10,
            Real Min = -10,
            Real Max = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );
    }

    // Integer
    namespace Tools::Random {
        vec<vec<i32>> RandomNumsTBI(
            const idx SubVectorCount = 4,
            const idx Count = 10,
            i32 Min = -10,
            i32 Max = 10,
            const idx Threads = 4
        );

        vec<vec<i64>> RandomNumsTBL(
            const idx SubVectorCount = 4,
            const idx Count = 10,
            i64 Min = -10,
            i64 Max = 10,
            const idx Threads = 4
        );
    }

    // Float
    namespace Tools::Random {
        vec<vec<f32>> RandomNumsTBF(
            const idx SubVectorCount = 4,
            const idx Count = 10,
            f32 Min = -10,
            f32 Max = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );

        vec<vec<f64>> RandomNumsTBD(
            const idx SubVectorCount = 4,
            const idx Count = 10,
            f64 Min = -10,
            f64 Max = 10,
            const idx Threads = 4,
            const u32 Rounding = 0
        );
    }
    ```

    ```cpp
    /* Scattered Bundle */

    // Generic
    namespace Tools::Random {
        template <typename Int>
        requires OneOf<Int, i32, i64>
        vec<vec<Int>> RandomNumsSB(
            const idx SubVectorCount = 64,  // How many sub-vectors
            idx CountMin = 25,              // Max element count for each sub vectors
            idx CountMax = 50,              // Min element count ...
            Int Min = -100,                 // Max value
            Int Max = 100                   // Min value
        );

        template <typename Real>
        requires OneOf<Real, f32, f64>
        vec<vec<Real>> RandomNumsSB(
            const idx SubVectorCount = 64,
            idx CountMin = 25,
            idx CountMax = 50,
            Real Min = -3.14,
            Real Max = 3.14,
            const i32 Rounding = 0
        );
    }

    // Integer
    namespace Tools::Random {
        vec<vec<i32>> RandomNumsSBI(
            const idx SubVectorCount = 64,
            idx CountMin = 25,
            idx CountMax = 50,
            i32 Min = -10,
            i32 Max = 10
        );

        vec<vec<i64>> RandomNumsSBL(
            const idx SubVectorCount = 64,
            idx CountMin = 25,
            idx CountMax = 50,
            i64 Min = -100,
            i64 Max = 100
        );
    }

    // Floats
    namespace Tools::Random {
        vec<vec<f32>> RandomNumsSBF(
            const idx SubVectorCount = 64,
            idx CountMin = 25,
            idx CountMax = 50,
            f32 Min = -2.71,
            f32 Max = 2.71,
            const i32 Rounding = 0
        );

        vec<vec<f64>> RandomNumsSBD(
            const idx SubVectorCount = 64,
            idx CountMin = 25,
            idx CountMax = 50,
            f64 Min = -3.14,
            f64 Max = 3.14,
            const i32 Rounding = 0
        );
    }
    ```

    ```cpp
    /* Random Strings */
    namespace Tools::Random {
        /* Pick random char from stirng OR container */
        template <typename ReturnType>
        requires OneOf<ReturnType, char, wchar, str, wstr>
        ReturnType RandomCharPicker(const OneOf<str, wstr, vec<str>, vec<wstr>> auto& Text);

        /* Generate random string from given charset
         * from complete string (std::string, std::wstring),
         * or container (std::vector<std::string/std::wstring>)
         */
        template <typename CharSetType>
        requires OneOf<std::decay_t<CharSetType>, str, vec<str>>
        str RandomStrGenerator(const CharSetType& CharSet, idx Count);

        /* Overload for std::wstring */
        template <typename CharSetType>
        requires OneOf<std::decay_t<CharSetType>, wstr, vec<wstr>>
        wstr RandomStrGeneratorW(const CharSetType& CharSet, idx Count);
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

- Code
    ```cpp
    #include <random>
    #include "Types.hpp"

    using Twister32 = std::mt19937;
    using Twister64 = std::mt19937_64;
    using RdDevice  = std::random_device;

    template <Integer T>
    using DistInt = std::uniform_int_distribution<T>;

    template <Float T>
    using DistReal = std::uniform_real_distribution<T>;
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

API Synopsis
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
