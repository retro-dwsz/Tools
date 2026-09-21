#include "RDTools.hpp"
#include "RDTools/PStr.hpp"
#include "RDTools/Casting.hpp"

#include <print>

using namespace rdt;
using Cast::scast, Cast::rcast;

// template <typename T>
// u64 GetAddressL(const T& var) noexcept {
//     return scast<u64>(reinterpret_cast<uintptr_t>(&var));
// }
//
// template <typename T>
// u32 GetAddressI(const T& var) noexcept {
//     // Truncation wanrning on 64-bit systems!
//     return scast<u32>(reinterpret_cast<uintptr_t>(&var));
// }

void RandomAdress() {
    // 10 f64 random number from -9.99 to 9.99
    const vec n = rdt::Random::RandomNumsV<f64>(10, -9.99, 9.99);

    // Simulate random memory address
    list<f64> l;
    for(const auto i : n) {
        l.push_back(i);
    }

    // Store adresses
    vec<u64> p;
    for(const auto i : l) {
        p.push_back(GetAddress<u64>(i));    // addresses to actual u32/u64?
    }

    for(idx i = 0; i < 10; i++) {
        std::println(
            "{} is {} Bytes at {}",
            n[0], sizeof(n[0]), p[0]
        );
    }
}

i32 main() {
    char TOOLS_INFO_BUFFER_CSTR[__TOOLS_INFO_BUFFER_MAX_SIZE];
    ToolsGetVersion(TOOLS_INFO_BUFFER_CSTR);

    const idx       len = RandomNum<idx>(5, 10);
    const str       str_test = MakeRandomStr(65, 122, len);

    constexpr char  c_test[] = "Hello!";
    std::println(
        "cstr: {} Bytes at {}..{}",
        sizeof(c_test),
        scast<tptr>(std::begin(c_test)),
        scast<tptr>(std::end(c_test))
    );

    constexpr wchar  w_test[]   = L"Hello!";
    std::println(
        "wcstr: {} Bytes at {}..{}",
        sizeof(w_test),
        scast<tptr>(std::begin(w_test)),
        scast<tptr>(std::end(w_test))
    );

    constexpr char16 w16_test[] = u"Hello!";
    std::println(
        "w16cstr: {} Bytes at {}..{}",
        sizeof(w16_test),
        scast<tptr>(std::begin(w16_test)),
        scast<tptr>(std::end(w16_test))
    );

    constexpr char32 w32_test[] = U"Hello!";
    std::println(
        "w32cstr: {} Bytes at {}..{}",
        sizeof(w32_test),
        scast<tptr>(std::begin(w32_test)),
        scast<tptr>(std::end(w32_test))
    );

    // rdt::PStr ct_test{};
    constexpr PStr ct_test1("Hello!");
    printf("%s", ct_test1.data());

    constexpr PStr ct_test2("world!");
    printf("%s", ct_test2.data());
    return 0;
}
