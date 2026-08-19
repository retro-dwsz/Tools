#pragma once

#ifndef RDTOOLS_CORE_DEBUG_HPP
#define RDTOOLS_CORE_DEBUG_HPP

#include "Base.Class.hpp"

/* ---- Debug data ---- */
namespace rdt {
    template <ValidTypes Char>
    idx PStr<Char>::size() const noexcept {
        return this->StrSize;
    }

    template <ValidTypes Char>
    idx PStr<Char>::sizeBytes() const noexcept {
        return this->StrSize * sizeof(Char{});
    }

    template <ValidTypes Char>
    bool PStr<Char>::empty() const noexcept {
        return this->StrSize == 0;
    }

    template <ValidTypes Char>
    const Char* PStr<Char>::data() const noexcept {
        return this->StrData;
    }
}

#endif
