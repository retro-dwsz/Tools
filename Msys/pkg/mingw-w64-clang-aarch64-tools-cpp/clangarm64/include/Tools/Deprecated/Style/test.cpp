#include <exception>
#include <fmt/format.h>
#include <fmt/xchar.h>

#include <iostream>
#include "Style.hpp"

#include <string>
#include <windows.h>

void PrintW(const std::wstring& s) {
    DWORD written{};
    WriteConsoleW(GetStdHandle(STD_OUTPUT_HANDLE), s.c_str(), (DWORD)s.size(), &written, nullptr);
    std::cout << std::endl;
}

void Base(const std::string& Tx = "Hello string!"){
    // std::string Tx = "Hello, string!";

    fmt::println("Str\t = \"{}\" ({} bytes at {:p})", Tx, sizeof(Tx), Tx.data());
    try {
        std::string Bold = Tools::Styling::Bold(Tx);
        fmt::println("Bold\t = {}", Bold);
        fmt::println("Italic\t = {}", Tools::Styling::Italic(Tx));
        fmt::println("Under\t = {}", Tools::Styling::Under(Tx));
        fmt::println("Strike\t = {}", Tools::Styling::Strike(Tx));
        fmt::println("cFG\t = {}", Tools::Styling::ColorFG(Tx, 0xF2AA65));
        fmt::println("cBG\t = {}", Tools::Styling::ColorBG(Tx, 0xF2AA65));
        fmt::println("cFBG\t = {}", Tools::Styling::ColorBG(Tools::Styling::ColorFG(Tx, 0xF2AA65), 0x0D085F));
        
        std::string All =
        Tools::Styling::ColorBG(
            Tools::Styling::ColorFG(
                Tools::Styling::Bold(
                    Tools::Styling::Italic(
                        Tools::Styling::Under(
                            Tools::Styling::Strike(Tx)
                        )
                    )
                ),
                0xF2AA65),
            0x0D085F
        );
        fmt::println("r(All)\t = {}", Tools::Styling::Reset(All));

    } catch(std::exception& e){
        fmt::println("Error: {}", e.what());
    }
}

void Wide(const std::wstring& Tx = L"Hello, wide!"){
    // std::wstring Tx = L"Hello, wɪde!";

    fmt::println(L"{}",
    // PrintW(
        fmt::format(
            L"WStr\t = \"{}\" ({} bytes at {:p})\n",
            Tx, sizeof(Tx), Tx.data()
        )
    );
    try {
        fmt::println(L"{}",
        // PrintW(
            fmt::format(L"Bold\t = {}", Tools::StylingW::Bold(Tx))
        );
        fmt::println(L"{}",
        // PrintW(
            fmt::format(L"Italic\t = {}", Tools::StylingW::Italic(Tx))
        );
        fmt::println(L"{}",
        // PrintW(
            fmt::format(L"Under\t = {}", Tools::StylingW::Under(Tx))
        );
        fmt::println(L"{}",
        // PrintW(
            fmt::format(L"Strike\t = {}", Tools::StylingW::Strike(Tx))
        );
        fmt::println(L"{}",
        // PrintW(
            fmt::format(L"cFG\t = {}", Tools::StylingW::ColorFG(Tx, 0xF2AA65))
        );
        fmt::println(L"{}",
        // PrintW(
            fmt::format(L"cBG\t = {}", Tools::StylingW::ColorBG(Tx, 0xF2AA65))
        );
        fmt::println(L"{}",
        // PrintW(
            fmt::format(L"cFBG\t = {}", Tools::StylingW::ColorBG(Tools::StylingW::ColorFG(Tx, 0xF2AA65), 0x0D085F))
        );

        std::wstring All =
        Tools::StylingW::ColorBG(
            Tools::StylingW::ColorFG(
                Tools::StylingW::Bold(
                    Tools::StylingW::Italic(
                        Tools::StylingW::Under(
                            Tools::StylingW::Strike(Tx)
                        )
                    )
                ),
                0xF2AA65),
            0x0D085F
        );
        fmt::println(L"{}",
        // PrintW(
            fmt::format(L"r(All)\t = {}", Tools::StylingW::Reset(All))
        );

    } catch(std::exception& e){
        std::cout << fmt::format("Error: {}", e.what());
    }
}

// Windows specific: Set console to support wide characters (UTF-16)
// On Linux/macOS, this is usually handled by default

#ifdef _WIN32

#include <io.h>     // For _setmode
#include <fcntl.h>  // For _O_U8TEXT/_O_WTEXT (Windows specific)
#include <locale>
#include <codecvt>

std::wstring ConvertToWide(const char* Tx){
    // Setup converter for UTF-8 to wide character conversion
    using convert_type = std::codecvt_utf8<wchar_t>;
    std::wstring_convert<convert_type, wchar_t> converter;
    
    // Perform the conversion
    return converter.from_bytes(Tx);
}

std::wstring ConvertToWide(const std::string& utf8) {
    // Setup converter for UTF-8 to wide character conversion
    using convert_type = std::codecvt_utf8_utf16<wchar_t>;
    std::wstring_convert<convert_type, wchar_t> converter;
    
    // Perform the conversion
    return converter.from_bytes(utf8);
}

#endif

#include <argparse/argparse.hpp>

int main(const int argc, const char** argv){
    #ifdef _WIN32
        _setmode(_fileno(stdout), _O_WTEXT);
    #endif
    
    std::string     Text;
    std::wstring    TextW;
    
    argparse::ArgumentParser Args("test");

    Args.add_argument("--Text", "-t")
    .default_value("Hello!")
    .store_into(Text);

    Args.parse_args(argc, argv);

    // TextW = std::wstring(Text.begin(), Text.end());
    TextW = ConvertToWide(Text);

    fmt::println("Base (std::string)\n");
    Base(Text);
    // Base("Здраво, ŵ!");

    fmt::println("\nWide String (std::wstring)\n");
    Wide(TextW);
    // Wide(L"Здраво, ŵ!");
}
