#pragma once

#ifndef TOOLS_IVEC_ADVANCED_HPP
#define TOOLS_IVEC_ADVANCED_HPP

#include "IVec_c.base.hpp"

#include <utility>
#include <random>
#include <algorithm>
#include <format>

/* Slicers */
template <typename T>
void Tools::ivec<T>::sliceInl(i64 x, i64 y) {
    *this = slice(x, y);
};

template <typename T>
void Tools::ivec<T>::sliceInl(i64 n) {
    *this = slice(n);
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::slice(i64 x, i64 y) {
    if (IVecSize == 0) return {};

    if (x < 0) x += IVecSize;
    if (y < 0) y += IVecSize;

    if (x < 0) x = 0;
    if (y >= IVecSize) y = IVecSize - 1;
    if (x > y) return {};

    Tools::ivec<T> out;
    out.reserve(y - x + 1);

    for (idx i = x; i <= y; ++i)
        out.append(IVecData[i]);

    return out;
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::slice(i64 n) {
    if (IVecSize == 0) return {};

    if (n >= 0)
        return slice(0, n);
    else
        return slice(IVecSize + n, IVecSize - 1);
}

/* Find utils */
template <typename T>
void Tools::ivec<T>::clear() {
    for (idx i = 0; i < IVecSize; ++i) {
        IVecData[i].~T();
    }
    IVecSize = 0;
}

template <typename T>
bool Tools::ivec<T>::isEmpty() {
    return IVecSize == 0;
}

template <typename T>
void Tools::ivec<T>::appendFirst(const T& Element) {
    if (IVecSize == IVecCapacity)
        reserve(IVecCapacity == 0 ? 1 : IVecCapacity * 2);

    // Shift all elements to right by 1, from backward so no one is overriden
    for (idx i = IVecSize; i > 0; --i) {
        new (IVecData + i) T(std::move_if_noexcept(IVecData[i - 1]));
        IVecData[i - 1].~T();
    }

    // Put new element in front
    new (IVecData) T(Element);
    ++IVecSize;
}

template <typename T>
void Tools::ivec<T>::appendAt(const T& Element, idx n) {
    if (n > IVecSize) n = IVecSize; // clamp (insert at end)

    if (IVecSize == IVecCapacity)
        reserve(IVecCapacity ? IVecCapacity * 2 : 1);

    // Shift elements right (backwards!)
    for (idx i = IVecSize; i > n; --i) {
        new (IVecData + i) T(std::move(IVecData[i - 1]));
        IVecData[i - 1].~T();
    }

    // Insert new element
    new (IVecData + n) T(Element);

    ++IVecSize;
}

template <typename T>
bool Tools::ivec<T>::contains(const T& Element) {
    for(idx i = 0; i < IVecSize; ++i) {
        if(IVecData[i] == Element)
            return true;
    }
    return false;
}

template <typename T>
idx Tools::ivec<T>::find(const T& Element) {
    for(idx i = 0; i < IVecSize; ++i) {
        if(IVecData[i] == Element)
            return i;
    }
    return IVecSize;   // not found
}

template <typename T>
idx Tools::ivec<T>::findFreq(const T& Element) {
    idx count = 0;
    for(idx i = 0; i < IVecSize; ++i) {
        if(IVecData[i] == Element)
            ++count;
    }
    return count;
}

template <typename T>
pair<idx, vec<T>> Tools::ivec<T>::findAll(
    const T& Element
) {
    idx count = 0;
    vec<T> idxs;

    for(idx i = 0; i < IVecSize; ++i) {
        if(IVecData[i] == Element) {
            ++count;
            idxs.push_back(i);
        }
    }

    return {count, idxs};
}

/* Random utils */

template <typename T>
void Tools::ivec<T>::shuffleInl() {
    static std::mt19937_64 rng{ std::random_device{}() };
    std::shuffle(begin(), end(), rng);
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::shuffle() {
    Tools::ivec<T> out(*this);
    out.shuffleInl();
    return out;
}

template <typename T>
void Tools::ivec<T>::sortInl() {
    // std::ranges::sort(*this);
    std::sort(begin(), end());
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::sort() {
    Tools::ivec<T> out(*this);
    out.reverseInl();
    return out;
}

template <typename T>
void Tools::ivec<T>::rsortInl() {
    // std::ranges::sort(*this, std::ranges::greater{});
    std::sort(begin(), end(), std::greater<T>{});
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::rsort() {
    Tools::ivec<T> out(*this);
    std::sort(*out, std::greater<T>{});
    return out;
}

template <typename T>
void Tools::ivec<T>::reverseInl() {
    // std::ranges::reverse(*this);
    std::reverse(begin(), end());
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::reverse() {
    Tools::ivec<T> out(*this);
    out.reverseInl();
    return out;
}

/* Eraser */
template <typename T>
Tools::ivec<T> Tools::ivec<T>::erase(T* pos){
    ivec out(this);
    out.eraseInl(pos);
    return out;
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::erase(T* first, T* last){
    ivec out(this);
    out.eraseInl(first, last);
    return out;
}


template <typename T>
void Tools::ivec<T>::eraseInl(T* pos){
    if (!pos || pos < IVecData || pos >= IVecData + IVecSize)
        return; // or throw

    idx index = pos - IVecData; // pointer arithmetic

    // destroy element
    IVecData[index].~T();

    // shift left
    for (idx i = index; i + 1 < IVecSize; ++i){
        new (IVecData + i) T(std::move(IVecData[i + 1]));
        IVecData[i + 1].~T();
    }

    --IVecSize;
}

/* Eraser modern */
template <typename T>
Tools::ivec<T> Tools::ivec<T>::erase(idx pos){
    return this->erase(this->begin() + pos);
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::erase(idx begin, idx end){
    return this->erase(this->begin() + begin, this->begin() + end);
}

template <typename T>
void Tools::ivec<T>::eraseInl(idx pos) {
    this->eraseInl(this->begin() + pos);
}

template <typename T>
void Tools::ivec<T>::eraseInl(idx begin, idx end){
    this->eraseInl(this->begin() + begin, this->begin() + end);
}


template <typename T>
void Tools::ivec<T>::eraseInl(T* first, T* last){
    if (!first || !last) return;
    if (first < IVecData) first = IVecData;
    if (last > IVecData + IVecSize) last = IVecData + IVecSize;
    if (first >= last) return;

    idx begin_idx = first - IVecData;
    idx end_idx   = last - IVecData;
    idx count     = end_idx - begin_idx;

    // destroy range
    for (idx i = begin_idx; i < end_idx; ++i)
        IVecData[i].~T();

    // shift tail
    for (idx i = end_idx; i < IVecSize; ++i){
        new (IVecData + (i - count)) T(std::move(IVecData[i]));
        IVecData[i].~T();
    }

    IVecSize -= count;
}

template <typename T>
u64 Tools::ivec<T>::memory() {
    u64 s = sizeof(T) * this->IVecSize;
    return s;
}

template <typename T>
template <typename... Args>
void Tools::ivec<T>::emplace(Args&&... args) {
    if (IVecSize == IVecCapacity)
        reserve(IVecCapacity ? IVecCapacity * 2 : 1);

    new (IVecData + IVecSize) T(std::forward<Args>(args)...);
    ++IVecSize;
}

template <typename T>
template<typename... Args>
void Tools::ivec<T>::emplaceAt(Args&&... args, idx n) {
    if (n > IVecSize) n = IVecSize; // clamp ke akhir

    if (IVecSize == IVecCapacity)
        reserve(IVecCapacity ? IVecCapacity * 2 : 1);

    // Shift elements right (backwards!)
    for (idx i = IVecSize; i > n; --i) {
        new (IVecData + i) T(std::move_if_noexcept(IVecData[i - 1]));
        IVecData[i - 1].~T();
    }

    // Build object at nth position
    new (IVecData + n) T(std::forward<Args>(args)...);

    ++IVecSize;
}

/* Remove duplicated elements by n times */
template <typename T>
Tools::ivec<T> Tools::ivec<T>::uniques(idx n){
    Tools::ivec<T> out;
    if (n <= 0 || IVecSize == 0) return ivec<T>{};

    out.reserve(IVecSize);
    std::unordered_map<T, idx> freq;

    for (idx i = 0; i < IVecSize; ++i){
        const T& val = IVecData[i];
        idx& count = freq[val];

        if (count < n){
            out.append(val);
            ++count;
        }
    }

    return out;
}

template <typename T>
void Tools::ivec<T>::uniquesInl(idx n){
    if (n <= 0 || IVecSize <= 1) return;

    std::unordered_map<T, idx> freq;
    idx write = 0;

    for (idx read = 0; read < IVecSize; ++read){
        T& val = IVecData[read];
        idx& count = freq[val];

        if (count < n){
            if (write != read){
                // move element forward
                new (IVecData + write) T(std::move(val));
                IVecData[read].~T();
            }
            ++write;
            ++count;
        } else {
            // destroy skipped duplicate
            IVecData[read].~T();
        }
    }

    IVecSize = write;
}

#endif
