#pragma once

#ifndef TOOLS_IVEC_DATA_HPP
#define TOOLS_IVEC_DATA_HPP

#include "IVec_c.base.hpp"

template <typename T>
T* Tools::ivec<T>::data() {
    return IVecData;
}

template <typename T>
idx Tools::ivec<T>::size() {
    return IVecSize;
}

template <typename T>
idx Tools::ivec<T>::capacity() {
    return IVecCapacity;
}

#endif
