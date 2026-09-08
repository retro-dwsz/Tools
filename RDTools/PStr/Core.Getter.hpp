#pragma once

#ifndef RDTOOLS_CORE_GETTER_HPP
#define RDTOOLS_CORE_GETTER_HPP

#include "Base.Class.hpp"

/* ---- Getter ---- */
namespace rdt {
    template <PStrTypes Char>
    const Char& PStr<Char>::operator[](idx i) const noexcept {
        return this->StrData[i];
    }

    template <PStrTypes Char>
    const Char& PStr<Char>::at(const idx i) const noexcept {
        if(this->StrSize > i) {
            throw std::out_of_range(std::format("Inputed index ({}) bigger than size ({})", i, this->StrSize));
        };
        return this->StrData[i];
    }
}

#endif
