#include <cstddef>
#include <fmt/format.h>
#include <Tools/Types.hpp>
#include <format>

// Return
str GetEdge(const str& tx) {
    fmt::println("\nCopying!");
    str New = std::format("{}{}", tx[0], tx.back());
    fmt::println("New value: {}", New);
    return New;
}

// Mutate in-place
void GetEdge(str* tx) {
    if(tx == nullptr){
        fmt::println("null pointer detected, exiting now");
        return;
    }

    fmt::println("\nMutating!");
    *tx = std::format("{}{}", tx->front(), tx->back());
    fmt::println("New value: {}", *tx);
}

int main(){
    str Tx      = "Hello, world!";
    
    // No viable conversion from 'void' to 'str' (aka 'basic_string<char>')
    str tx1     = GetEdge(Tx);  // Biasa
    fmt::println("{}", tx1);
    
    // No error
    /* void */    GetEdge(&Tx);  // Reference
    /* void */    GetEdge(nullptr);  // Reference
    fmt::println("{}", Tx);
}

/*
hmm, bagaimana kalau kita buat rule:

Kalau ada return, pass const biasa atau const reference
Contoh:
- `Func(T&)`
- `Func(const T)` 
- `Func(const T&)`

Kalau tidak ada return, pass dengan pointer
Contoh:
- `Func(T*)`
- `Func(const T*)`

Supaya bisa dibedakan saat user memakainya, misal

```
// Return
template <Numbers T>
void Slice(cosnt vec<T>& v, idx x, idx y);

// Inline
template <Numbers T>
void Slice(vec<T>* v, idx x, idx y);

vec<i32> a1 = {1, 2, 3, 4, 5};
vec<i32> a2 = Slice(a1, 1, 3); // {2, 3, 4}
Slice(&a2, 0, 1); // a2 is now {1, 2}
```

Dan untuk menghindari `nullptr`, kita harus ingat mindset volvo: "Kita harus bisa membuat semua selamat, meski driver mendapatkan sim dari tukang daging pasar"

*/


