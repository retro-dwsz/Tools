#pragma once

#include "../Types.hpp"
#include <algorithm>

// Find elements
namespace Tools::Vector {
    // Binary search
    template<Numbers T>
    T Find_binary(const vec<T>& v, const T Element){
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

    // Binary search, first index + value
    template<Numbers T>
    pair<idx, T> FindP_binary(const vec<T>& v, const T Element){
        idx low = 0;
        idx high = v.size() - 1;
        while (low <= high) {
            idx mid = low + (high - low) / 2;
            if (v[mid] == Element){
                return pair{mid, Element};
            }
            if (v[mid] < Element){
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        return {-1, -1};
    }

    // Linear search
    template <Numbers T>
    T Find_line(const vec<T>& v, const T Element){
        for(idx i = 0; i < v.size(); i++){
            if(v[i] == Element){
                return v[i];
            }
        }
    }

    // Linear search, first index + value
    template <Numbers T>
    T FindP_line(const vec<T>& v, const T Element){
        for(idx i = 0; i < v.size(); i++){
            if(v[i] == Element){
                return pair{i, Element};
            }
        }
    }

    // Find an element frequency
    template<Numbers T>
    idx FindFreq(const vec<T>& v, const T Element){
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
    umap<T, idx> FindNFreq(const vec<T>& v){
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

    // Remove duplicated values
    template<typename T>
    vec<T> RemoveDuplicates(const vec<T>& Data){
        vec<T> Out(Data);
        auto U = std::unique(Out.begin(), Out.end());
        Out.erase(U, Out.end());
        return Out;
    }

    // Remove duplicated values inline
    template<typename T>
    void RemoveDuplicatesIln(vec<T>& Data){
        auto U = std::unique(Data.begin(), Data.end());
        Data.erase(U, Data.end());
    }
}