/* ---- Begin: IVec/Core.Data.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CORE_DATA_HPP
#define TOOLS_IVEC_CORE_DATA_HPP

/**
 * @file Core.Data.hpp
 * @brief Core data accessors for Tools::ivec<T>.
 *
 * @details Provides read-only and mutable access to the underlying storage,
 *          size/capacity queries, and memory usage reporting. All methods are
 *          O(1) and noexcept where applicable.
 *
 * @note These accessors do NOT perform bounds checking. Use at() or refbegin()/refend()
 *       for safe bounded access.
 *
 * @see Tools::ivec
 */

#include "Base.Class.hpp"

namespace rdt {
    /// @brief Get mutable pointer to underlying data buffer.
    /// @return Pointer to first element, or nullptr if empty.
    /// @note Lifetime tied to this ivec. Invalidated by reserve(), resize(), clear(),
    ///       append(), extend(), erase(), or any operation that may reallocate.
    template <typename T>
    T* ivec<T>::data() noexcept {
        return m_Data;
    }

    /// @brief Get const pointer to underlying data buffer.
    /// @return Const pointer to first element, or nullptr if empty.
    /// @note Same lifetime guarantees as mutable data().
    template <typename T>
    const T *ivec<T>::data() const noexcept {
        return m_Data;
    }

    /// @brief Get number of elements currently stored.
    /// @return Current element count. Always <= capacity().
    template <typename T>
    idx ivec<T>::size() const noexcept {
        return m_Size;
    }

    /// @brief Get current storage capacity (elements that fit without reallocation).
    /// @return Number of elements that can be held before next reallocation.
    ///         Always >= size().
    template <typename T>
    idx ivec<T>::capacity() const noexcept {
        return m_Capacity;
    }

    /// @brief Get total memory used by stored elements in bytes.
    /// @return sizeof(T) * size(). Does NOT include unused capacity overhead.
    /// @note For total allocated memory including reserved capacity,
    ///       use sizeof(T) * capacity() instead.
    template <typename T>
    u64 ivec<T>::memory() const noexcept {
        const u64 s = Cast::scast<u64>(sizeof(T)) * Cast::scast<u64>(this->m_Size);
        return s;
    }
}

#endif

/* ---- End: IVec/Core.Data.hpp ---- */
