#pragma once

#ifndef RDTOOLS_INIT_CTOR_HPP
#define RDTOOLS_INIT_CTOR_HPP

#include "Base.Class.hpp"

/* ---- CTOR ---- */
namespace rdt {
    template <ValidTypes Char>
    PStr<Char>::PStr() noexcept {
        this->StrData = nullptr;
        this->StrSize = 0;
    };

    template <ValidTypes Char>
    PStr<Char>::PStr(const Char* p) noexcept {
        this->StrData = p;
        // Using char_traits to support ALL char types
        // Handle nullptr so no crash
        this->StrSize = p ? std::char_traits<Char>::length(p) : 0;
    }

    template <ValidTypes Char>
    PStr<Char>::PStr(const Char* p, idx len) noexcept {
        this->StrData = p;
        this->StrSize = len;
    }
}

#endif
