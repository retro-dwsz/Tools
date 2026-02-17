#pragma once

/* Pointer to data */
#include <cstdint>
template <typename T>
using ptr = T*;

/* Pointer to constant data */
template <typename T>
using ptrcd = const T*;

/* Constant pointer to data */
template <typename T>
using cptr = T const*;

/* Constant pointer to constant data */
template <typename T>
using cptrcd = const T *const;

using i32p = intptr_t;
using u32p = uintptr_t;