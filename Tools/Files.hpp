#pragma once

#include <memory>
#include <string>
#include <cstring>
#include <print>
#include <vector>
#include <fstream>

#include "Types.hpp"

namespace Tools::Files {
    /* ---- CPP str ---- */
    str ReadFile(cref<str> File){
        try {
            std::ifstream in(File, std::ios::binary);

            return str(
                std::istreambuf_iterator<char>(in),
                std::istreambuf_iterator<char>()
            );
        } catch(std::exception& e){
            std::println("Error while reading file -> {}", e.what());
            std::exit(1);
        }
    }

    void WriteFile(cref<str> File, cref<str> Content){
        if(File == "__NONE__"){
            return;
        } else {
            std::fstream Out(File, std::ios::out | std::ios::trunc);

            if(Out.is_open()){
                try{
                    Out.write(Content.data(), Content.size());
                    // Out << Content << "\n\n";
                    Out.close();
                } catch (std::exception& e){
                    std::println("Error while writing to file -> {}", e.what());
                }
            } else {
                throw std::domain_error("Failed to open");
                std::exit(2);
            }
        }
    }

    /* ---- C str ---- */
    cstr ReadFileC(cref<str> File){
        try {
            auto C = std::make_unique<cstr>(ReadFile(File).c_str());
            return *C;
        } catch(std::exception& e){
            std::println("Error while reading file -> {}", e.what());
            std::exit(1);
        }
    }

    void WriteFileC(cref<str> File, cstr& Content){
        if(File == "__NONE__"){
            return;
        } else {
            std::fstream Out(File, std::ios::out | std::ios::trunc);

            if(Out.is_open()){
                try{
                    Out.write(Content, sizeof(Content));
                    // Out << Content << "\n\n";
                    Out.close();
                } catch (std::exception& e){
                    std::println("Error while writing to file -> {}", e.what());
                }
            } else {
                throw std::domain_error("Failed to open");
                std::exit(2);
            }
        }
    }

    /* ---- Wide String ---- */
    wstr ReadFileW(cref<str> File){
        std::ifstream in(File, std::ios::binary);
        if(!in) throw std::runtime_error("Cannot open");

        vec<char> buf(
            (std::istreambuf_iterator<char>(in)),
            std::istreambuf_iterator<char>()
        );

        if(buf.size() % 2 != 0)
            throw std::runtime_error("Not UTF-16");

        wstr out = std::to_wstring(buf.size() / 2);
        std::memcpy(out.data(), buf.data(), buf.size());

        return out;
    }

    void WriteFileW(cref<str> File, const wstr& Content){
        if(File == "__NONE__") return;

        std::ofstream out(File, std::ios::binary | std::ios::trunc);
        if(!out){
            std::println("Error: cannot open {}", File);
            std::exit(2);
        }

        out.write(
            reinterpret_cast<cstr>(Content.data()),
            Content.size() * sizeof(wchar_t)
        );
    }
}
