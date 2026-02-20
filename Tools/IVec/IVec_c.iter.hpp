#pragma once

#include "IVec_c.base.hpp"

/* First index getter */
template <typename T>
inline T Tools::ivec<T>::first() {
    return IVecData[0];
}

template <typename T>
inline T Tools::ivec<T>::first(idx n) {
    return IVecData[0 + n];
}

template <typename T>
inline T Tools::ivec<T>::front() {
    return first();
}

/* Last index getter */
template <typename T>
inline T Tools::ivec<T>::last() {
    return IVecData[IVecSize-1];
}

template <typename T>
inline T Tools::ivec<T>::last(idx n) {
    return IVecData[IVecSize-1 - n];
}

template <typename T>
inline T Tools::ivec<T>::back() {
    return last();
}

/* First index iterator */
template <typename T>
inline T* Tools::ivec<T>::begin() {
    return IVecData;
}

/* Last index iterator */
template <typename T>
inline T* Tools::ivec<T>::end() {
    return IVecData + IVecSize;
}

/* Constant First index iterator */
template <typename T>
inline const T* Tools::ivec<T>::cbegin() {
    return IVecData;
}

/* Constant Last index iterator */
template <typename T>
inline const T* Tools::ivec<T>::cend() {
    return IVecData + IVecSize;
}

/* First index reference */
template <typename T>
inline T& Tools::ivec<T>::refbegin() {
    if (IVecSize == 0)
        throw std::out_of_range("ivec is empty");
    return IVecData[0];
}

/* Last index reference */
template <typename T>
inline T& Tools::ivec<T>::refend() {
    if (IVecSize == 0)
        throw std::out_of_range("ivec is empty");
    return IVecData[IVecSize - 1];
}