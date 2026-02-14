<!-- /* Legends: Casting */ -->

# Legends: casting

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

# Legends: Edges

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

# Legends: Files

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

# Legends: FormatNumber

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
`Char Seperator`: 
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
- `Format(3142.17, ' ', ',', 3)` will return `3 142,17`