#pragma once
#include "Types.hpp"

// Slice range x<->y
namespace Tools::Vector {
    // Return new
    template <typename T>
    vec<T> Slice(const vec<T> vec, i32 x, i32 y) {
        // Handle negative indices
        const auto size = static_cast<i32>(vec.size());
        if (x < 0) x = size + x;
        if (y < 0) y = size + y;

        // Validate bounds
        if (x < 0 || y < 0 || x >= size || y >= size || x > y) {
            throw std::out_of_range("Invalid slice range");
        }

        return ::vec<T>(vec.begin() + x, vec.begin() + y + 1);
    }

    // Inline (RC 1)
    template <typename T>
    void Slice(vec<T> &vec, i32 x, i32 y) {
        /* ... */
    }
}

// slice 0->n or n->Last
namespace Tools::Vector {
    // Return new
    template <typename T>
    vec<T> Slice(vec<T> vec, i32 n) {
        const auto size = static_cast<i32>(vec.size());
        int start, end;

        if (n >= 0) {
            // From beginning: [0, n]
            start = 0;
            end = n;
        } else {
            // From end: [size + n, size - 1]
            start = size + n;
            end = size - 1;
        }

        // Validate bounds
        if (start < 0 || end >= size || start > end) {
            throw std::out_of_range("Invalid slice range");
        }

        return ::vec<T>(vec.begin() + start, vec.begin() + end + 1);
    }

    // Inline
    template <typename T>
    vec<T> Slice(vec<T>& vec, i32 n) {
        /* ... */
    }
}

// Accumulators
namespace Tools::Vector{
    template<Numbers T>
    T Sum(vec<T> v){
        T result{};
        for(const auto x : v){
            result += x;
        }
        return result;
    }
    
    template<Numbers T>
    T Product(vec<T> v){
        T result{};
        for(const auto x : v){
            result *= x;
        }
        return result;
    }
    
    template <Numbers T>
    T Avg(vec<T> v){
        T sum = Sum(v);
        idx Size = v.size();

        return sum/Size;
    }
}

// Find elements
namespace Tools::Vector {
    // Binary search
    template<Numbers T>
    T Find(vec<T> v, T Element){
        idx low = 0;
        idx high = v.size() - 1;
        while (low <= high) {
            idx mid = low + (high - low) / 2;
            if (v[mid] == Element){
                return mid;
            }
            if (v[mid] < Element){
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        return -1;
    }

    // Find an element frequency
    template<Numbers T>
    idx FindFreq(vec<T> v, T Element){
        idx Count = 0;
        for(const auto i : v){
            if(i == Element){
                Count += 1;
            }
        }
        return Count;
    }

    // Find elements and frequency
    template<Numbers T>
    umap<T, idx> FindNFreq(vec<T> v){
        umap<T, idx> result{};

        for(const auto x : v){
            result[x]++; // hmm
        }

        return result;
    }

    // Extractor
    template<Numbers T>
    vec<T> ExtractUnique(const vec<T>& v){
        umap<T, bool> seen;
        vec<T> out;

        for (const auto x : v){
            if (!seen[x]){
                out.push_back(x);
                seen[x] = true;
            }
        }

        return out;
    }
}

template vec<i32> Tools::Vector::Slice<i32>(const vec<i32> v, i32 x, i32 y);
template vec<i64> Tools::Vector::Slice<i64>(const vec<i64> v, i32 x, i32 y);
template vec<f32> Tools::Vector::Slice<f32>(const vec<f32> v, i32 x, i32 y);
template vec<f64> Tools::Vector::Slice<f64>(const vec<f64> v, i32 x, i32 y);

template vec<i32> Tools::Vector::Slice<i32>(vec<i32> v, i32 n);
template vec<i64> Tools::Vector::Slice<i64>(vec<i64> v, i32 n);
template vec<f32> Tools::Vector::Slice<f32>(vec<f32> v, i32 n);
template vec<f64> Tools::Vector::Slice<f64>(vec<f64> v, i32 n);

template i32 Tools::Vector::Sum<i32>(vec<i32> v);
template i64 Tools::Vector::Sum<i64>(vec<i64> v);
template f32 Tools::Vector::Sum<f32>(vec<f32> v);
template f64 Tools::Vector::Sum<f64>(vec<f64> v);

template i32 Tools::Vector::Product(vec<i32> v);
template i64 Tools::Vector::Product(vec<i64> v);
template f32 Tools::Vector::Product(vec<f32> v);
template f64 Tools::Vector::Product(vec<f64> v);

template i32 Tools::Vector::Avg(vec<i32> v);
template i64 Tools::Vector::Avg(vec<i64> v);
template f32 Tools::Vector::Avg(vec<f32> v);
template f64 Tools::Vector::Avg(vec<f64> v);

/* Orders */
#include "Randomizer.hpp"
#include <algorithm>
#include <ranges>
namespace Tools::Vector {
    template <Numbers T>
    void Sort(vec<T>& v){
        std::sort(v.begin(), v.end());
    };
    
    template <Numbers T>
    vec<T> RetSort(const vec<T>& v){
        vec<T> out(v);
        std::ranges::sort(v);
    }

    template <Numbers T>
    void Shuffle(vec<T>& v){
        RdDevice rd;
        Twister32 gen(rd);
        std::shuffle(v.begin(), v.end(), gen);
    };

    template <Numbers T>
    vec<T> RetShuffle(const vec<T>& v){
        RdDevice rd;
        Twister32 gen(rd);

        vec<T> out(v);
        std::ranges::shuffle(out, gen);
        return out;
    };

    template <Numbers T>
    void Reverse(vec<T>& v){
        std::reverse(v.begin(), v.end());
    }

    template <Numbers T>
    vec<T> RetReverse(const vec<T>& v){
        vec<T> out(v);
        std::ranges::reverse(out);
        return out;
    }
}

/* Slices */
namespace Tools::Vector {
    // Return new vector versions
    template <typename T>
    vec<T> Slice(const vec<T>& vec, int x, int y) {
        // Handle negative indices
        const auto size = static_cast<int>(vec.size());
        if (x < 0) x = size + x;
        if (y < 0) y = size + y;

        // Validate bounds
        if (x < 0 || y < 0 || x >= size || y >= size || x > y) {
            throw std::out_of_range("Invalid slice range");
        }

        return ::vec<T>(vec.begin() + x, vec.begin() + y + 1);
    }

    template <typename T>
    vec<T> Slice(const vec<T>& vec, int n) {
        const auto size = static_cast<int>(vec.size());
        int start, end;

        if (n >= 0) {
            // From beginning: [0, n]
            start = 0;
            end = n;
        } else {
            // From end: [size + n, size - 1]
            start = size + n;
            end = size - 1;
        }

        // Validate bounds
        if (start < 0 || end >= size || start > end) {
            throw std::out_of_range("Invalid slice range");
        }

        return ::vec<T>(vec.begin() + start, vec.begin() + end + 1);
    }

    // Inline modification versions
    template <typename T>
    void SliceInl(vec<T>& vec, int x, int y) {
        // Handle negative indices
        const auto size = static_cast<int>(vec.size());
        if (x < 0) x = size + x;
        if (y < 0) y = size + y;

        // Validate bounds
        if (x < 0 || y < 0 || x >= size || y >= size || x > y) {
            throw std::out_of_range("Invalid slice range");
        }

        // Erase elements before x and after y
        vec.erase(vec.begin(), vec.begin() + x);
        vec.erase(vec.begin() + (y - x + 1), vec.end());
    }

    template <typename T>
    void SliceInl(vec<T>& vec, int n) {
        int size = static_cast<int>(vec.size());
        int start, end;

        if (n >= 0) {
            // From beginning: [0, n]
            start = 0;
            end = n;
        } else {
            // From end: [size + n, size - 1]
            start = size + n;
            end = size - 1;
        }

        // Validate bounds
        if (start < 0 || end >= size || start > end) {
            throw std::out_of_range("Invalid slice range");
        }

        vec.erase(vec.begin() + (end + 1), vec.end());
        vec.erase(vec.begin(), vec.begin() + start);
    }
}