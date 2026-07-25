/* ---- Begin: IVec/Functional.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_FUNC_HPP
#define TOOLS_IVEC_FUNC_HPP

/**
 * @file Functional.hpp
 * @brief Python-style functional transformations for Tools::ivec<T>.
 *
 * @details Provides map() and filter() operations that return new vectors:
 *          - map(Fn):    Transform each element via callable → ivec<U>
 *          - filter(Pred): Keep elements matching predicate → ivec<T>
 *
 * @note Both operations are non-mutating. Original vector is never modified.
 *       These are eager operations — results are computed immediately.
 *       For lazy evaluation, consider using std::views with begin()/end().
 *
 * @see Tools::ivec::begin
 * @see Tools::ivec::extend
 */

#include "Base.Class.hpp"

namespace Tools {
    /// @brief Transform each element via callable, returning a new ivec.
    /// @tparam Fn Callable type accepting const T& and returning any type U.
    /// @param Func Transformation function applied to each element.
    /// @return New ivec<U> where U = decltype(Func(const T&)). Same size as source.
    /// @note Exact pre-allocation via reserve(size()). Zero intermediate reallocations.
    ///       Equivalent to Python: [func(x) for x in self].
    ///       Example: ivec<int>{1,2,3}.map([](int x){ return x * 2.0; })
    ///                -> ivec<double>{2.0, 4.0, 6.0}
    template <typename T>
    template <typename Fn>
    // requires std::invocable<Fn>
    requires requires(Fn&& f, const T& x) { f(x); }
    auto ivec<T>::Map(Fn&& Func) const
        -> ivec<decltype(Func(std::declval<const T&>()))>
    {
        using ResultT = decltype(Func(std::declval<const T&>()));

        ivec<ResultT> Out;
        Out.reserve(m_Size); // Exact pre-allocation, no growth overhead

        for (idx i = 0; i < m_Size; ++i) {
            Out.append(Func(m_Data[i]));
        }
        return Out;
    }

    /// @brief Filter elements matching predicate, returning a new ivec.
    /// @tparam Fn Predicate type accepting const T& and returning bool-like value.
    /// @param Pred Predicate function. Elements where Pred(elem) == true are kept.
    /// @return New ivec<T> containing only matching elements in original order.
    /// @note Two-pass algorithm: first pass counts matches for exact pre-allocation,
    ///       second pass copies matching elements. O(n) time, O(k) space where k = matches.
    ///       Equivalent to Python: [x for x in self if pred(x)].
    ///       Example: ivec<int>{1,2,3,4,5}.filter([](int x){ return x % 2 == 0; })
    ///                -> ivec<int>{2, 4}
    template <typename T>
    template <typename Fn>
    // requires std::invocable<Fn>
    requires std::predicate<Fn, const T&>
    [[nodiscard]] ivec<T> ivec<T>::Filter(Fn&& Pred) const {
        ivec<T> Out;
        // Pre-scan to count matches -> exact single allocation
        idx MatchCount = 0;
        for (idx i = 0; i < m_Size; ++i) {
            if (Pred(m_Data[i])) ++MatchCount;
        }
        Out.reserve(MatchCount);

        // Copy matching elements
        for (idx i = 0; i < m_Size; ++i) {
            if (Pred(m_Data[i])) {
                Out.append(m_Data[i]);
            }
        }
        return Out;
    }
}

#endif
/* ---- End: IVec/Functional.hpp ---- */
