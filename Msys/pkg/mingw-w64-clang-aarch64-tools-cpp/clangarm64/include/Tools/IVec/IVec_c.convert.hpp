#pragma once

#ifndef TOOLS_IVEC_CONVERT_HPP
#define TOOLS_IVEC_CONVERT_HPP

#include <format>
#include "IVec_c.base.hpp"

/* To Vector */
template <typename T>
vec<T> Tools::ivec<T>::toVector() {
    vec<T> out;
    out.reserve(IVecSize);
    
    for(auto i = 0; i < IVecSize; i++){
        out.push_back(IVecData[i]);
    }
    
    return out;
}

/* To Span */
template <typename T>
span<T> Tools::ivec<T>::toSpan() {
    return {IVecData, IVecSize};
}

/* To Array */
template <typename T>
template <idx S>
arr<T, S> Tools::ivec<T>::toArray() {
    static_assert(S > 0, "Array ivec_size must be positive");
    const idx n = (IVecSize < S ? IVecSize : S);   // prevent overflow

    arr<T, n> out{};

    for(idx i = 0; i < n; i++){
        out[i] = IVecData[i];
    }

    return out;
}

/* To C Array */
template <typename T>
T* Tools::ivec<T>::toCArr() {
    // return ivec_data;
    if (IVecSize == 0) return nullptr;

    T* out = static_cast<T*>(operator new[](IVecSize * sizeof(T)));
    for (idx i = 0; i < IVecSize; ++i) {
        new (out + i) T(IVecData[i]);
    }
    return out; 
}

/* Convert almost everything to string */
template <typename T>
template<typename... Args>
void Tools::ivec<T>::emplaceFront(Args&&... args) {
    emplaceAt(std::forward<Args>(args)..., 0);
}

template <typename T>
str Tools::ivec<T>::fstr() {
    str out = "[";

    for (idx i = 0; i < IVecSize; ++i) {
        out += std::format("{}", IVecData[i]);
        if (i + 1 < IVecSize) out += ", ";
    }

    out += "]";
    return out;
}

#endif
