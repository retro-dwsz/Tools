# Retro Dave's Tools Coding Guide (ID)

---

## 0. Apa ini?
- Dokumen ini adalah standar wajib bagi semua kontributor RDTools. Setiap PR atau commit yang melanggar panduan ini akan ditolak.

## 1. File Format
- **Indentasi:** Tab size 4 chars. WAJIB gunakan literal spasi (bukan karakter `\t`) untuk menghindari ambiguitas tab antar IDE (VSCode, CLion, NVim, Emacs, Nano, Fresh, dll).
- **Line Ending:** Gunakan `CRLF` atau `LF` (`\n`), lalu konversi ke `LF` di repo. Jangan gunakan `CRLF` di repo utama. Konfigurasikan Git dengan `git config --global core.autocrlf input`.
- **Encoding:** UTF-8 tanpa BOM.
- **Akhir File:** Setiap file WAJIB diakhiri dengan tepat satu baris kosong (trailing newline).
- **Header Guard:** Gunakan kombinasi `#pragma once` dan `#ifndef`. Jika di-generate via tooling, ikuti format prefix/suffix/index yang ditetapkan.

## 2. Function Declaration & Implementation

Pemisahan deklarasi dan implementasi **hanya berlaku untuk Class**. Untuk Struct, Namespace, dan Fungsi Biasa (Free Functions), gabung langsung.

### 2.1. Class: Pisahkan Deklarasi dan Implementasi
Deklarasikan method di dalam class, lalu definisikan di luar class. Gunakan assignment eksplisit `this->prop = value;` di constructor/method, jangan gunakan initializer list kecuali untuk referensi/const member yang mewajibkannya.

```c++
class Point {
    i64 x, y;

public:
    // Hanya deklarasi di dalam class
    Point(const i64 x, const i64 y) noexcept;
    pair<i64, i64> GetPoint() const noexcept;
};

// Implementasi di luar class
Point::Point(const i64 x, const i64 y) noexcept {
    this->x = x;
    this->y = y;
}

pair<i64, i64> Point::GetPoint() const noexcept {
    return pair<i64, i64>{this->x, this->y};
}
```

### 2.2. Struct / Namespace: Gabung Langsung
Jika menggunakan struct atau namespace, tulis body fungsi langsung di tempat deklarasi.

```c++
struct Screen {
    idx SizeX, SizeY;
    idx ResX, ResY;

    // Implementasi langsung di dalam struct
    Screen(const idx sizeX, const idx sizeY, const idx resX, const idx resY) noexcept {
        this->SizeX = sizeX;
        this->SizeY = sizeY;
        this->ResX = resX;
        this->ResY = resY;
    }
};
```

### 2.3. Fungsi Biasa (Free Functions): Inline & Gabung Langsung
Fungsi yang bukan member class harus menggunakan keyword `inline` dan body ditulis langsung. Terapkan overloading berdasarkan cara pass parameter untuk membedakan perilaku (return baru vs modifikasi in-place).

```c++
// Return new string (Read-only via const reference)
inline str Capitalize(const str& t) {
    str result = t;
    // ... logic capitalize ...
    return result;
}

// Do inline, no return (Modify in-place via pointer)
inline void Capitalize(str* t) {
    if (!t) return;
    // ... logic capitalize langsung ke *t ...
}
```


## 3. Naming Convention
- **Namespace:** `rdt::*` (utama), `rdt::Tools::*` (sub-modul level kode).
- **File Fisik:** `RDTools/Tools.NamaModul.hpp` (Contoh: `RDTools/TrueRandom.hpp` berisi `rdt::TrueRandom::*`).
- **Class / Struct:** PascalCase (Contoh: `ConstexprTwister`, `VerifyResult`).
- **Function / Method:** PascalCase (Contoh: `GetPoint`, `Capitalize`, `Timestamp`).
- **Variable / Parameter:** camelCase atau PascalCase secara konsisten. Hindari snake_case kecuali untuk macro.
- **Concept:** PascalCase (Contoh: `SignedInt`, `UnsignedInt`, `Float`, `ThisContainers`).
- **Type Alias:** lowercase singkat (Contoh: `i32`, `u64`, `f32`, `str`, `idx`).
- **Macro:** UPPER_SNAKE_CASE (Contoh: `TOOLS_PSTR_TEMPLATE`, `RDT_MAKE_ONE_OF`).
- **Member Class (Private):** Gunakan prefix `m_`. Gunakan nama deskriptif biasa, akses selalu via `this->`.

## 4. Type System & Aliases
- **WAJIB** menggunakan type alias dari RDTools (`i32`, `i64`, `u32`, `u64`, `f32`, `f64`, `str`, `idx`, dll.) alih-alih tipe primitif bawaan C++ (`int`, `long`, `float`, `size_t`).
- **Jangan** gunakan tipe fast/atomic (`fu64`, `ai32`) sebagai parameter template algoritma yang membutuhkan lebar bit eksak (seperti RNG MT). Gunakan fixed-width types (`u32`, `u64`).
- Gunakan `concepts` untuk membatasi template parameter. Manfaatkan macro `RDT_CONCEPT_ONE_OF` atau `OneOf<T, ...>` untuk validasi tipe.

## 5. Modern C++ Practices (C++23/C++26)
- **`constexpr` / `consteval`:** Gunakan `constexpr` pada fungsi dan variabel yang bisa dievaluasi saat compile-time. Gunakan `consteval` jika HARUS dievaluasi saat compile-time.
- **`noexcept`:** Wajib ditambahkan pada fungsi/method yang tidak melempar exception (constructor, getter, bitwise operations).
- **`explicit`:** Wajib digunakan pada conversion operator yang melakukan alokasi memori atau mengubah ownership (contoh: konversi `PStr` ke `std::string`). Jangan tulis `explicit` di definisi luar class.
- **Destructor:** JANGAN tulis destructor kosong secara eksplisit untuk class non-owning (view/wrapper). Biarkan compiler men-generate trivial destructor.
- **CTAD:** Sediakan *Class Template Argument Deduction Guides* untuk class template agar user tidak perlu menulis angle brackets `<>` secara manual.

## 6. Memory & Ownership
- **Non-Owning Views:** Class seperti `PStr` hanya menyimpan pointer dan size. Tidak boleh ada `new`/`delete`. Lifetime data adalah tanggung jawab pemanggil. Dokumentasikan peringatan ini dengan jelas.
- **Owning Types:** Jika class mengalokasikan memori, ia wajib memiliki destructor, copy/move constructor, dan copy/move assignment operator (Rule of Five).
- **Pointer vs Reference:**
    - Gunakan `const T&` untuk read-only.
    - Gunakan `T*` untuk modifikasi in-place (terutama pada free functions).
    - Hindari passing by value untuk objek besar.

## 7. Error Handling & Safety
- **Undefined Behavior (UB):** Dilarang keras. Jangan lakukan signed integer overflow, dereference nullptr, atau out-of-bounds access.
- **Bit Manipulation:** Jika melakukan operasi bit untuk signed integers, lakukan di tipe unsigned terlebih dahulu, lalu cast kembali ke signed di langkah terakhir.
- **Compile-Time Safety:** Gunakan `static_assert` untuk memvalidasi asumsi ukuran tipe atau nilai constexpr.

## 8. Documentation
- Gunakan format **Doxygen-style** untuk semua API publik.
- Tag wajib: `@brief`, `@tparam`, `@param`, `@return`.
- Tag kondisional: `@note` (untuk info tambahan), `@warning` (untuk potensi bahaya seperti UB, lifetime, atau alokasi memori tersembunyi).
- Dokumentasi ditulis dalam bahasa **Inggris (en-US)**.

## 9. Build System (CMake)
- RDTools adalah **header-only INTERFACE library**.
- Jangan gunakan `add_executable` atau `target_sources(PRIVATE)` untuk target library utama.
- Header didaftarkan via `GLOB_RECURSE CONFIGURE_DEPENDS` khusus untuk test executable agar muncul di IDE, bukan untuk build library.
- Pastikan include path menggunakan generator expression `$<BUILD_INTERFACE:...>` dan `$<INSTALL_INTERFACE:...>`.

## 10. Compatibility
- **Platform Utama**: Repo ini dikembangkan oleh pengguna Windows sejati menggunakan toolchain **MSYS2 + LLVM Clang**. Jika Anda menemukan flaw/bug saat menggunakan library ini di Linux atau macOS dengan compiler lain, segera laporkan via issue tracker dan jika memungkinkan, sertakan kode fix-nya.
- **Compiler**: Gunakan compiler **LLVM Clang** (disarankan versi 17+). Library ini memanfaatkan fitur C++23/C++26 secara agresif (`concepts`, `consteval`, CTAD guides, fold expressions) yang membutuhkan dukungan Clang modern. GCC 14+ mungkin bekerja tapi bukan target pengujian utama.
  MSVC: Ironisnya, library ini hampir tidak pernah diuji menggunakan MSVC, karena keterbatasan dukungannya terhadap beberapa fitur C++23/C++26, kompleksitas setup package manager yang jauh lebih rumit dibanding Linux-style toolchains, dan perbedaan perilaku template instantiation. Dukungan MSVC bersifat best-effort — gunakan dengan risiko sendiri.
- **CMake**: Versi minimum yang didukung adalah **CMake 4.x**.
- **Dependencies**: RDTools dirancang sebagai **zero external dependency** untuk core library. Bahkan modul tertentu (seperti IVec.Format) punya support untuk lib `{fmt}`. Pastikan dependency terpasang via package manager atau tersedia di include path sebelum build.
- **Standar C++**: Target standar adalah C++23. Compiler flag cxx_std_23 akan otomatis di-propagate ke consumer project via target_compile_features(INTERFACE). Jangan paksa compile dengan standar di bawah C++23 — banyak API yang akan gagal.
- **Header-Only**: Seluruh library bersifat header-only (INTERFACE). Tidak ada binary .lib, .a, .dll, atau .so yang perlu di-link. Cukup #include dan pastikan include path benar.
- **Instalasi**: Karena bersifat header-only, instalasi paling sederhana adalah copy-paste folder RDTools/ langsung ke direktori include/ project Anda atau ke system include path (misal /usr/local/include/ di Linux atau C:/msys64/mingw64/include/ di Windows). Alternatif formal via CMake: jalankan cmake --install build --prefix /path/to/install yang akan menghasilkan struktur include/RDTools/ beserta config files agar bisa di-consume via find_package(RDTools).