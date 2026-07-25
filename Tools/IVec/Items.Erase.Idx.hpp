/* ---- Begin: IVec/Items.Erase.idx.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ITEMS_ERASE_IDX_HPP
#define TOOLS_IVEC_ITEMS_ERASE_IDX_HPP

/**
 * @file Items.Erase.idx.hpp
 * @brief Index-based element removal for Tools::ivec<T>.
 *
 * @details Provides erase() and eraseInl() overloads that accept index positions.
 *          These delegate to the pointer-based implementations in Items.Eraser.ptr.hpp.
 *
 * @par slice() vs erase() — Key Difference
 * Both operations work on sub-ranges, but with **opposite** semantics:
 * - **slice(From, To)**: KEEPS elements in [From, To], discards everything else.
 *   Think of it as "extract this window."
 * - **erase(From, To)**: REMOVES elements in [From, To), keeps everything else.
 *   Think of it as "cut out this section."
 *
 * @code{.cpp}
 * ivec<int> a{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
 *
 * // Keep only a[1..4], delete everything else
 * auto s = a.slice(1, 4);    // → [2, 3, 4, 5]
 *
 * // Delete a[1..5), keep everything else
 * auto e = a.erase(1, 5);    // → [1, 6, 7, 8, 9, 10]
 * @endcode
 *
 * @note Index-based erase uses exclusive end bound [From, To) matching STL convention,
 *       while slice uses inclusive bounds [From, To]. Be mindful of this difference.
 *
 * @see Tools::ivec::slice
 * @see Tools::ivec::erase(T*, T*)
 */

#include "Base.Class.hpp"

/** Erase specific element with index **/

/** Erase return new **/
namespace Tools {
    /** 1 element return **/
    /// @brief Return new ivec with single element at Pos removed.
    /// @param Pos Index of element to remove [0, size()).
    /// @return New ivec with size() - 1 elements. Original is unchanged.
    /// @note Delegates to erase(T*). O(n) due to element shifting.
    template <typename T>
    [[nodiscard]] ivec<T> ivec<T>::Erase(idx Pos){
        ivec Out(*this);
        if (Pos < Out.m_Size) {
            Out.eraseInl(Out.m_Data + Pos);
        }
        return Out;
    }

    /** N element return **/
    /// @brief Return new ivec with elements in [From, To) removed.
    /// @param From Start index (inclusive) [0, size()].
    /// @param To End index (exclusive) [From, size()].
    /// @return New ivec without the specified range. Original is unchanged.
    /// @note Uses exclusive end bound [From, To) matching STL erase convention.
    ///       This differs from slice() which uses inclusive [From, To].
    ///       Delegates to erase(T*, T*). O(n) due to element shifting.
    template <typename T>
    [[nodiscard]] ivec<T> ivec<T>::Erase(idx From, idx To){
        ivec Out(*this);
        if (From < Out.m_Size && From < To) {
            idx clampedTo = (To > Out.m_Size) ? Out.m_Size : To;
            Out.eraseInl(Out.m_Data + From, Out.m_Data + clampedTo);
        }
        return Out;
    }
}

/** Erase do inline **/
namespace Tools {
    /** 1 element inline **/
    /// @brief Remove single element at Pos in-place.
    /// @param Pos Index of element to remove [0, size()).
    /// @post size() decreased by 1. Elements after Pos shifted left.
    /// @note Delegates to eraseInl(T*). O(n) due to element shifting.
    template <typename T>
    void ivec<T>::EraseInl(idx Pos) {
        // fmt::println("[DEBUG] EraseInl(IDX) called, Pos={}", Pos);
        eraseInl(begin() + Pos);
    }

    /** N element inline **/
    /// @brief Remove elements in [From, To) in-place.
    /// @param From Start index (inclusive) [0, size()].
    /// @param To End index (exclusive) [From, size()].
    /// @post size() decreased by (To - From). Remaining elements compacted.
    /// @note Uses exclusive end bound [From, To). No-op if From >= To.
    ///       Delegates to eraseInl(T*, T*). O(n) due to element shifting.
    template <typename T>
    void ivec<T>::EraseInl(idx From, idx To){
        eraseInl(begin() + From, begin() + To);
    }
}

#endif

/* ---- End: IVec/Items.Erase.idx.hpp ---- */
