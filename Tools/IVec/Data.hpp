#pragma once

#ifndef TOOLS_IVEC_DATA_HPP
#define TOOLS_IVEC_DATA_HPP

#include "Base.hpp"

template <typename T>
T* Tools::ivec<T>::data() noexcept {
    return IVecData;
}

template <typename T>
idx Tools::ivec<T>::size() noexcept {
    return IVecSize;
}

template <typename T>
idx Tools::ivec<T>::capacity() noexcept {
    return IVecCapacity;
}

#endif
