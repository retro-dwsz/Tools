#pragma once

#ifndef TOOLS_VECTOR_INLINE_HPP
#define TOOLS_VECTOR_INLINE_HPP

#include "../Randomizer.hpp"
#include "../Types.hpp"
#include <algorithm>

namespace Tools::VectorInl {
    template <Numbers T>
    void Sort(vec<T>& v){
        std::sort(v.begin(), v.end());
    };

    template <Numbers T>
    void Shuffle(vec<T>& v){
        RdDevice rd;
        Twister32 gen(rd);
        std::shuffle(v.begin(), v.end(), gen);
    };

    template <Numbers T>
    void Reverse(vec<T>& v){
        std::reverse(v.begin(), v.end());
    }
}

template void Tools::VectorInl::Sort<i32>(vec<i32>& v);
template void Tools::VectorInl::Sort<i64>(vec<i64>& v);
template void Tools::VectorInl::Sort<f32>(vec<f32>& v);
template void Tools::VectorInl::Sort<f64>(vec<f64>& v);

#endif
