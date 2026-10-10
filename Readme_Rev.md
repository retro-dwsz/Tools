> # _[UNDER CONSTRUCTION]_

# Retro Dave's Tools "RDTools" (`rdt::`)

> ### **_"Minimalist API, Maximum Utility."_**
> A header-only C++23/26 library designed for expressive, safe, and concise code.

### What is this?
> A simple fully _header-only_ lib for C++ to make your code sesion _fells_ fun and kinda more Python-y feel. This lib in inteded for simple libs and everyday coding, not for big/enteprise project on that actually matter on you life or money.
> 
> This project is **_entirely_** in C++, if you see like LLVM IR and Assembly on the github page, don't worry, it's just a testings and WON'T be included in instalation package, also those are generated with `clang++ -S -emit-llvm` and `clang++ -S`.

### Disclaimer
> I have to admit, like 80% of those codes are AI-generated, if you find any flaw, please tell me on issues or you can submit you code on issues or you can fork on your own :D

---

## Modules List

| Category                      | #  | Module       | Namespace           | Physical File              |
|:------------------------------|:---|:-------------|:--------------------|:---------------------------|
| **I. Core**                   | 1  | Types        | `rdt::`  (Global)   | `RDTools/Types.hpp`        |
|                               | 2  | SafetyNet    | `rdt::snp`          | `RDTools/SafetyNet.hpp`    |
|                               | 3  | Casting      | `rdt::Cast`         | `RDTools/Casting.hpp`      |
|                               | 4  | Edges        | `rdt::Edge`         | `RDTools/Edges.hpp`        |
|                               | 5  | PStr         | `rdt::PStr`         | `RDTools/PStr.hpp`         |
| **II. Container & Algorithm** | 6  | IVec         | `rdt::ivec`         | `RDTools/IVec.hpp`         |
|                               | 7  | Vector       | `rdt::Vector`       | `RDTools/Vector.hpp`       |
|                               | 8  | Rounding     | `rdt::Round`        | `RDTools/Rounding.hpp`     |
| **III. Randomization**        | 9  | Random       | `rdt::Random`       | `RDTools/Random.hpp`       |
|                               | 10 | TrueRandom   | `rdt::TrueRandom`   | `RDTools/TrueRandom.hpp`   |
|                               | 11 | Randomizer   | `rdt::Randomizer`   | `RDTools/Randomizer.hpp`   |
| **IV. System & Platform**     | 12 | OS           | `rdt::OS`           | `RDTools/OS.hpp`           |
|                               | 13 | Files        | `rdt::Files`        | `RDTools/Files.hpp`        |
|                               | 14 | Linking      | `rdt::Link`         | `RDTools/Linking.hpp`      |
|                               | 15 | Time         | `rdt::Time`         | `RDTools/Time.hpp`         |
| **V. Output & Presentation**  | 16 | FormatNumber | `rdt::FormatNumber` | `RDTools/FormatNumber.hpp` |
|                               | 17 | PrintHeader  | `rdt::PrintHeader`  | `RDTools/PrintHeader.hpp`  |
|                               | 18 | Style        | `rdt::Style`        | `RDTools/Style.hpp`        |
|                               | 19 | StyleW       | `rdt::StyleW`       | `RDTools/StyleW.hpp`       |
| **VI. Debug**                 | 20 | FeatureCheck | `rdt::Feature`      | `RDTools/FeatureCheck.hpp` |
|                               | 21 | Version      | `rdt::Version`      | `RDTools/Version.hpp`      |

---

## I. Core

### 1. Types (Global)
- ### **What is this?**  
  Types aliasing to make you less typing just for data types

- ### **Files**
  * RDTools/Types.hpp

  * RDTools/Common.hpp
  * RDTools/Base.hpp

  * RDTools/Types/Int.hpp
  * RDTools/Types/Int.Fast.hpp
  * RDTools/Types/Int.Atomic.hpp
  * RDTools/Types/Int.Atomic.Fast.hpp
  * RDTools/Types/Int.Least.hpp
  * RDTools/Types/Int.Atomic.Least.hpp

  * RDTools/Types/UInt.hpp
  * RDTools/Types/UInt.Fast.hpp
  * RDTools/Types/UInt.Atomic.hpp
  * RDTools/Types/UInt.Atomic.Fast.hpp
  * RDTools/Types/UInt.Least.hpp
  * RDTools/Types/UInt.Atomic.Least.hpp
  
  * RDTools/Types/Float.hpp
  
  * RDTools/Types/String.hpp
  * RDTools/Types/Containers.hpp
  * RDTools/Types/Pointer.hpp
  * RDTools/Types/Memory.hpp
  * RDTools/Types/Time.hpp

- ### **API**
  ### Integer, Unsiged Integer, and Floating
  | Original | Aliased |  Original | Aliased |   Original   | Aliased |
      |----------|---------|-----------|---------|--------------|---------|
  |`int8_t`  | `i8`    | `uint8_t` | `u8`    |`float`       | `f32`   |
  |`int16_t` | `i16`   | `uint16_t`| `u16`   |`double`      | `f64`   |
  |`int32_t` | `i32`   | `uint32_t`| `u32`   |`long double` | `fld`   |
  |`int64_t` | `i64`   | `uint64_t`| `u64`   |              |         |
  |`ssize_t` | `sidx`  | `size_t`  | `idx`   |              |         |

  ### Fast, Atomic Integer and Unsigned Integer
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

  ### AtomicFast Integer and Unsigned Integer
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

  ### "At least" and "Atomic At least" Integer and Unsigned Integer
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
  
  > ### Type case warning:
  > `pstr<T>` is an alias for C-Style string (`char/wchar/char16/char32*`), and `PStr` is struct for simple C-String types
  
  ### C++ Value Containers
  |          Original          |    Aliased    |
  |----------------------------|---------------|
  | `std::vector<T>`           | `vec<T>`      |
  | `vec<vec<T>>`              | `bundle<T>`   |
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
  
  ### Another type alias that you and I may not use often
  
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
  
- **Usage Example**  
  This will check given bounds, and swap them if `min` is bigger than `max`
    ```c++
    // Accept only valid number types (not str, pstr, ptr, etc etc)
    template <Numbers T>
    void CheckRange(T& min, T& max) {
        if (max < min) std::swap(min, max);
    }
    ```


### 2. SafetyNet (`rdt::snp`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 3. Casting (`rdt::Cast`)
- ### **What is this?**  
  This is just aliases for `static_`, `dynamic_`, `const_`, `reintepret_`, and `any_` cast, because using 2 words for me looks like too verbose.

- ### **Files**
  * RDTools/Casting.hpp

- ### **API**
  ```c++
  namespace rdt::Cast {
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

- ### **Usage Example**

  #### 1. `scast<T>(value)` alias for `static_cast`.

  - #### Advantage:
    - Compile time conversion
    - Can be evaluated on compile-time if you use constexpr
    - Zero runtime overhead

  - #### Used for:
    - Numeric conversion
    - Upcast/downcast non-polymorphic

  #### 2. `dcast<T>(value)` alias for `dynamic_cast`.

  - #### Advantage:
    - Runtime castings
  - #### Used for:
    - ONLY for pointers and references
    - Needs RTTI
    - Runtime-only (not constexpr compatible)
      Used for:
    - Downcast polymorphic which needs runtime checking

  #### 3. `ccast<T>(value)` alias for `const_cast`.

  - #### Used for:
    - Deletes/adds qualifier "const"
    - Not changing base type

  - #### WARNING:
    - Deleting const from absolute const object will cause Undefined Behaviour

  #### 4. `rcast<T>(value)` alias for `reinterpret_cast`.

  - #### Advantage:
    - Bit-level cast
    - Most dangerous
    - Always for last resort

  - #### Use ONLY if:
    - You don't know memory layout
    - No other safe alternatives

  #### 5. `acast<T>(std::any)` alias for `std::any_cast`.

  - #### Advantage:
    - Runtime checked
    - Will throw std::bad_any_cast if type is wrong/bad

  #### 6. `cast<T>(value)` "One-door" casting API.

  - #### Philosophy:
    - Default to static_cast
    - Not trying to be smart
      Note:
    - This Function is intended to be simple
    - If you need RTTI / const removal / bit cast, use `scast` / `dcast` / `ccast` / `rcast`


### 4. Edges (`rdt::Edge`)
- ### **What is this?**
  Simple wrapper to std::numeric_limits<T>::min/max. Should've named "limits", but I pick "Edges" just because people won't confuse `<limits>` and `RDTools.Limits`, so `RDTools.Edges` were chosen.

- ### **Files**
  * RDTools/Edges.hpp

- ### **API**
  ```c++
  #include <limits>

  // Macro shortcut
  #define RDT_GET_MAX(T) std::numeric_limits<T>::max()
  #define RDT_GET_MIN(T) std::numeric_limits<T>::min()

  namespace rdt::Edge {
      template <typename T>
      T GetMax();

      template <typename T>
      T GetMin();
  }
  ```

- ### **Usage Example**
  ```c++
  // Get max value of i32
  constexpr i32 max_i32 = rdt::Edge::GetMax<i32>();
  std::println(
    "max_i32 = {}, {} Bytes at {}",
    max_i32, sizeof(i32), &max_i32
  );
  // max_i32 = 2147483647, 4 Bytes at 0x1234abcd
  ```

### 5. PStr (`rdt::PStr`)
- ### **What is this?**
  PStr ("Pointer STRing") is a zero-overhead wrapper around a C-style string pointer and its length. Unlike `std::basic_string`, it does NOT own or allocate memory. It provides `std::string`-like ergonomics while maintaining raw pointer efficiency.
  Lightweight, non-owning string view with Class Template Argument Deduction (CTAD).

  Char Character type. Defaults to `char`. Must be one of:
  - Native type: `char`, `unsigned char`, `signed char`, `wchar_t`, `char16_t`, or `char32_t`.
  - Alias type:  `char`, `u_char`, `s_char`, `wchar`, `char16`, or `char32`.

- ### Key Features
  - Non-owning: Stores only a pointer + size. No heap allocation.
  - CTAD Support: Automatic type deduction from string literals.
  - Multi-char-type: Supports char, wchar_t, char16_t, char32_t via constraints.
  - Null-safe: Constructor gracefully handles nullptr input.
  - Implicit conversions: To `const Char*` and `std::span<const Char>`.
  - Explicit ownership transfer: Conversion to `std::basic_string` requires explicit cast   to prevent accidental heap allocations.

- ### Lifetime Warning
  - PStr does NOT copy the underlying string data. The caller MUST ensure that the pointed-to string outlives the PStr instance. Dangling pointers will cause UB.

- ### **Files**
  * PStr.hpp
  * PStr/Base.Class.hpp
  * PStr/Init.Ctor.hpp
  * PStr/Core.Getter.hpp
  * Pstr/Core.Converter.hpp
  * PStr/Core.Debug.hpp

- ### **API**
  ```c++
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

- ### **Usage Example**
  ```c++
  #include <fmt/format.h>
  #include <fmt/ranges.h>
  
  #include <RDTools/Types.hpp>
  #include <RDTools/Random.hpp>
  #include <RDTools/PStr.hpp>
  
  i32 main() {
  // ctor from const char*
  const rdt::PStr tx("Hello, world!");
  fmt::println("tx = {}", tx);
  
      // get string length
      const auto tx_size = tx.size();
      fmt::println("tx_size       = {}", tx_size);   // 13 chars
  
      // get string size in bytes
      const auto tx_sizeb = tx.sizeBytes();
      fmt::println("tx_sizeb      = {}", tx_sizeb);   // 13 * 8 = 124 Bytes
  
      // check if this thing empty?
      const auto tx_isEmpty = tx.empty(); // or maybe .isEmpty() ?
      fmt::println("tx_isEmpty    = {}", tx_isEmpty); // false
      
      // get string data
      const auto tx_ptr = tx.data();
      fmt::println("tx_ptr        = {}", tx_ptr); // H
      
      // get specific char from index
      const auto tx_charidx = rdt::Random::RandomNum<idx>(0, tx_size-1);
      const auto tx_char = tx[tx_charidx];
      fmt::println("tx_char[{}]   = {}", tx_charidx, tx_char);
      
      // get specific index with safety
      const auto tx_charidx_at = tx_charidx+1;
      try {
        const auto tx_char_at = tx[tx_charidx_at];
        fmt::println("tx_char_at {}   = {}", tx_charidx_at, tx_char_at);
      } catch(const std::exception& e) {
          fmt::println("Error: {}", e.what());
      }
      
      // convert to std::string
      const auto tx_str = str(tx_ptr, tx_ptr + tx_size);
      fmt::println("tx_str = {}", tx_str);
  }
  ```

---

## II. Container & Algorithm

### 6. IVec (`rdt::ivec`)
- ### **What is this?**
  IVec or "*I*mproved *Vec*tor" is a container just like `std::vector`, but with better choice of diction, for example: `push_back` is now `append` (just like Python).
  All description is already in `IVec/*.hpp`, descriptions are intentionally made short and simple, so even beginners can understand it.

- ### **Files**  
  * IVec.hpp
  * IVec/Base.Class.hpp
  * IVec/Init.Ctor.hpp
  * IVec/Init.Dtor.hpp
  * IVec/Core.Data.hpp
  * IVec/Core.State.hpp
  * IVec/Core.Resize.hpp
  * IVec/Core.Append.hpp
  * IVec/Core.Append.Idx
  * IVec/Core.Emplace.hpp
  * IVec/Core.Emplace.Idx
  * IVec/Core.Extend.hpp
  * IVec/Access.Getset.hpp
  * IVec/Access.Pop.hpp
  * IVec/Access.Elements.hpp
  * IVec/Access.Iter.hpp
  * IVec/Access.Ref.hpp
  * IVec/Opr.Dunder.hpp
  * IVec/Items.Orders.hpp
  * IVec/Items.Query.hpp
  * IVec/Items.Find.hpp
  * IVec/Items.Slice.hpp
  * IVec/Items.Erase.Idx.hpp
  * IVec/Items.Erase.Ptr.hpp
  * IVec/Functional.hpp
  * IVec/Converter.hpp
  * IVec/Converter.Opr.hpp
  * IVec/Legacy.hpp

- ### **API**
  - #### IVec.hpp
    Main entry point for the `rdt::ivec<T>` container library.

  - #### IVec/Base.Master.hpp
    * Master aggregation header for the `rdt::ivec<T>` container.
    * This file serves as the single entry point for the ivec implementation. It includes all segmented module headers in the correct dependency order. Users should typically include "IVec.hpp" which transitively includes this file.
    * Naming Conventions
      - `-Inl` suffix: In-place mutation (modifies the container directly).       Methods without this suffix return a new modified copy.
      - `r-` prefix / `r` suffix: Reverse operation (e.g., rsort).
      - `ref-` prefix: Returns a reference instead of a copy.
      - `c-` prefix: Explicit const version (e.g., cbegin, crefbegin).
    * Note for formatter: Formatter headers (Format.std.hpp, Format.fmt.hpp) are intentionally **NOT included** here to avoid SFINAE conflicts with `<fmt/ranges.h>`. Include them explicitly in your translation unit **only** when needed.

    ```c++
    namespace rdt {
        /// @brief A modern, heap-allocated dynamic array with Python-like ergonomics.
        /// @tparam T Element type. Must be destructible. Copy/move requirements depend on operations used.
        ///
        /// @par Memory Model
        /// - Data is always heap-allocated via operator new[]
        /// - Pointer-based iterators (T*) for zero-overhead STL/ranges compatibility
        /// - Growth factor: 2x on append, exact allocation on extend/resize
        ///
        /// @par Naming Conventions
        /// - Methods without suffix return a **new modified copy** (non-mutating)
        /// - `-Inl` suffix: modifies container **in-place** (mutating)
        /// - `ref-` prefix: returns reference instead of copy
        /// - `c-` prefix: explicit const variant (e.g., cbegin, crefbegin)
        ///
        template <typename T>
        class ivec {
            private:
            T*  m_Data;       // Actual data in pointer
            idx m_Size;       // Actual size
            idx m_Capacity;   // How many elements that can be fitted without reallocation
  
            public:
            using value_type        = T;
            using reference         = T&;
            using const_reference   = const T&;
  
            /** [Init] Constructors **/
            ivec() noexcept;                            // default
            ivec(initl<T> Data);                        // with {}
            ivec(const T* begin, const T* end);         // with pointer
            explicit ivec(const vec<T>& Data);          // copy from std::vector
            explicit ivec(const span<const T>& Data);   // copy from generic iterables
            ivec(const ivec& Data);                     // copy from Data ivec
            ivec(ivec&& Data) noexcept;                 // copy from temporary ivec
  
            /** [Init] More explicit Constructors ? **/
            ivec fromVec(const vec<T>& Data);
            ivec fromSpan(const span<const T>& Data);
  
            /** [Init] DeConstructors **/
            ~ivec() noexcept;
  
            /** [Core] Data stuffs **/
            [[nodiscard]] T* data() noexcept;               // pointer to first element
            [[nodiscard]] const T* data() const noexcept;   // const pointer to first element
            [[nodiscard]] idx size() const noexcept;        // how much element right now
            [[nodiscard]] idx capacity() const noexcept;    // available free slots
            [[nodiscard]] u64 memory() const noexcept;      // total object size in bytes
  
            /** [Core] Resize and reserve with/for stuffs **/
            void resize(idx Size, const T& Fill = T{});
            void reserve(idx Size);
  
            /** [Core] Append at end **/
            void append(const T& Element);      // Single element (the most basic thing)
            void append(T&& Element);           // Single element (but rvalue)
  
            /** [Core] Append at specific index **/
            void appendFirst(const T& Item) noexcept;       // Append from first index, ivec<i32> a{0, 1, 2, 3, 4}.appendFirst(99) -> a{99, 0, 1, 2, 3, 4, 5}
            void appendAt(idx At, const T& Item) noexcept;  // Append at Nth index, ivec<i32> a{0, 1, 2, 3, 4}.appendAt(99, 1) -> a{0, 99, 1, 2, 3, 4, 5}
  
            /** [Core] Emplace at end **/
            template<typename... Args>
            void emplace(Args&&... Items) noexcept;         // Build and append object on-fly
  
            /** [Core] Emplace at specific index **/
            template<typename... Args>
            void emplaceFront(Args&&... Items) noexcept;    // Build and append in front object on-fly
            template<typename... Args>
            void emplaceAt(idx At, Args&&... Items) noexcept;   // Build and append in Nth index object on-fly
  
            /** [Core] Extend this with other iterables **/
            void extend(std::span<const T> Data);        // Unified range append via span (replaces vec<T> overload)
  
            /** [Core] State **/
            void clear();                                   // Nuke all elements, keep slots
            [[nodiscard]] bool isEmpty() const noexcept;    // Is this empty?
  
            /** [Access] Common getter **/
            [[nodiscard]] T& operator[](idx Index) noexcept;        // setter + getter
            [[nodiscard]] const T& operator[](idx Index) const noexcept;  // getter (read-only)
            [[nodiscard]] T& at(const idx& Index);                  // getter (legacy)
            [[nodiscard]] T& at(const idx& Index) const;            // getter (legacy)
  
            /** [Access] Common setter **/
            [[nodiscard]] ivec& operator=(const ivec& Other);       // setter (write-only)
  
            /** [Access] Pop front/back/specific index **/
            [[nodiscard]] T pop(const idx& Index);                  // Get then remove selected index. ivec<i32> a{1, 2, 3, 4}.Pop(1); -> return a[1] then make ivec ivec<i32>a to {1, 3, 4}
            [[nodiscard]] T popFirst();                             // get first element, then remove it
            [[nodiscard]] T popLast();                              // get last element, then remove it
  
            /** [Access] Get random item with/without specific range **/
            // [[nodiscard]] T random();                               // Absolute random item
            // [[nodiscard]] T randomMax(const idx& MaxIndex);         // Random item from 0..Max
            // [[nodiscard]] T randomMin(const idx& MinIndex);         // Random item from Min..N
            // [[nodiscard]] T random(const idx& From, const idx& To); // Random item from Min, Max
  
            /** [Access] Specific Element Accessors **/
            [[nodiscard]] T first() const noexcept;             // First element (copy)
            [[nodiscard]] T last() const noexcept;              // Last element (copy)
            [[nodiscard]] T first(idx n) const noexcept;        // Nth from start (copy)
            [[nodiscard]] T last(idx n) const noexcept;         // Nth from end (copy)
            [[nodiscard]] T front() const noexcept;             // Legacy alias for first()
            [[nodiscard]] T back() const noexcept;              // Legacy alias for last()
  
            /** [Access] Standard Iterators (Pointer-based) **/
            [[nodiscard]] T* begin() noexcept;                  // Mutable begin
            [[nodiscard]] const T* begin() const noexcept;      // Const begin (enables range-for on const ivec)
            [[nodiscard]] const T* cbegin() const noexcept;     // Explicit const begin
            [[nodiscard]] T* end() noexcept;                    // Mutable end
            [[nodiscard]] const T* end() const noexcept;        // Const end
            [[nodiscard]] const T* cend() const noexcept;       // Explicit const end
  
            /** [Access] Reference Accessors with bounds check **/
            [[nodiscard]] T& refbegin();                        // Mutable ref to first (throws if empty)
            [[nodiscard]] const T& refbegin() const;            // Const ref to first (throws if empty)
            [[nodiscard]] const T& crefbegin() const;           // Explicit const ref to first
            [[nodiscard]] T& refend();                          // Mutable ref to last (throws if empty)
            [[nodiscard]] const T& refend() const;              // Const ref to last (throws if empty)
            [[nodiscard]] const T& crefend() const;             // Explicit const ref to last
  
            /** [Opr] Dunders **/
            [[nodiscard]] /* __add__  */ ivec  operator+(const ivec& Other);
            [[nodiscard]] /* __iadd__ */ ivec& operator+=(const ivec& Other);
            [[nodiscard]] /* __mul__  */ ivec  operator*(idx Count);
            [[nodiscard]] /* __imul__ */ ivec& operator*=(idx Count);
            [[nodiscard]] /* __eq__   */ bool  operator==(const ivec& Other) const;
  
            /** [Items] Orders **/
            [[nodiscard]] ivec Shuffle();       // return shuffling
            [[nodiscard]] ivec Sort();          // return sorting with std::sort
            [[nodiscard]] ivec rSort();         // return reverse sorting with std::sort
            [[nodiscard]] ivec Reverse();       // return reverse order
            void ShuffleInl();                  // inline shuffling
            void SortInl();                     // inline sorting with std::sort
            void rSortInl();                    // inline reverse sorting with std::sort
            void ReverseInl();                  // inline reverse order
  
            /** [Items] Query **/
            [[nodiscard]] ivec Uniques(idx Max = 1);                    // return remove duplicated values
            [[nodiscard]] ivec Reassign(span<const T> Data, idx Start); // return reassign valued
            void UniquesInl(idx Max = 1);                               // inline remove duplicated values
            void ReassignInl(span<const T> Data, idx Start);            // inline reassign valued
  
            /** [Items] Find utils **/
            [[nodiscard]] bool Contains(const T& Item) const noexcept;            // Find element, return true or false
            [[nodiscard]] idx Find(const T& Item) const noexcept;                 // Find element, return index
            [[nodiscard]] idx FindFreq(const T& Item) const noexcept;             // Find element, return how many appeared
            [[nodiscard]] pair<idx, vec<T>> FindAll(const T& Item) const noexcept;// Find element, return how many appeared and indexes
  
            // /** [Items] Const Find utils **/
            // [[nodiscard]] bool Contains(const T& Item) noexcept;              // Find element, return true or false
            // [[nodiscard]] idx Find(const T& Item) noexcept;                   // Find element, return index
            // [[nodiscard]] idx FindFreq(const T& Item) noexcept;               // Find element, return how many appeared
            // [[nodiscard]] pair<idx, vec<T>> FindAll(const T& Item) noexcept;  // Find element, return how many appeared and indexes
  
            /** [Items] Slicers **/
            [[nodiscard]]   ivec Slice(idx From, idx To);       // Slice From<->To, then return
            // [[nodiscard]]   ivec Slice(idx To);                 // Slice First->n or n<-Last, then return
                            void SliceInl(idx From, idx To);    // Slice x<->y
            //                 void SliceInl(idx To);              // Slice First->n or n<-Last
  
            /** [Items] Eraser return new by index **/
            [[nodiscard]]   ivec Erase(idx Pos);                // return erased specific
            [[nodiscard]]   ivec Erase(idx From, idx To);       // return erased range
            /** [Items] Eraser do inline by pointer **/
                            void EraseInl(idx Pos);             // inline erased specific
                            void EraseInl(idx From, idx To);    // inline erased range
  
            /** [Items] Eraser return new by pointer **/
            [[nodiscard]]   ivec erase(T* pos);                 // return erased specific
            [[nodiscard]]   ivec erase(T* begin, T* end);       // return erased range
            /** [Items] Eraser fo inline by pointer **/
                            void eraseInl(T* pos);              // inline erased specific
                            void eraseInl(T* begin, T* end);    // inline erased range
  
            /** [Functional] Generate items by lambda **/
            template <typename Fn>
            requires requires(Fn&& f, const T& x) { f(x); }
            [[nodiscard]] auto Map(Fn&& Func) const -> ivec<decltype(Func(std::declval<const T&>()))>;
  
            template <typename Fn>
            requires std::predicate<Fn, const T&>
            [[nodiscard]] ivec Filter(Fn&& Pred) const;
  
            /** [Converter] Convert to common objects **/
            [[nodiscard]] str fstr() const;                     // Make to string literally (almost) anything
            [[nodiscard]] str join(strview Delim = ", ") const; // Format everything into string seperated by something
            void toCArr(span<T> Destination) const;             // Convert to conventional pointer array
  
            template <template<typename, typename...> class Container>
            [[nodiscard]] auto to() const;                      // To generic iterables
  
            /* [Converter.Opr] Auto converter to std::span & std::vector by operator */
            explicit operator span<T>() const noexcept;
            explicit operator span<const T>() const noexcept;
            explicit operator vec<T>() const noexcept;
            explicit operator vec<const T>() const noexcept;
  
            /* Legacy functions */
            void push_back(const T& Item);              // "Append" Add Single element (legacy)
            void push_front(const T& Item);             // "Append" from first index (Legacy-ish)
            void insert(ivec &&v);                      // "Extend" from ivec
            void insert(span<const T>& v);              // "Extend" using elemnent from generic container (legacy)
            void insert(const T& Item, idx At);         // "Append" at Nth index (legacy)
            void insert(const T* From, const T* To);    // "Extend" using elemnent from any iterable (legacy iterator)
        };
    }
    ```

- ### **Usage Example**  
  ...

### 7. Vector (`rdt::Vector`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 8. Rounding (`rdt::Round`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

---

## III. Randomization

### 9. Random (`rdt::Random`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 10. TrueRandom (`rdt::TrueRandom`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 11. Randomizer (`rdt::Randomizer`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

---

## IV. System & Platform

### 12. OS (`rdt::OS`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 13. Files (`rdt::Files`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 14. Linking (`rdt::Link`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 15. Time (`rdt::Time`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

---

## V. Output & Presentation

### 16. FormatNumber (`rdt::FormatNumber`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 17. PrintHeader (`rdt::PrintHeader`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 18. Style (`rdt::Style`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 19. StyleW (`rdt::StyleW`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

---

## VI. Debug

### 20. FeatureCheck (`rdt::Feature`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

### 21. Version (`rdt::Version`)
- ### **What is this?**  
  ...
- ### **Files**  
  ...
- ### **API**
  ...
- ### **Usage Example**  
  ...

---

## Fair Usage
...

## Contributing
...

## Using AI
...

## License
...