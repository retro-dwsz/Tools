#pragma once

#ifndef TOOLS_FILES_HPP
#define TOOLS_FILES_HPP

#include "FeatureCheck.hpp"

#include <iostream>
#include <format>

#include <cstring>
#include <fstream>

#include "Types.hpp"

namespace rdt::Files {
    /* ---- CPP str ---- */
    str ReadFile(const str& File){
        try {
            std::ifstream in(File, std::ios::binary);

            return str(
                std::istreambuf_iterator<char>(in),
                std::istreambuf_iterator<char>()
            );
        } catch(std::exception& e){
            std::cout << std::format("Error while reading file -> {}", e.what());
            std::exit(1);
        }
    }

    void WriteFile(const str& File, const str& Content){
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
                    std::cout << std::format("Error while writing to file -> {}", e.what());
                }
            } else {
                throw std::domain_error("Failed to open");
                std::exit(2);
            }
        }
    }

    /* ---- C str ---- */
    cstr ReadFileC(const str& File){
        try {
            auto C = std::make_unique<cstr>(ReadFile(File).c_str());
            return *C;
        } catch(std::exception& e){
            std::cout << std::format("Error while reading file -> {}", e.what());
            std::exit(1);
        }
    }

    void WriteFileC(const str& File, cstr& Content){
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
                    std::cout << std::format("Error while writing to file -> {}", e.what());
                }
            } else {
                throw std::domain_error("Failed to open");
                std::exit(2);
            }
        }
    }

    /* ---- Wide String ---- */
    wstr ReadFileW(const str& File){
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

    void WriteFileW(const str& File, const wstr& Content){
        if(File == "__NONE__") return;

        std::ofstream out(File, std::ios::binary | std::ios::trunc);
        if(!out){
            std::cout << std::format("Error: cannot open {}", File);
            std::exit(2);
        }

        out.write(
            reinterpret_cast<cstr>(Content.data()),
            Content.size() * sizeof(wchar_t)
        );
    }
}

#endif