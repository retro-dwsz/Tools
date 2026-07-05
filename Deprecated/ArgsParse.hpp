#pragma once

#define DEPRECATED 1

#ifndef TOOLS_ARGPARSE_HPP
#define TOOLS_ARGPARSE_HPP

#include <string>
#include <concepts>
#include <map>
#include <type_traits>
#include <unordered_map>
#include <utility>
#include <algorithm>
#include <vector>

/* ---- Basic Argv<str, str> ---- */
namespace Tools::ArgsParse {
    using str = std::string;
    using Dict = std::unordered_map<str, str>;

    // Parser: argc + argv[] -> dictionary<str, str>
    inline Dict ParseArgv(const int argc, const char* argv[]) {
        Dict args;
        std::string key, val;

        for (auto i = 1; i < argc; ++i) {
            std::string token(argv[i]);
            // Process only arguments start with "-"
            if (token.rfind('-', 0) == 0) {
                // Format: --param=value or -p=value
                auto eqPos = token.find('=');
                if (eqPos != std::string::npos) {
                    key = token.substr(0, eqPos);   // --param
                    val = token.substr(eqPos + 1);  // value
                    args[key] = val;
                } else {
                    // Fallback to this if no "=" found (boolean true)
                    args[token] = "true";
                }
            }
        }
        return args;
    }

    // Parser: argc + argv[] -> dictionary<str, str>
    inline Dict ParseArgv(int argc, const char* argv[], const str& Split) {
        Dict args;

        for (int i = 1; i < argc; ++i) {
            str token = argv[i];

            // Proses hanya argumen yang mulai dengan '-'
            if (token.rfind('-', 0) == 0) {
                // Cari posisi splitter custom (->, _, =, dsb)
                size_t pos = token.find(Split);

                if (pos != str::npos) {
                    // ambil bagian sebelum dan sesudah splitter
                    str key = token.substr(0, pos);
                    str val = token.substr(pos + Split.length());
                    args[key] = val;
                }
                else {
                    // fallback → boolean true
                    args[token] = "true";
                }
            }
        }

        return args;
    }

    // Parser: argc + argv[] -> dictionary<str, str>
    // With alternatives
    template <typename... Splits>
    inline Dict ParseArgv(int argc, const char* argv[], Splits&&... splits) {
        Dict args;
        std::vector<str> splitters = { std::forward<Splits>(splits)... };

        for (int i = 1; i < argc; ++i) {
            str token = argv[i];

            if (token.rfind('-', 0) != 0)
                continue;

            bool found = false;
            for (const auto& split : splitters) {
                size_t pos = token.find(split);
                if (pos != str::npos) {
                    str key = token.substr(0, pos);
                    str val = token.substr(pos + split.length());
                    args[key] = val;
                    found = true;
                    break;
                }
            }

            if (!found)
                args[token] = "true";
        }

        return args;
    }

    // Get args
    template <std::convertible_to<str>... Keys>
    str GetArgs(const Dict& args, Keys&&... keys ) {
        for(const auto& key: {std::forward<Keys>(keys)...} ) {
            if(args.contains(key)) {
                return args.at(key);
            }
        }
        return "";
    }

    // Get args with default
    template <typename T, std::convertible_to<str>... Keys>
    str GetArgsD(const Dict& args, T Default, Keys&&... keys ) {
        for(const auto& key: {std::forward<Keys>(keys)...} ) {
            if(args.contains(key)) {
                return args.at(key);
            }
        }
        return std::to_string(Default);
    }
}

#endif
