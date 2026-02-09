#pragma once
#include "IVec.hpp"

/* First index getter */
template <typename T>
inline T Tools::ivec<T>::first() {
    return ivec_data[0];
}

template <typename T>
inline T Tools::ivec<T>::front() {
    return first();
}

/* Last index getter */
template <typename T>
inline T Tools::ivec<T>::last() {
    return ivec_data[ivec_size-1];
}

template <typename T>
inline T Tools::ivec<T>::back() {
    return last();
}

/* First index iterator */
template <typename T>
inline T* Tools::ivec<T>::begin() {
    return ivec_data;
}

/* Last index iterator */
template <typename T>
inline T* Tools::ivec<T>::end() {
    return ivec_data + ivec_size;
}

/* Constant First index iterator */
template <typename T>
inline const T* Tools::ivec<T>::cbegin() {
    return ivec_data;
}

/* Constant Last index iterator */
template <typename T>
inline const T* Tools::ivec<T>::cend() {
    return ivec_data + ivec_size;
}

/* First index reference */
template <typename T>
inline T& Tools::ivec<T>::revbegin() {
    if (ivec_size == 0)
        throw std::out_of_range("ivec is empty");
    return ivec_data[0];
}

/* Last index reference */
template <typename T>
inline T& Tools::ivec<T>::revend() {
    if (ivec_size == 0)
        throw std::out_of_range("ivec is empty");
    return ivec_data[ivec_size - 1];
}