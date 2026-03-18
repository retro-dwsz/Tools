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
#include "IVec_c.base.hpp"

/** Datas **/
#include "IVec_c.data.hpp"

/** Inits **/
#include "IVec_c.init.hpp"

/** Basic features **/
#include "IVec_c.basic.hpp"

/** Getter && Setter **/
#include "IVec_c.getset.hpp"

/** Advanced **/
#include "IVec_c.advanced.hpp"

/** Iterators **/
#include "IVec_c.iter.hpp"

/**  Converter **/
#include "IVec_c.convert.hpp"


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
