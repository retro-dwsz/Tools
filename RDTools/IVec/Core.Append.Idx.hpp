/* ---- Begin: IVec/Core.Append.Idx.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CORE_APPEND_IDX_HPP
#define TOOLS_IVEC_CORE_APPEND_IDX_HPP

/**
 * @file Core.Append.Idx.hpp
 * @brief Positional insertion operations for Tools::ivec<T>.
 *
 * @details Provides appendFirst() and appendAt() for inserting elements at
 *          specific positions. These operations are O(n) due to element shifting,
 *          but benefit from ivec's direct memory control compared to std::vector:
 *          - No iterator invalidation checks overhead
 *          - Direct placement-new construction at target position
 *          - Explicit move-if-noexcept optimization during shift
 *
 * @note For bulk insertion at position, consider using reassignInl() or
 *       manual extend() + shift pattern for better performance.
 *
 * @see Tools::ivec::append
 * @see Tools::ivec::emplaceAt
 */

#include "Base.Class.hpp"

/** Specific Appenders **/
namespace rdt {
    /// @brief Insert element at the beginning of the vector.
    /// @param Item Value to copy-construct at index 0.
    /// @post size() increased by 1. All existing elements shifted right by 1.
    /// @note O(n) operation. Uses move_if_noexcept for shifting to ensure
    ///       strong exception safety when T has noexcept move constructor.
    ///       Triggers reallocation if size() == capacity() before insertion.
    template <typename T>
    void ivec<T>::appendFirst(const T& Item) {
        if (m_Size == m_Capacity)
            reserve(m_Capacity == 0 ? 1 : m_Capacity * 2);

        // Shift all elements to right by 1, from backward so no one is overriden
        for (idx i = m_Size; i > 0; --i) {
            new (m_Data + i) T(std::move_if_noexcept(m_Data[i - 1]));
            m_Data[i - 1].~T();
        }

        // Put new element in front
        new (m_Data) T(Item);
        ++m_Size;
    }

    /// @brief Insert element at specified position.
    /// @param Item Value to copy-construct at position At.
    /// @param At Target index [0, size()]. Clamped to size() if out of range.
    /// @post size() increased by 1. Elements at [At, old_size) shifted right by 1.
    /// @note O(n) operation where n = size() - At. Uses move_if_noexcept for shifting.
    ///       When At == size(), behaves identically to append(Element).
    ///       Triggers reallocation if size() == capacity() before insertion.
    template <typename T>
    void ivec<T>::appendAt(const T& Item, idx At) {
        if (At > m_Size) At = m_Size; // clamp (insert at end)

        if (m_Size == m_Capacity)
            reserve(m_Capacity ? m_Capacity * 2 : 1);

        // Shift elements right (backwards!)
        for (idx i = m_Size; i > At; --i) {
            new (m_Data + i) T(std::move(m_Data[i - 1]));
            m_Data[i - 1].~T();
        }

        // Insert new element
        new (m_Data + At) T(Item);

        ++m_Size;
    }
}

#endif

/* ---- Begin: IVec/Core.AppendExt.hpp ---- */
