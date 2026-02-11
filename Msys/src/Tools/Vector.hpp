#pragma once

// Accumulators
#include "Vector/Vector.accumulator.hpp"

/* Orders */
#include "Vector/Vector.order.hpp"

/* Slices */
#include "Vector/Vector.slice.hpp"

/* Inline Slices */
#include "Vector/Vector.slice.inl.hpp"

template vec<i32> Tools::Vector::Slice<i32>(cref<vec<i32>> vec, idx x, idx y);
template vec<i64> Tools::Vector::Slice<i64>(cref<vec<i64>> vec, idx x, idx y);
template vec<f32> Tools::Vector::Slice<f32>(cref<vec<f32>> vec, idx x, idx y);
template vec<f64> Tools::Vector::Slice<f64>(cref<vec<f64>> vec, idx x, idx y);

template vec<i32> Tools::Vector::Slice<i32>(cref<vec<i32>> vec, idx n);
template vec<i64> Tools::Vector::Slice<i64>(cref<vec<i64>> vec, idx n);
template vec<f32> Tools::Vector::Slice<f32>(cref<vec<f32>> vec, idx n);
template vec<f64> Tools::Vector::Slice<f64>(cref<vec<f64>> vec, idx n);

template i32 Tools::Vector::Sum<i32>(cref<vec<i32>> v);
template i64 Tools::Vector::Sum<i64>(cref<vec<i64>> v);
template f32 Tools::Vector::Sum<f32>(cref<vec<f32>> v);
template f64 Tools::Vector::Sum<f64>(cref<vec<f64>> v);

template i32 Tools::Vector::Product(cref<vec<i32>> v);
template i64 Tools::Vector::Product(cref<vec<i64>> v);
template f32 Tools::Vector::Product(cref<vec<f32>> v);
template f64 Tools::Vector::Product(cref<vec<f64>> v);

template i32 Tools::Vector::Avg(cref<vec<i32>> v);
template i64 Tools::Vector::Avg(cref<vec<i64>> v);
template f32 Tools::Vector::Avg(cref<vec<f32>> v);
template f64 Tools::Vector::Avg(cref<vec<f64>> v);