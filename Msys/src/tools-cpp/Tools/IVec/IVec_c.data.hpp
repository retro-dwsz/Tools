#pragma once

#include "IVec.hpp"

template <typename T>
T* Tools::ivec<T>::data() {
    return ivec_data;
}

template <typename T>
idx Tools::ivec<T>::size() {
    return ivec_size;
}

template <typename T>
idx Tools::ivec<T>::capacity() {
    return ivec_capacity;
}
