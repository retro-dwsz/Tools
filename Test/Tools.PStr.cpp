#include <fmt/format.h>
#include <fmt/ranges.h>

#include <RDTools/Types.hpp>
#include <RDTools/Random.hpp>
#include <RDTools/PStr.hpp>

i32 main() {
    // ctor from const char*
    constexpr rdt::PStr tx("Hello, world!");
    fmt::println("tx            = {}", tx.data());

    // get string length
    constexpr auto tx_size = tx.size();
    fmt::println("tx_size       = {}", tx_size);    // 13 chars

    // get string size in bytes
    constexpr auto tx_sizeb = tx.sizeBytes();
    fmt::println("tx_sizeb      = {}", tx_sizeb);   // 13 * 8 = 124 Bytes

    // check if this thing empty?
    constexpr auto tx_isEmpty = tx.empty();         // or maybe .isEmpty() ?
    fmt::println("tx_isEmpty    = {}", tx_isEmpty); // false

    // get string data
    const auto tx_ptr = tx.data();
    fmt::println("tx_ptr        = {}", tx_ptr); // H

    // get specific char from index
    const auto tx_charidx = rdt::Random::RandomNum<idx>(0, tx_size-1);
    const auto tx_char = tx[tx_charidx];
    fmt::println("tx_char[{}]   = {}", tx_charidx, tx_char);

    // get specific index with safety
    const auto tx_charidx_at = tx_charidx+2;
    try {
        const auto tx_char_at = tx[tx_charidx_at];
        fmt::println("tx_char_at {} = {}", tx_charidx_at, tx_char_at);
    } catch(const std::exception& e) {
        fmt::println("Error: {}", e.what());
    }
    // convert to std::string
    const auto tx_str = str(tx_ptr, tx_ptr + tx_size);
    fmt::println("tx_str    = {}", tx_str);
}