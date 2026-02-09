#include <iostream>
#include <string>
#include <io.h>     // For _setmode
#include <fcntl.h>  // For _O_U8TEXT/_O_WTEXT (Windows specific)

int main() {
    // Windows specific: Set console to support wide characters (UTF-16)
    // On Linux/macOS, this is usually handled by default
    #ifdef _WIN32
        _setmode(_fileno(stdout), _O_WTEXT); // or _O_WTEXT
    #endif

    // ANSI escape codes as wide strings
    const std::wstring color_red = L"\033[1m";
    const std::wstring color_blue = L"\033[34m";
    const std::wstring color_reset = L"\033[0m"; // Reset to default

    std::wstring colored_text = color_red + L"This is bold text in a wstring. " +
                                color_blue + L"This is blue text. " +
                                color_reset + L"This is default color text.";

    std::wcout << colored_text << std::endl;

    // You can also apply it directly to output streams
    std::wcout << color_red << L"Another bold line." << color_reset << std::endl;

    return 0;
}
