#pragma once
#include "IVec.hpp"

/* Pop */
template <typename T>
T Tools::ivec<T>::pop(const idx& Index) {
    // bounds check (optional)
    // assert(Index < Size);

    // 1. Save values (copy / move)
    T value = std::move(ivec_data[Index]);

    // 2. Shift elemnt to left
    for (idx i = Index; i + 1 < ivec_size; ++i) {
        ivec_data[i] = std::move(ivec_data[i + 1]);
    }

    // 3. destroy lst elemen 
    ivec_data[ivec_size - 1].~T();

    // 4. update ivec_size
    --ivec_size;

    return value;
}

/* Pop 1st index */
template <typename T>
T Tools::ivec<T>::popFirst() {
    return pop(0);
}

/* Pop last index */
template <typename T>
T Tools::ivec<T>::popLast() {
    return pop(ivec_size-1);
}

/* Getter && Setter Operators */
template <typename T>
T& Tools::ivec<T>::operator[](idx Index) {
    // optional bounds check (debug)
    // assert(Index < ivec_Size);
    return ivec_data[Index];
}

template <typename T>
const T& Tools::ivec<T>::operator[](idx Index) const {
    // assert(Index < ivec_Size);
    return ivec_data[Index];
}

template <typename T>
Tools::ivec<T>& Tools::ivec<T>::operator=(const ivec& other) {
    if (this == &other) return *this;

    // destroy old
    for (idx i = 0; i < ivec_size; ++i)
        ivec_data[i].~T();
    operator delete[](ivec_data);

    // copy new
    ivec_size = other.ivec_size;
    ivec_capacity = other.ivec_capacity;

    ivec_data = static_cast<T*>(operator new[](ivec_capacity * sizeof(T)));
    for (idx i = 0; i < ivec_size; ++i)
        new (ivec_data + i) T(other.ivec_data[i]);

    return *this;
}