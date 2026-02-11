#pragma once

#include "../Types.hpp"

namespace Tools::Vector{
    template<Numbers T>
    T Sum(cref<vec<T>> v){
        T result{};
        for(const auto x : v){
            result += x;
        }
        return result;
    }
    
    template<Numbers T>
    T Product(cref<vec<T>> v){
        T result{};
        for(const auto x : v){
            result *= x;
        }
        return result;
    }
    
    template <Numbers T>
    T Avg(cref<vec<T>> v){
        T sum = Sum(v);
        idx Size = v.size();

        return sum/Size;
    }
}