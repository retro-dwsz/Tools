#pragma once

#ifndef RDTOOLS_CORE_DEBUG_HPP
#define RDTOOLS_CORE_DEBUG_HPP

#include "Base.Class.hpp"

/* ---- Debug data ---- */
namespace rdt {
    template <PStrTypes Char>
    idx PStr<Char>::size() const noexcept {
        return this->StrSize;
    }

    template <PStrTypes Char>
    idx PStr<Char>::sizeBytes() const noexcept {
        return this->StrSize * sizeof(Char{});
    }

    template <PStrTypes Char>
    bool PStr<Char>::empty() const noexcept {
        return this->StrSize == 0;
    }

    template <PStrTypes Char>
    const Char* PStr<Char>::data() const noexcept {
        return this->StrData;
    }
}

#endif
