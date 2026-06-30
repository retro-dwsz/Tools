#pragma once

#ifndef TOOLS_VECTOR_INLINE_HPP
#define TOOLS_VECTOR_INLINE_HPP

#include "../Randomizer.hpp"
#include "../Types.hpp"
#include <algorithm>

namespace Tools::Vector {
    template <typename T>
    void Sort(vec<T>& v){
        std::ranges::sort(v);
    };

    template <typename T>
    void Shuffle(vec<T>& v){
        std::ranges::shuffle(v, Tools::Random::Gen64);
    };

    template <typename T>
    void Reverse(vec<T>& v){
        std::ranges::reverse(v);
    }
}

namespace Tools::Vector {
    template <typename T, typename... Args>
    void Combine(vec<T>* First, const Args&... Rest) {
        idx TotalSize = First->size() + (Rest.size() + ...);
        First->reserve(TotalSize);

        First->insert(First->end(), First->begin(), First->end());
        (First->insert(First->end(), Rest.begin(), Rest.end()), ...);
    }

    template <typename T, typename... Args>
    void Blend(vec<T>* First, const Args&... Rest) {
        idx TotalSize = First->size() + (Rest.size() + ...);
        First->reserve(TotalSize);

        First->insert(First->end(), First->begin(), First->end());
        (First->insert(First->end(), Rest.begin(), Rest.end()), ...);

        std::ranges::shuffle(First, Tools::Random::Gen64);
    }
}

namespace Tools::Vector {
    template<typename T>
    void RemoveDuplicates(vec<T>* Data, const idx MaxCount = 1, const bool Sorted = false) {
        if(Sorted){
            auto U = std::unique(Data->begin(), Data->end());
            Data->erase(U, Data->end());
        } else if(!Sorted){
            if (MaxCount == 0) {
                Data->clear();
                return;
            }
            umap<T, idx> count;
            vec<T> result;
            result.reserve(Data->size());

            for (const auto& item : Data) {
                idx& c = count[item];
                if (c < MaxCount) {
                    ++c;
                    result.push_back(item);
                }
            }
            Data = std::move(result);
        }
    }
}

template void Tools::Vector::Sort<i32>(vec<i32>& v);
template void Tools::Vector::Sort<i64>(vec<i64>& v);
template void Tools::Vector::Sort<f32>(vec<f32>& v);
template void Tools::Vector::Sort<f64>(vec<f64>& v);

#endif
