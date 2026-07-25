/* ---- Begin: IVec/Access.Pop.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ACCESS_POP_HPP
#define TOOLS_IVEC_ACCESS_POP_HPP

/**
 * @file Access.Pop.hpp
 * @brief Element removal operations for Tools::ivec<T>.
 *
 * @details Provides pop(), popFirst(), and popLast() for extracting and removing
 *          elements by value. All operations shift remaining elements to maintain
 *          contiguous storage.
 *
 * @note These are O(n) operations due to element shifting. For bulk removal,
 *       consider eraseInl() or filter() instead.
 *
 * @warning Calling pop() on an empty vector or with Index >= size() is UB.
 *          No bounds checking is performed. Use at() + eraseInl() for safe removal.
 *
 * @see Tools::ivec::eraseInl
 * @see Tools::ivec::filter
 */

#include "Base.Class.hpp"

/** Poper, get then remove **/
namespace Tools {
    /** Pop specific index **/
    /// @brief Remove and return element at specified index.
    /// @param Index Position of element to remove [0, size()).
    /// @return The removed element (moved if possible).
    /// @post size() decreased by 1. Elements at [Index+1, old_size) shifted left.
    /// @note O(n) where n = size() - Index. Uses move assignment for shifting.
    ///       Last slot is explicitly destroyed after shift to prevent leaks.
    template <typename T>
    T ivec<T>::pop(const idx& Index) {
        // bounds check (optional)
        // assert(Index < m_Size);

        // 1. Save values (copy / move)
        T value = std::move(m_Data[Index]);

        // 2. Shift elemnt to left
        for (idx i = Index; i + 1 < m_Size; ++i) {
            m_Data[i] = std::move(m_Data[i + 1]);
        }

        // 3. destroy lst elemen
        m_Data[m_Size - 1].~T();

        // 4. update m_Size
        --m_Size;

        return value;
    }

    /** Pop 1st index **/
    /// @brief Remove and return the first element.
    /// @return The removed first element (moved if possible).
    /// @post size() decreased by 1. All remaining elements shifted left.
    /// @note O(n) — equivalent to pop(0). For frequent front removal,
    ///       consider a deque-like structure instead.
    template <typename T>
    T ivec<T>::popFirst() {
        return pop(0);
    }

    /** Pop last index **/
    /// @brief Remove and return the last element.
    /// @return The removed last element (moved if possible).
    /// @post size() decreased by 1. No shifting required.
    /// @note O(1) — most efficient pop variant. Preferred when order doesn't matter.
    template <typename T>
    T ivec<T>::popLast() {
        return pop(m_Size-1);
    }
}

#endif

/* ---- End: IVec/Access.Pop.hpp ---- */
