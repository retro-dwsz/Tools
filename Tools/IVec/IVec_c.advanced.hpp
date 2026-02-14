#pragma once

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
void Tools::ivec<T>::sliceIln(i64 n) {
    *this = slice(n);
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::slice(i64 x, i64 y) {
    if (ivec_size == 0) return {};

    if (x < 0) x += ivec_size;
    if (y < 0) y += ivec_size;

    if (x < 0) x = 0;
    if (y >= ivec_size) y = ivec_size - 1;
    if (x > y) return {};

    Tools::ivec<T> out;
    out.reserve(y - x + 1);

    for (idx i = x; i <= y; ++i)
        out.append(ivec_data[i]);

    return out;
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::slice(i64 n) {
    if (ivec_size == 0) return {};

    if (n >= 0)
        return slice(0, n);
    else
        return slice(ivec_size + n, ivec_size - 1);
}

/* Find utils */
template <typename T>
void Tools::ivec<T>::clear() {
    for (idx i = 0; i < ivec_size; ++i) {
        ivec_data[i].~T();
    }
    ivec_size = 0;
}

template <typename T>
bool Tools::ivec<T>::isEmpty() {
    return ivec_size == 0;
}

template <typename T>
void Tools::ivec<T>::appendFirst(const T& Element) {
    if (ivec_size == ivec_capacity)
        reserve(ivec_capacity == 0 ? 1 : ivec_capacity * 2);

    // Shift all elements to right by 1, from backward so no one is overriden 
    for (idx i = ivec_size; i > 0; --i) {
        new (ivec_data + i) T(std::move_if_noexcept(ivec_data[i - 1]));
        ivec_data[i - 1].~T();
    }

    // Put new element in front
    new (ivec_data) T(Element);
    ++ivec_size;
}

template <typename T>
void Tools::ivec<T>::appendAt(const T& Element, idx n) {
    if (n > ivec_size) n = ivec_size; // clamp (insert at end)

    if (ivec_size == ivec_capacity)
        reserve(ivec_capacity ? ivec_capacity * 2 : 1);

    // Shift elements right (backwards!)
    for (idx i = ivec_size; i > n; --i) {
        new (ivec_data + i) T(std::move(ivec_data[i - 1]));
        ivec_data[i - 1].~T();
    }

    // Insert new element
    new (ivec_data + n) T(Element);

    ++ivec_size;
}

template <typename T>
bool Tools::ivec<T>::contains(const T& Element) {
    for(idx i = 0; i < ivec_size; ++i) {
        if(ivec_data[i] == Element)
            return true;
    }
    return false;
}

template <typename T>
idx Tools::ivec<T>::find(const T& Element) {
    for(idx i = 0; i < ivec_size; ++i) {
        if(ivec_data[i] == Element)
            return i;
    }
    return ivec_size;   // not found
}

template <typename T>
idx Tools::ivec<T>::findFreq(const T& Element) {
    idx count = 0;
    for(idx i = 0; i < ivec_size; ++i) {
        if(ivec_data[i] == Element)
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

    for(idx i = 0; i < ivec_size; ++i) {
        if(ivec_data[i] == Element) {
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
    if (!pos || pos < ivec_data || pos >= ivec_data + ivec_size)
        return; // or throw

    idx index = pos - ivec_data; // pointer arithmetic

    // destroy element
    ivec_data[index].~T();

    // shift left
    for (idx i = index; i + 1 < ivec_size; ++i){
        new (ivec_data + i) T(std::move(ivec_data[i + 1]));
        ivec_data[i + 1].~T();
    }

    --ivec_size;
}

template <typename T>
void Tools::ivec<T>::eraseInl(T* first, T* last){
    if (!first || !last) return;
    if (first < ivec_data) first = ivec_data;
    if (last > ivec_data + ivec_size) last = ivec_data + ivec_size;
    if (first >= last) return;

    idx begin_idx = first - ivec_data;
    idx end_idx   = last - ivec_data;
    idx count     = end_idx - begin_idx;

    // destroy range
    for (idx i = begin_idx; i < end_idx; ++i)
        ivec_data[i].~T();

    // shift tail
    for (idx i = end_idx; i < ivec_size; ++i){
        new (ivec_data + (i - count)) T(std::move(ivec_data[i]));
        ivec_data[i].~T();
    }

    ivec_size -= count;
}

/* Remove duplicates (make all unique) */


template <typename T>
u64 Tools::ivec<T>::memory() {
    u64 s = sizeof(T) * this->ivec_size;
    return s;
}

template <typename T>
template <typename... Args>
void Tools::ivec<T>::emplace(Args&&... args) {
    if (ivec_size == ivec_capacity)
        reserve(ivec_capacity ? ivec_capacity * 2 : 1);

    new (ivec_data + ivec_size) T(std::forward<Args>(args)...);
    ++ivec_size;
}

template <typename T>
template<typename... Args>
void Tools::ivec<T>::emplaceAt(Args&&... args, idx n) {
    if (n > ivec_size) n = ivec_size; // clamp ke akhir

    if (ivec_size == ivec_capacity)
        reserve(ivec_capacity ? ivec_capacity * 2 : 1);

    // Shift elements right (backwards!)
    for (idx i = ivec_size; i > n; --i) {
        new (ivec_data + i) T(std::move_if_noexcept(ivec_data[i - 1]));
        ivec_data[i - 1].~T();
    }

    // Build object at nth position
    new (ivec_data + n) T(std::forward<Args>(args)...);

    ++ivec_size;
}

template <typename T>
template<typename... Args>
void Tools::ivec<T>::emplaceFront(Args&&... args) {
    emplaceAt(std::forward<Args>(args)..., 0);
}

template <typename T>
str Tools::ivec<T>::fstr() {
    str out = "[";

    for (idx i = 0; i < ivec_size; ++i) {
        out += std::format("{}", ivec_data[i]);
        if (i + 1 < ivec_size) out += ", ";
    }

    out += "]";
    return out;
}

template <typename T>
Tools::ivec<T> Tools::ivec<T>::uniques(idx n){
    // vec<T> Out(this);
    // auto U = std::unique(Out.begin(), Out.end());
    // Out.erase(U, Out.end());
    // return ivec<T>(Out);

    if (n <= 0 || ivec_size <= 1) return;

    std::unordered_map<T, idx> freq;
    idx write = 0;

    for (idx read = 0; read < ivec_size; ++read){
        T& val = ivec_data[read];
        idx& count = freq[val];

        if (count < n){
            if (write != read){
                // move element forward
                new (ivec_data + write) T(std::move(val));
                ivec_data[read].~T();
            }
            ++write;
            ++count;
        } else {
            // destroy skipped duplicate
            ivec_data[read].~T();
        }
    }

    ivec_size = write;
}

template <typename T>
void Tools::ivec<T>::uniquesInl(idx n){
    Tools::ivec<T> out;
    if (n <= 0 || ivec_size == 0) return out;

    out.reserve(ivec_size);
    std::unordered_map<T, idx> freq;

    for (idx i = 0; i < ivec_size; ++i){
        const T& val = ivec_data[i];
        idx& count = freq[val];

        if (count < n){
            out.append(val);
            ++count;
        }
    }

    return out;
}
