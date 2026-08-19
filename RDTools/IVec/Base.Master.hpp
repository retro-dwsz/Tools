/* ---- Begin: IVec/Base.Master.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_BASE_MASTER_HPP
#define TOOLS_IVEC_BASE_MASTER_HPP

#include <Tools/Types.hpp>
#include <Tools/Casting.hpp>

/**
 * @file Base.Master.hpp
 * @brief Master aggregation header for the Tools::ivec<T> container.
 *
 * @details This file serves as the single entry point for the ivec implementation.
 * It includes all segmented module headers in the correct dependency order.
 * Users should typically include "IVec.hpp" which transitively includes this file.
 *
 * @par Naming Conventions
 * - `-Inl` suffix: In-place mutation (modifies the container directly).
 *   Methods without this suffix return a new modified copy.
 * - `r-` prefix / `r` suffix: Reverse operation (e.g., rsort).
 * - `ref-` prefix: Returns a reference instead of a copy.
 * - `c-` prefix: Explicit const version (e.g., cbegin, crefbegin).
 *
 * @note Formatter headers (Format.std.hpp, Format.fmt.hpp) are intentionally
 *       NOT included here to avoid SFINAE conflicts with <fmt/ranges.h>.
 *       Include them explicitly in your translation unit when needed.
 *
 * @see Tools::ivec
 */

/** Base class **/
#include "Base.Class.hpp"       ///< Main class for ivec; for class ivec<T>

/** Inits **/
#include "Init.Ctor.hpp"        ///< Carious Ctors: ivec(), ivec(initl<T> Data), ivec(const vec<T>& Data), ivec(const ivec& other), ivec(ivec&& other), ivec(const span<const T>& Data)
#include "Init.Dtor.hpp"        ///< Destructor so we can nuke everything after usage: ~ivec()

/** Core features **/
#include "Core.Data.hpp"        ///< for .data(), .size(), .capacity(), memory()
#include "Core.State.hpp"       ///< for .clear(), isEmpty()
#include "Core.Resize.hpp"      ///< for .resize(const idx Size, const T& fill), .reserve(const idx Size)
#include "Core.Append.hpp"      ///< for .append(const T&), .append(T&& Element), .append(span<const T> D)
#include "Core.Append.Idx.hpp"  ///< for .appendFirst(const T& Element), .appendAt(const T& Element, idx At)
#include "Core.Emplace.hpp"     ///< for .emplace(Args&&... args)
#include "Core.Emplace.Idx.hpp" ///< for .emplaceFront(Args&&... args), .emplaceAt(idx At, Args&&... args)
#include "Core.Extend.hpp"      ///< for .extend(span<const T> D)

/** Accessors **/
#include "Access.Getset.hpp"    ///< for operator[](idx Index), .at(const idx& Index), operator=(const ivec& Other)
#include "Access.Pop.hpp"       ///< for .pop(const idx& Index), .popFirst(), .popLast()
#include "Access.Elements.hpp"  ///< for .first() .last() .first(const idx n) .last(const idx n) .front() .back()
#include "Access.Iter.hpp"      ///< for .begin() .cbegin() .end() .cend()
#include "Access.Ref.hpp"       ///< for .refbegin() .crefbegin() .refend() .crefend()

/** Dunder **/
#include "Opr.Dunder.hpp"       ///< for operator+ operator* operator==

/** Items **/
#include "Items.Orders.hpp"     ///< for .shuffle() .sort() .rsort() .reverse() .shuffleInl() .sortInl() .rsortInl() .reverseInl()
#include "Items.Query.hpp"      ///< for .uniques(const idx n) .uniquesInl(const idx n) .reassign(std::span<const T> Data, const idx Start) .reassignInl(std::span<const T> Data, idx Start)
#include "Items.Find.hpp"       ///< for .contains(const T& Element) .find(const T& Element) .findFreq(const T& Element) .findAll(const T& Element)
#include "Items.Slice.hpp"      ///< for .SliceInl(const i64 From, const i64 To) .SliceInl(const i64 n) .Slice(i64 From, i64 To) .Slice(const i64 n)
#include "Items.Erase.Idx.hpp"  ///< for .Erase(idx Pos) .Erase(idx From, idx To) .eraseInl(idx Pos) .eraseInl(idx From, idx To)
#include "Items.Erase.Ptr.hpp"  ///< for .Erase(T* pos) .Erase(T* begin, T* end) .eraseInl(T* pos) .eraseInl(T* begin, T* end)

/** functional **/
#include "Functional.hpp"       ///< for .map(Fn&& Gen), filter(Fn&& Pred)

/** Converter **/
#include "Converter.hpp"        ///< for .fstr(), .join(strview Delim) .toVector() .toSpan() .toCArr(span<T> Destination) .toArray() .to<class Container>()
#include "Converter.Opr.hpp"    ///< for operator span<T>() operator span<const T>() operator vec<T>() operator vec<const T>()

/** Legacy choise of diction **/
#include "Legacy.hpp"           ///< for .push_back(const T& Element) .push_front(const T& Element) .insert(ivec&& v) .insert(span<const T>& v) .insert(const T& Element, const idx At) .insert(const T* From, const T* To)

/** formater for std & fmt (Opt-In Only) **/
//  Warning: Do NOT uncomment these in this master header.
//      Including custom formatters alongside <fmt/ranges.h> causes SFINAE ambiguity.
//      Users must opt-in by including these headers directly in their .cpp files.
//      Or pick only ivec or others.
//
// #include "Format.std.hpp"       ///< for std::formatter<rdt::ivec<T>, char> : std::formatter<T>
// #include "Format.fmt.hpp"       ///< for fmt::formatter<rdt::ivec<T>, char> : fmt::formatter<T>

/** Debugging with statc_assert **/
//  Warning: Do NOT uncomment these in this master header.
//      Including this may break some functions and/or halt compilation
// #include "Base.RangesQualification.hpp"  ///< for std::ranges testing with static_assert
#endif

/* ---- End: IVec/Base.Master.hpp ---- */
