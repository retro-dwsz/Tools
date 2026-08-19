#pragma once

#ifndef TOOLS_VECTOR_ACCUMUATOR_HPP
#define TOOLS_VECTOR_ACCUMUATOR_HPP

#include "../Types.hpp"

namespace rdt::Vector{
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

template i32 rdt::Vector::Sum<i32>(const vec<i32>& v);
template i64 rdt::Vector::Sum<i64>(const vec<i64>& v);
template f32 rdt::Vector::Sum<f32>(const vec<f32>& v);
template f64 rdt::Vector::Sum<f64>(const vec<f64>& v);

template i32 rdt::Vector::Product(const vec<i32>& v);
template i64 rdt::Vector::Product(const vec<i64>& v);
template f32 rdt::Vector::Product(const vec<f32>& v);
template f64 rdt::Vector::Product(const vec<f64>& v);

template i32 rdt::Vector::Avg(const vec<i32>& v);
template i64 rdt::Vector::Avg(const vec<i64>& v);
template f32 rdt::Vector::Avg(const vec<f32>& v);
template f64 rdt::Vector::Avg(const vec<f64>& v);

#endif
