#pragma once

#ifndef TOOLS_IVEC_BASIC_HPP
#define TOOLS_IVEC_BASIC_HPP

#include "IVec_c.base.hpp"

/* Reserve (with NONE value) */
template <typename T>
void Tools::ivec<T>::reserve(idx NewCapacity) {
    if(NewCapacity <= IVecCapacity) {
        return;
    }

    T* NewData = static_cast<T*>(
        operator new[](NewCapacity * sizeof(T))
    );

    for(idx i = 0; i < IVecSize; i++) {
        new (NewData + i) T(std::move_if_noexcept(IVecData[i]));
    }

    for(idx i = 0; i < IVecSize; i++) {
        IVecData[i].~T();
    }

    operator delete[](IVecData);

    IVecData = NewData;
    IVecCapacity = NewCapacity;
}

/* Resize (with filler value given) */
template <typename T>
void Tools::ivec<T>::resize(idx NewSize, const T& fill) {
    // Shrink
    if (NewSize < IVecSize) {
        for (idx i = NewSize; i < IVecSize; ++i) {
            IVecData[i].~T();
        }
        IVecSize = NewSize;
        return;
    }

    // Grow
    if (NewSize > IVecSize) {
        reserve(NewSize);

        for (idx i = IVecSize; i < NewSize; ++i) {
            new (IVecData + i) T(fill);
        }
        IVecSize = NewSize;
    }
}

/* Append single element (lvalue) */
template <typename T>
void Tools::ivec<T>::append(const T& value) {
    if (IVecSize == IVecCapacity) {
        reserve(IVecCapacity == 0 ? 1 : IVecCapacity * 2);
    }
    new (IVecData + IVecSize) T(value);
    ++IVecSize;
}

/* Append single element (rvalue) */
template <typename T>
void Tools::ivec<T>::append(const T&& value) {
    if (IVecSize == IVecCapacity) {
        reserve(IVecCapacity == 0 ? 1 : IVecCapacity * 2);
    }
    new (IVecData + IVecSize) T(std::move(value));
    ++IVecSize;
}

/* Append ivec */
template <typename T>
void Tools::ivec<T>::append(const ivec<T>& other) {
    if (IVecSize == IVecCapacity)
        reserve(IVecCapacity == 0 ? 1 : IVecCapacity * 2);

    new (IVecData + IVecSize) ivec<T>(other); // copy ivec
    ++IVecSize;
}

/* Append vec */
template <typename T>
void Tools::ivec<T>::append(const vec<T>& other) {
    if (IVecSize == IVecCapacity)
        reserve(IVecCapacity == 0 ? 1 : IVecCapacity * 2);

    new (IVecData + IVecSize) ivec<T>(other); // convert vec -> ivec
    ++IVecSize;
}

/* Extend with ivec */
template <typename T>
void Tools::ivec<T>::extend(const ivec<T>& other) {
    if (other.IVecSize == 0) return;

    // pastikan kapasitas cukup
    if (IVecSize + other.IVecSize > IVecCapacity) {
        reserve(IVecSize + other.IVecSize);
    }

    // copy satu per satu
    for (idx i = 0; i < other.IVecSize; ++i) {
        new (IVecData + IVecSize) T(other.IVecData[i]);
        ++IVecSize;
    }
}

/* Extend with vec */
template <typename T>
void Tools::ivec<T>::extend(const vec<T>& other) {
    if (other.empty()) return;

    if (IVecSize + other.size() > IVecCapacity) {
        reserve(IVecSize + other.size());
    }

    for (const auto& elem : other) {
        new (IVecData + IVecSize) T(elem);
        ++IVecSize;
    }
}

template <typename T>
idx Tools::ivec<T>::GetSize() const noexcept {
    return this->IVecSize;
}

#endif
