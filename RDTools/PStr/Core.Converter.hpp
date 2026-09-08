#pragma once

#ifndef RDTOOLS_CORE_CONVERTER_HPP
#define RDTOOLS_CORE_CONVERTER_HPP

#include "Base.Class.hpp"

/* ---- Converters ---- */
namespace rdt {
    template <PStrTypes Char>
    PStr<Char>::operator const Char*() const noexcept {
        return this->StrData;
    }

    template <PStrTypes Char>
    PStr<Char>::operator std::span<const Char>() const noexcept {
        return std::span<const Char>(this->StrData, this->StrSize);
    }

    template <PStrTypes Char>
    PStr<Char>::operator std::basic_string<Char>() const {
        return std::basic_string<Char>(this->StrData, this->StrSize);
    }
}

#endif
