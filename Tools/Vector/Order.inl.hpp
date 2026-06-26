#pragma once

#ifndef TOOLS_VECTOR_INLINE_HPP
#define TOOLS_VECTOR_INLINE_HPP

#include "../Randomizer.hpp"
#include "../Types.hpp"
#include <algorithm>

namespace Tools::VectorInl {
    template <typename T>
    void Sort(vec<T>& v){
        std::sort(v.begin(), v.end());
    };

    template <typename T>
    void Shuffle(vec<T>& v){
        std::shuffle(v.begin(), v.end(), Tools::Random::Gen64);
    };

    template <typename T>
    void Reverse(vec<T>& v){
        std::reverse(v.begin(), v.end());
    }

    template <typename T, typename... Args>
    void Combine(vec<T>& First, const Args&... Rest) {
        idx TotalSize = First.size() + (Rest.size() + ...);
        First.reserve(TotalSize);

        First.insert(First.end(), First.begin(), First.end());
        (First.insert(First.end(), Rest.begin(), Rest.end()), ...);
    }

    template <typename T, typename... Args>
    void Blend(vec<T>& First, const Args&... Rest) {
        idx TotalSize = First.size() + (Rest.size() + ...);
        First.reserve(TotalSize);

        First.insert(First.end(), First.begin(), First.end());
        (First.insert(First.end(), Rest.begin(), Rest.end()), ...);

        std::ranges::shuffle(First, Tools::Random::Gen64);
    }
}

template void Tools::VectorInl::Sort<i32>(vec<i32>& v);
template void Tools::VectorInl::Sort<i64>(vec<i64>& v);
template void Tools::VectorInl::Sort<f32>(vec<f32>& v);
template void Tools::VectorInl::Sort<f64>(vec<f64>& v);

#endif
