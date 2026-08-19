/* ---- Begin: IVec/Core.Emplace.Idx.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CORE_EMPLACE_IDX_HPP
#define TOOLS_IVEC_CORE_EMPLACE_IDX_HPP

/**
 * @file Core.Emplace.Idx.hpp
 * @brief Positional in-place construction for Tools::ivec<T>.
 *
 * @details Provides emplaceFront() and emplaceAt() for constructing elements
 *          directly at specific positions using perfect forwarding. Combines
 *          the zero-copy benefits of emplace() with positional insertion.
 *
 * @note These are O(n) operations due to element shifting. For simple types,
 *       prefer appendFirst()/appendAt() which have identical performance.
 *       Use emplace variants when constructing complex/non-movable objects.
 *
 * @see Tools::ivec::emplace
 * @see Tools::ivec::appendAt
 */

#include "Base.Class.hpp"

namespace rdt {
    /** Emplace object at 1st index **/
    /// @brief Construct element in-place at the beginning using forwarded arguments.
    /// @tparam Args Constructor argument types (perfectly forwarded).
    /// @param Items Arguments forwarded to T's constructor.
    /// @post size() increased by 1. All existing elements shifted right by 1.
    /// @note Delegates to emplaceAt(0, args...). See emplaceAt() for full details.
    template <typename T>
    template<typename... Args>
    void ivec<T>::emplaceFront(Args&&... Items) {
        emplaceAt(std::forward<Args>(Items)..., 0);
    }

    /** Emplace object at specific index **/
    /// @brief Construct element in-place at specified position using forwarded arguments.
    /// @tparam Args Constructor argument types (perfectly forwarded).
    /// @param At Target index [0, size()]. Clamped to size() if out of range.
    /// @param Items Arguments forwarded to T's constructor.
    /// @post size() increased by 1. Elements at [At, old_size) shifted right by 1.
    ///       New element constructed directly at target position via placement new.
    /// @note O(n) where n = size() - At. Uses move_if_noexcept for shifting.
    ///       Triggers reallocation if size() == capacity() before construction.
    ///       If T's constructor throws after shift, vector is left in valid but
    ///       partially-shifted state (basic exception guarantee).
    template <typename T>
    template<typename... Args>
    void ivec<T>::emplaceAt(idx At, Args&&... Items) {
        if (At > m_Size) At = m_Size; // clamp to end

        if (m_Size == m_Capacity) {
            // reserve(m_Capacity ? m_Capacity * 2 : 1);
            reserve(m_Capacity == 0 ? 1 : m_Capacity * 2);
        }

        // Shift elements right (backwards!)
        for (idx i = m_Size; i > At; --i) {
            new (m_Data + i) T(std::move_if_noexcept(m_Data[i - 1]));
            m_Data[i - 1].~T();
        }

        // Build object at nth position
        new (m_Data + At) T(std::forward<Args>(Items)...);

        ++m_Size;
    }
}

#endif

/* ---- End: IVec/Core.Emplace.Idx.hpp ---- */
