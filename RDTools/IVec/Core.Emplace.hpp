/* ---- Begin: IVec/Core.Emplace.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CORE_EMPLACE_HPP
#define TOOLS_IVEC_CORE_EMPLACE_HPP

/**
 * @file Core.Emplace.hpp
 * @brief In-place construction at end for Tools::ivec<T>.
 *
 * @details Provides emplace() for constructing elements directly in the vector's
 *          storage using perfect forwarding. Avoids temporary object creation
 *          and extra copy/move operations compared to append().
 *
 * @note Prefer emplace() over append() when constructing complex objects or
 *       when T is non-copyable/non-movable. For simple types (int, float),
 *       performance difference is negligible.
 *
 * @see Tools::ivec::append
 * @see Tools::ivec::emplaceAt
 */

#include "Base.Class.hpp"

namespace rdt {
    /** Emplace object at end **/
    /// @brief Construct element in-place at the end using forwarded arguments.
    /// @tparam Args Constructor argument types (perfectly forwarded).
    /// @param Items Arguments forwarded to T's constructor.
    /// @post size() increased by 1. Element constructed directly at new position.
    /// @note Triggers reallocation if size() == capacity() before construction.
    ///       Growth factor: 2x current capacity (or 1 if empty).
    ///       If T's constructor throws, vector remains unchanged (strong guarantee).
    template <typename T>
    template <typename... Args>
    void ivec<T>::emplace(Args&&... Items) {
        if (m_Size == m_Capacity)
            reserve(m_Capacity ? m_Capacity * 2 : 1);

        new (m_Data + m_Size) T(std::forward<Args>(Items)...);
        ++m_Size;
    }
}

#endif

/* ---- End: IVec/Core.Emplace.hpp ---- */
