#pragma once

#include "IVec_c.base.hpp"

/* To Vector */
template <typename T>
vec<T> Tools::ivec<T>::toVector() {
    vec<T> out;
    out.reserve(ivec_size);
    
    for(auto i = 0; i < ivec_size; i++){
        out.push_back(ivec_data[i]);
    }
    
    return out;
}

/* To Span */
template <typename T>
span<T> Tools::ivec<T>::toSpan() {
    return {ivec_data, ivec_size};
}

/* To Array */
template <typename T>
template <idx S>
arr<T, S> Tools::ivec<T>::toArray() {
    static_assert(S > 0, "Array ivec_size must be positive");
    const idx n = (ivec_size < S ? ivec_size : S);   // prevent overflow

    arr<T, n> out{};

    for(idx i = 0; i < n; i++){
        out[i] = ivec_data[i];
    }

    return out;
}

/* To C Array */
template <typename T>
T* Tools::ivec<T>::toCArr() {
    // return ivec_data;
    if (ivec_size == 0) return nullptr;

    T* out = static_cast<T*>(operator new[](ivec_size * sizeof(T)));
    for (idx i = 0; i < ivec_size; ++i) {
        new (out + i) T(ivec_data[i]);
    }
    return out; 
}