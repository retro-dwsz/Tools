#pragma once

#include "../Randomizer.hpp"
#include "../Types.hpp"
#include <algorithm>

namespace Tools::Vector {    
    template <Numbers T>
    vec<T> Sort(cref<vec<T>> v){
        vec<T> out(v);
        std::ranges::sort(v);
    }

    template <Numbers T>
    void SortInl(ref<vec<T>> v){
        std::sort(v.begin(), v.end());
    };

    template <Numbers T>
    vec<T> Shuffle(cref<vec<T>> v){
        RdDevice rd;
        Twister32 gen(rd);

        vec<T> out(v);
        std::ranges::shuffle(out, gen);
        return out;
    };

    template <Numbers T>
    void ShuffleInl(ref<vec<T>> v){
        RdDevice rd;
        Twister32 gen(rd);
        std::shuffle(v.begin(), v.end(), gen);
    };

    template <Numbers T>
    vec<T> Reverse(cref<vec<T>> v){
        vec<T> out(v);
        std::ranges::reverse(out);
        return out;
    }

    template <Numbers T>
    void ReverseInl(ref<vec<T>> v){
        std::reverse(v.begin(), v.end());
    }
}