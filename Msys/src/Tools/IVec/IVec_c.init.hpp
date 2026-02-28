#pragma once

#ifndef TOOLS_IVEC_INIT_HPP
#define TOOLS_IVEC_INIT_HPP

#include "IVec_c.base.hpp"

/* Init */

// Default constructor
template <typename T>
Tools::ivec<T>::ivec() : IVecData(nullptr), IVecSize(0), IVecCapacity(0) {}

// Constructors 
template <typename T>
Tools::ivec<T>::ivec(initl<T> init) : IVecData(nullptr), IVecSize(0), IVecCapacity(0) {
    if(init.size() == 0){ return; }

    IVecCapacity = init.size();
    IVecData = static_cast<T*>(
        operator new[](IVecCapacity * sizeof(T))
    );

    idx i = 0;
    for(const T& x : init){
        new(IVecData + i) T(x);
        i++;
    }
    IVecSize = IVecCapacity;
}

template <typename T>
Tools::ivec<T>::ivec(const ivec& other) : IVecData(nullptr), IVecSize(other.IVecSize), IVecCapacity(other.IVecCapacity) {
    if (IVecCapacity == 0) return;

    IVecData = static_cast<T*>(operator new[](IVecCapacity * sizeof(T)));
    for (idx i = 0; i < IVecSize; ++i) {
        new (IVecData + i) T(other.IVecData[i]);
    }
}

template <typename T>
Tools::ivec<T>::ivec(Tools::ivec<T>&& other)
    : IVecData(other.IVecData), IVecSize(other.IVecSize), IVecCapacity(other.IVecCapacity)
{
    other.IVecData = nullptr;
    other.IVecSize = 0;
    other.IVecCapacity = 0;
}


template <typename T>
Tools::ivec<T>::ivec(const vec<T>& v) : IVecData(nullptr), IVecSize(0), IVecCapacity(0) 
{
    if(v.empty()){ return; }

    IVecCapacity = v.size();
    IVecSize     = v.size();
    IVecData = static_cast<T*>(operator new[](IVecCapacity * sizeof(T)));

    idx i = 0;
    for (const T& e : v) {
        new (IVecData + i) T(e);
        ++i;
    }
};

// DeConstructor 
template <typename T>
Tools::ivec<T>::~ivec<T>() {
    for(idx i = 0; i < IVecSize; i++){
        IVecData[i].~T();
    }

    operator delete[](IVecData);
}

#endif
