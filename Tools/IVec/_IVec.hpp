#pragma once

#ifndef TOOLS_IVEC_PACKED_HPP
#define TOOLS_IVEC_PACKED_HPP

#include "../Types.hpp"

/* Legend:
 *
 * -inl means inline, default is return new
 * r- means reverse
 * rev- means reference
 */

/** Base class **/
#include "Base.hpp"

/** Datas **/
#include "Data.hpp"

/** Inits **/
#include "Init.hpp"

/** Basic features **/
#include "Basic.hpp"

/** Getter && Setter **/
#include "Getset.hpp"

/** Advanced **/
#include "Advanced.hpp"

/** Iterators **/
#include "Iter.hpp"

/**  Converter **/
#include "Convert.hpp"


// namespace Test {
//     template <typename T>
//     using ivec = Tools::ivec<T>;

//     void Test(){
//         ivec<f32> IArr1 = {1.68, 2.72, 3.14};
//         ivec<f32> IArr2 = {1.68, 2.72, 3.14};
//         ivec<ivec<f32>> IArr3 = {IArr1, Iarr2};
//     }
// }

#endif
