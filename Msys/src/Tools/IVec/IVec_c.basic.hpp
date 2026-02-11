#pragma once
#include "IVec.hpp"

/* Reserve (with NONE value) */
template <typename T>
void Tools::ivec<T>::reserve(idx NewCapacity) {
    if(NewCapacity <= ivec_capacity) {
        return;
    }

    T* NewData = static_cast<T*>(
        operator new[](NewCapacity * sizeof(T))
    );

    for(idx i = 0; i < ivec_size; i++) {
        new (NewData + i) T(std::move_if_noexcept(ivec_data[i]));
    }

    for(idx i = 0; i < ivec_size; i++) {
        ivec_data[i].~T();
    }

    operator delete[](ivec_data);

    ivec_data = NewData;
    ivec_capacity = NewCapacity;
}

/* Resize (with filler value given) */
template <typename T>
void Tools::ivec<T>::resize(idx NewSize, const T& fill) {
    // Shrink
    if (NewSize < ivec_size) {
        for (idx i = NewSize; i < ivec_size; ++i) {
            ivec_data[i].~T();
        }
        ivec_size = NewSize;
        return;
    }

    // Grow
    if (NewSize > ivec_size) {
        reserve(NewSize);

        for (idx i = ivec_size; i < NewSize; ++i) {
            new (ivec_data + i) T(fill);
        }
        ivec_size = NewSize;
    }
}

/* Append single element (lvalue) */
template <typename T>
void Tools::ivec<T>::append(const T& value) {
    if (ivec_size == ivec_capacity) {
        reserve(ivec_capacity == 0 ? 1 : ivec_capacity * 2);
    }
    new (ivec_data + ivec_size) T(value);
    ++ivec_size;
}

/* Append single element (rvalue) */
template <typename T>
void Tools::ivec<T>::append(const T&& value) {
    if (ivec_size == ivec_capacity) {
        reserve(ivec_capacity == 0 ? 1 : ivec_capacity * 2);
    }
    new (ivec_data + ivec_size) T(std::move(value));
    ++ivec_size;
}

/* Append ivec */
template <typename T>
void Tools::ivec<T>::append(const ivec<T>& other) {
    if (ivec_size == ivec_capacity)
        reserve(ivec_capacity == 0 ? 1 : ivec_capacity * 2);

    new (ivec_data + ivec_size) ivec<T>(other); // copy ivec
    ++ivec_size;
}

/* Append vec */
template <typename T>
void Tools::ivec<T>::append(const vec<T>& other) {
    if (ivec_size == ivec_capacity)
        reserve(ivec_capacity == 0 ? 1 : ivec_capacity * 2);

    new (ivec_data + ivec_size) ivec<T>(other); // convert vec -> ivec
    ++ivec_size;
}

/* Extend with ivec */
template <typename T>
void Tools::ivec<T>::extend(const ivec<T>& other) {
    if (other.ivec_size == 0) return;

    // pastikan kapasitas cukup
    if (ivec_size + other.ivec_size > ivec_capacity) {
        reserve(ivec_size + other.ivec_size);
    }

    // copy satu per satu
    for (idx i = 0; i < other.ivec_size; ++i) {
        new (ivec_data + ivec_size) T(other.ivec_data[i]);
        ++ivec_size;
    }
}

/* Extend with vec */
template <typename T>
void Tools::ivec<T>::extend(const vec<T>& other) {
    if (other.empty()) return;

    if (ivec_size + other.size() > ivec_capacity) {
        reserve(ivec_size + other.size());
    }

    for (const auto& elem : other) {
        new (ivec_data + ivec_size) T(elem);
        ++ivec_size;
    }
}

template <typename T>
idx Tools::ivec<T>::GetSize() const noexcept {
    return this->ivec_size;
}