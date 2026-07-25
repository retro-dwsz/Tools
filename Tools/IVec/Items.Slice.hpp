/* ---- Begin: IVec/Items.Slice.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ITEMS_SLICE_HPP
#define TOOLS_IVEC_ITEMS_SLICE_HPP

/**
 * @file Items.Slice.hpp
 * @brief Sub-range extraction operations for Tools::ivec<T>.
 *
 * @details Provides Python-style slicing with negative index support:
 *          - slice(From, To) / sliceInl(From, To): Extract range [From, To] inclusive
 *          - slice(n) / sliceInl(n): Extract first n elements (n >= 0) or last |n| elements (n < 0)
 *
 * @note Negative indices are resolved relative to size(): -1 == last element.
 *       Out-of-range indices are clamped to valid bounds rather than throwing.
 *       All returning variants create deep copies; original is never modified.
 *
 * @see Tools::ivec::erase
 * @see Tools::ivec::reassign
 */

#include "Base.Class.hpp"

/** Slicers return new **/
namespace Tools {
    /// @brief Extract a sub-range [From, To] inclusive, with negative index support.
    /// @param From Start index (inclusive). Negative values count from end (-1 == last).
    /// @param To End index (inclusive). Negative values count from end (-1 == last).
    /// @return New ivec containing elements in [From, To]. Empty if range is invalid.
    /// @note Indices are clamped to [0, size()-1]. Returns empty vector if From > To after normalization.
    ///       Original vector is unchanged. O(k) where k = To - From + 1.
    template <typename T>
    ivec<T> ivec<T>::Slice(i64 From, i64 To) {
        if (m_Size == 0) return {};

        if (From < 0) From += m_Size;
        if (To < 0) To += m_Size;

        if (From < 0) From = 0;
        if (To >= m_Size) To = m_Size - 1;
        if (From > To) return {};

        ivec<T> out;
        out.reserve(To - From + 1);

        for (idx i = From; i <= To; ++i)
            out.append(m_Data[i]);

        return out;
    }

    /// @brief Extract first n or last |n| elements.
    /// @param To If >= 0: extract elements [0, n]. If < 0: extract last |n| elements.
    /// @return New ivec containing the extracted elements. Empty if n == 0 or vector is empty.
    /// @note Delegates to slice(From, To). Original vector is unchanged.
    template <typename T>
    ivec<T> ivec<T>::Slice(const i64 To) {
        if (m_Size == 0) return {};

        if (To >= 0)
            return Slice(0, To);

        return Slice(m_Size + To, m_Size - 1);
    }
}

/** Slicers do inline **/
namespace Tools {
    /// @brief Replace contents with sub-range [From, To] inclusive.
    /// @param From Start index (inclusive). Negative values count from end.
    /// @param To End index (inclusive). Negative values count from end.
    /// @post Vector contains only elements from the specified range.
    /// @note Equivalent to *this = slice(From, To). May reallocate.
    template <typename T>
    void ivec<T>::SliceInl(const i64 From, const i64 To) {
        *this = Slice(From, To);
    };

    /// @brief Replace contents with first n or last |n| elements.
    /// @param To If >= 0: keep elements [0, n]. If < 0: keep last |n| elements.
    /// @post Vector contains only the extracted elements.
    /// @note Equivalent to *this = slice(n). May reallocate.
    template <typename T>
    void ivec<T>::SliceInl(const i64 To) {
        *this = Slice(To);
    }
}

#endif

/* ---- End: IVec/Items.Slicer.hpp ---- */
