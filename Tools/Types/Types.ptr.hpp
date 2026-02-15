#pragma once

/* Pointer to data */
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
