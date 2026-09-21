#include "RDTools.hpp"
#include "RDTools/PStr.hpp"
#include "RDTools/Casting.hpp"

#include <print>

using namespace rdt;
using Cast::scast;

i32 main() {

    using p = const void*;

    char TOOLS_INFO_BUFFER_CSTR[__TOOLS_INFO_BUFFER_MAX_SIZE];
    ToolsGetVersion(TOOLS_INFO_BUFFER_CSTR);

    const idx       len = RandomNum<idx>(5, 10);
    const str       str_test = MakeRandomStr(65, 122, len);

    constexpr char  c_test[] = "Hello!";
    std::println(
        "cstr: {} Bytes at {}..{}",
        sizeof(c_test),
        scast<p>(std::begin(c_test)),
        scast<p>(std::end(c_test))
    );

    constexpr wchar  w_test[]   = L"Hello!";
    std::println(
        "wcstr: {} Bytes at {}..{}",
        sizeof(w_test),
        scast<p>(std::begin(w_test)),
        scast<p>(std::end(w_test))
    );

    constexpr char16 w16_test[] = u"Hello!";
    std::println(
        "w16cstr: {} Bytes at {}..{}",
        sizeof(w16_test),
        scast<p>(std::begin(w16_test)),
        scast<p>(std::end(w16_test))
    );

    constexpr char32 w32_test[] = U"Hello!";
    std::println(
        "w32cstr: {} Bytes at {}..{}",
        sizeof(w32_test),
        scast<p>(std::begin(w32_test)),
        scast<p>(std::end(w32_test))
    );

    // rdt::PStr ct_test{};
    constexpr PStr ct_test1("Hello!");
    printf("%s", ct_test1.data());

    constexpr PStr ct_test2("world!");
    printf("%s", ct_test2.data());
    return 0;
}
