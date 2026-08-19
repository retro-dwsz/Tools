/* ---- Begin: IVec/Core.State.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CORE_STATE_HPP
#define TOOLS_IVEC_CORE_STATE_HPP

/**
 * @file Core.State.hpp
 * @brief Container state management for Tools::ivec<T>.
 *
 * @details Provides utilities for clearing contents and querying emptiness.
 *          These operations do NOT change the allocated capacity.
 *
 * @see Tools::ivec
 */

#include "Base.Class.hpp"

namespace rdt {
    /// Nuke everything
    /// @brief Destroy all elements and set size to zero.
    /// @post size() == 0, capacity() unchanged, data() still valid (but empty).
    /// @note Calls destructor on each element explicitly. Does NOT free heap memory.
    ///       To release memory as well, use shrink_to_fit() after clear() (if available).
    ///       Safe to call on an already-empty vector.
    template <typename T>
    void ivec<T>::clear() {
        for (idx i = 0; i < m_Size; ++i) {
            m_Data[i].~T();
        }
        m_Size = 0;
    }

    /// Is there anyone?
    /// @brief Check whether the container holds no elements.
    /// @return true if size() == 0, false otherwise.
    /// @note O(1) complexity. Equivalent to (size() == 0) but more expressive.
    template <typename T>
    bool ivec<T>::isEmpty() const noexcept {
        return m_Size == 0;
    }
}

#endif

/* ---- End: IVec/Core.State.hpp ---- */
