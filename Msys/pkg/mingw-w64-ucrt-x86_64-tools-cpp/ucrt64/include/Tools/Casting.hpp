#pragma once

// alias: static_cast = "scast"
// alias: dynamic_cast = "dcast"
// alias: const_cast = "ccast"
// alias: reinterpret_cast = "rcast"
// alias: any_cast = "acast"
// make: cast<B>(A)

// ============================================================
// Tools::Cast
// ------------------------------------------------------------
// Lightweight casting helpers.
// Tujuan:
// - Memberi alias eksplisit untuk C++ cast keywords
// - Meningkatkan readability (niat casting kebaca)
// - Tetap zero-overhead (compiler tetap bisa inline)
//
// Catatan penting:
// - Ini BUKAN pengganti type system
// - Ini hanya membungkus keyword cast agar lebih eksplisit & konsisten
//
// Alias mapping:
//   static_cast      -> scast
//   dynamic_cast     -> dcast
//   const_cast       -> ccast
//   reinterpret_cast -> rcast
//   std::any_cast    -> acast
//
// Gaya pemakaian:
//   auto x = Tools::Cast::scast<double>(i);
//   auto p = Tools::Cast::dcast<Base*>(derived);
//   auto v = Tools::Cast::acast<int>(any_val);
//
// ============================================================

#include <any>
#include <utility>
// #include <type_traits>

namespace Tools::Cast {

    // scast<T>(value)
    //
    // Alias untuk static_cast.
    //
    // - Aman untuk konversi yang diverifikasi di compile-time
    // - Bisa dievaluasi di compile-time jika argumen constexpr
    // - Zero runtime overhead
    //
    // Gunakan untuk:
    // - Numeric conversion
    // - Upcast/downcast non-polymorphic
    template <typename To, typename From>
    constexpr To scast(From&& value) noexcept {
        return static_cast<To>(std::forward<From>(value));
    }

    // dcast<T>(value)
    //
    // Alias untuk dynamic_cast.
    //
    // - HANYA untuk pointer atau reference
    // - Membutuhkan RTTI
    // - Runtime-only (tidak constexpr)
    //
    // Gunakan untuk:
    // - Downcast polymorphic yang perlu runtime checking
    template <typename To, typename From>
    To dcast(From&& value) {
        return dynamic_cast<To>(std::forward<From>(value));
    }

    // ccast<T>(value)
    //
    // Alias untuk const_cast.
    //
    // - Menghapus / menambahkan qualifier const
    // - Tidak mengubah tipe dasar
    //
    // WARNING:
    // - Menghapus const dari object yang benar-benar const = UB
    template <typename To, typename From>
    constexpr To ccast(From&& value) noexcept {
        return const_cast<To>(std::forward<From>(value));
    }

    // rcast<T>(value)
    //
    // Alias untuk reinterpret_cast.
    //
    // - Bit-level cast
    // - Paling berbahaya
    // - Hampir selalu last resort
    //
    // Gunakan HANYA jika:
    // - Kamu tahu layout memori
    // - Tidak ada alternatif yang aman
    template <typename To, typename From>
    constexpr To rcast(From&& value) noexcept {
        return reinterpret_cast<To>(std::forward<From>(value));
    }

    // acast<T>(std::any)
    //
    // Alias untuk std::any_cast.
    //
    // - Runtime checked
    // - Akan throw std::bad_any_cast jika tipe salah
    template <typename To>
    To acast(const std::any& a) {
        return std::any_cast<To>(a);
    }
}

namespace Tools::Cast {
    // cast<T>(value)
    //
    // "One-door" casting API.
    //
    // Filosofi:
    // - Default ke static_cast
    // - Tidak mencoba pintar
    // - Explicit > implicit
    //
    // Catatan:
    // - Fungsi ini sengaja sederhana
    // - Jika kamu butuh RTTI / const removal / bit cast,
    //   gunakan scast / dcast / ccast / rcast secara eksplisit
    template <typename To, typename From>
    constexpr To cast(From&& value) {
        return scast<To>(std::forward<From>(value));
    }
}
