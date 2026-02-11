#pragma once

#include "../Types.hpp"

// Find elements
namespace Tools::Vector {
    // Binary search
    template<Numbers T>
    T Find(cref<vec<T>> v, T Element){
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
    idx FindFreq(cref<vec<T>> v, T Element){
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
    umap<T, idx> FindNFreq(cref<vec<T>> v){
        umap<T, idx> result{};

        for(const auto x : v){
            result[x]++; // hmm
        }

        return result;
    }

    // Extractor
    template<Numbers T>
    vec<T> ExtractUnique(cref<vec<T>> v){
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