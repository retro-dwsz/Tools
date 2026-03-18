#pragma once

#ifndef TOOLS_IVEC_GETSET_HPP
#define TOOLS_IVEC_GETSET_HPP

#include "IVec_c.base.hpp"

/* Python like functions */

// __add__
template <typename T>
Tools::ivec<T> Tools::ivec<T>::operator+(const Tools::ivec<T>& other) {
    Tools::ivec<T> Out;
    Out(this);
    Out.reserve(other.IVecCapacity);
    
    for(auto& i : other){
        Out.append(i);
    }
    return Out;
};

// __iadd__
// no

// __mul__
template <typename T>
Tools::ivec<T> Tools::ivec<T>::operator*(const idx count) {
    Tools::ivec<T> Out;
    Out.reserve(this->IVecSize * count);

    for (idx i = 0; i < count; i++) {
        Out.extend(this);
    }

    return Out;
}

// __imul__
// no

// __eq__ ???
template <typename T>
bool Tools::ivec<T>::operator==(const ivec<T>& other) {
    bool Sames;

    if(this->IVecSize != other.IVecSize){
        return false;
    } else {
        for(idx i = 0; i < this->IVecSize; i++){
            if(this[i] == other[i]){
                Sames = true;
            } else {
                Sames = false;
            }
        }
    }
    return Sames;
}

// __ne__

// __contains__

// __len__

// __lt__

// __le__

// __gt__

// __ge__


/* Pop */
template <typename T>
T Tools::ivec<T>::pop(const idx& Index) {
    // bounds check (optional)
    // assert(Index < Size);

    // 1. Save values (copy / move)
    T value = std::move(IVecData[Index]);

    // 2. Shift elemnt to left
    for (idx i = Index; i + 1 < IVecSize; ++i) {
        IVecData[i] = std::move(IVecData[i + 1]);
    }

    // 3. destroy lst elemen 
    IVecData[IVecSize - 1].~T();

    // 4. update ivec_size
    --IVecSize;

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
    return pop(IVecSize-1);
}

/* Getter && Setter Operators */
template <typename T>
T& Tools::ivec<T>::operator[](idx Index) {
    // optional bounds check (debug)
    // assert(Index < ivec_Size);
    return IVecData[Index];
}

template <typename T>
const T& Tools::ivec<T>::operator[](idx Index) const {
    // assert(Index < ivec_Size);
    return IVecData[Index];
}

template <typename T>
Tools::ivec<T>& Tools::ivec<T>::operator=(const ivec& other) {
    if (this == &other) return *this;

    // destroy old
    for (idx i = 0; i < IVecSize; ++i)
        IVecData[i].~T();
    operator delete[](IVecData);

    // copy new
    IVecSize = other.IVecSize;
    IVecCapacity = other.IVecCapacity;
    IVecData = static_cast<T*>(operator new[](IVecCapacity * sizeof(T)));

    for (idx i = 0; i < IVecSize; ++i) {
        new (IVecData + i) T(other.IVecData[i]);
    }

    return *this;
}

#endif
