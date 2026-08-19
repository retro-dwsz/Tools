#include "Tools.hpp"

#include "RDTools/PStr.hpp"

i32 main() {
    printf(
        "%s", ToolsGetVersion()
    );

    const char   c_test[]   = "Hello!";
    const wchar  w_test[]   = L"Hello!";
    const char16 w16_test[] = u"Hello!";
    const char32 w32_test[] = U"Hello!";

    rdt::PStr ct_test{};
    ct_test = "Hello!";
    printf("%s", ct_test.data());
    ct_test = "world!";
    printf("%s", ct_test.data());
    return 0;
}
