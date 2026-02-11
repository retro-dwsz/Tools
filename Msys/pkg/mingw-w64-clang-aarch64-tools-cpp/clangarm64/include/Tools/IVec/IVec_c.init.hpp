#pragma once
#include "IVec.hpp"

/* Init */

// Default constructor
template <typename T>
Tools::ivec<T>::ivec() : ivec_data(nullptr), ivec_size(0), ivec_capacity(0) {}

// Constructors 
template <typename T>
Tools::ivec<T>::ivec(initl<T> init) : ivec_data(nullptr), ivec_size(0), ivec_capacity(0) {
    if(init.size() == 0){ return; }

    ivec_capacity = init.size();
    ivec_data = static_cast<T*>(
        operator new[](ivec_capacity * sizeof(T))
    );

    idx i = 0;
    for(const T& x : init){
        new(ivec_data + i) T(x);
        i++;
    }
    ivec_size = ivec_capacity;
}

template <typename T>
Tools::ivec<T>::ivec(const ivec& other) : ivec_data(nullptr), ivec_size(other.ivec_size), ivec_capacity(other.ivec_capacity) {
    if (ivec_capacity == 0) return;

    ivec_data = static_cast<T*>(operator new[](ivec_capacity * sizeof(T)));
    for (idx i = 0; i < ivec_size; ++i) {
        new (ivec_data + i) T(other.ivec_data[i]);
    }
}

template <typename T>
Tools::ivec<T>::ivec(Tools::ivec<T>&& other)
    : ivec_data(other.ivec_data), ivec_size(other.ivec_size), ivec_capacity(other.ivec_capacity)
{
    other.ivec_data = nullptr;
    other.ivec_size = 0;
    other.ivec_capacity = 0;
}


template <typename T>
Tools::ivec<T>::ivec(const vec<T>& v) : ivec_data(nullptr), ivec_size(0), ivec_capacity(0) 
{
    if(v.empty()){ return; }

    ivec_capacity = v.size();
    ivec_size     = v.size();
    ivec_data = static_cast<T*>(operator new[](ivec_capacity * sizeof(T)));

    idx i = 0;
    for (const T& e : v) {
        new (ivec_data + i) T(e);
        ++i;
    }
};

// DeConstructor 
template <typename T>
Tools::ivec<T>::~ivec<T>() {
    for(idx i = 0; i < ivec_size; i++){
        ivec_data[i].~T();
    }

    operator delete[](ivec_data);
}