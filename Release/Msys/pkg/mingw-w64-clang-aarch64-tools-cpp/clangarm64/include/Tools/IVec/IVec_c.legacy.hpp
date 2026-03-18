#pragma once

#ifndef TOOLS_IVEC_LEGACY_HPP
#define TOOLS_IVEC_LEGACY_HPP

#include "IVec_c.base.hpp"
#include <utility>

/* Append single element (legacy) */
template <typename T>
void Tools::ivec<T>::push_back(const T& Element) {
    append(std::forward<T>(Element));
}

// Append from first index (Legacy-ish)
template <typename T>
void Tools::ivec<T>::push_front(const T& Element){
    appendFirst(std::forward<T>(Element));
}

// Extend using elemnent from ivector (legacy)
template <typename T>
void Tools::ivec<T>::insert(const ivec<T>& v){
    extend(std::forward<T>(v));
}

// Extend using elemnent from vector (legacy)
template <typename T>
void Tools::ivec<T>::insert(const vec<T>& v){
    extend(std::forward<T>(v));
}

// Legacy getter
template <typename T>
T Tools::ivec<T>::at(idx Index){
    return this[Index];
}

// Append at Nth index (legacy)
template <typename T>
void Tools::ivec<T>::insert(const T& Element, idx At){
    appendAt(std::forward<T&>(Element), std::forward<idx>(At));
}

// Extend using elemnent from any iterable (legacy iterator)
template <typename T>
void Tools::ivec<T>::insert(const T* A, const T* B){
    /* ??? */
}

#endif
