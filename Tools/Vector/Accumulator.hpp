#pragma once

#ifndef TOOLS_VECTOR_ACCUMUATOR_HPP
#define TOOLS_VECTOR_ACCUMUATOR_HPP

#include "../Types.hpp"

namespace Tools::Vector{
    template<typename T>
    T Sum(const vec<T>& v){
        T result{};
        for(const auto x : v){
            result += x;
        }
        return result;
    }

    template<typename T>
    T Product(const vec<T>& v){
        T result{};
        for(const auto x : v){
            result *= x;
        }
        return result;
    }

    template <typename T>
    T Avg(const vec<T>& v){
        T sum = Sum(v);
        idx Size = v.size();

        return sum/Size;
    }
}

template i32 Tools::Vector::Sum<i32>(const vec<i32>& v);
template i64 Tools::Vector::Sum<i64>(const vec<i64>& v);
template f32 Tools::Vector::Sum<f32>(const vec<f32>& v);
template f64 Tools::Vector::Sum<f64>(const vec<f64>& v);

template i32 Tools::Vector::Product(const vec<i32>& v);
template i64 Tools::Vector::Product(const vec<i64>& v);
template f32 Tools::Vector::Product(const vec<f32>& v);
template f64 Tools::Vector::Product(const vec<f64>& v);

template i32 Tools::Vector::Avg(const vec<i32>& v);
template i64 Tools::Vector::Avg(const vec<i64>& v);
template f32 Tools::Vector::Avg(const vec<f32>& v);
template f64 Tools::Vector::Avg(const vec<f64>& v);

#endif
