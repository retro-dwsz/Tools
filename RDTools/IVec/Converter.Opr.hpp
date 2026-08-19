/* ---- Begin: IVec/Converter.Opr.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CONVERT_OPR_HPP
#define TOOLS_IVEC_CONVERT_OPR_HPP

/**
 * @file Converter.Opr.hpp
 * @brief Explicit type conversion operators for Tools::ivec<T>.
 *
 * @details Provides explicit conversions to std::span and std::vector.
 *          All operators are marked explicit to prevent accidental implicit
 *          copies or dangling views.
 *
 * @note span conversions are O(1) — they create a non-owning view.
 *       vector conversions are O(n) — they perform a deep copy.
 *       Since all operators are explicit, you must write:
 *         auto s = std::span<int>(my_ivec);      // OK
 *         auto v = std::vector<int>(my_ivec);    // OK (deep copy)
 *         std::span<int> s = my_ivec;            // Won't compile (explicit)
 *
 * @see Tools::ivec::to
 * @see Tools::ivec::toVector
 * @see Tools::ivec::toSpan
 */

#include "Base.Class.hpp"

/** Auto converter to std::span (O(1), Non-Owning View) **/
namespace rdt {
    /// @brief Explicit conversion to mutable std::span.
    /// @return span<T> viewing this vector's data. Lifetime tied to this ivec.
    /// @note O(1). No allocation. Invalidated by any operation that reallocates.
    template <typename T>
    ivec<T>::operator span<T>() const noexcept {
        return span<T>(m_Data, m_Size);
    }

    /// @brief Explicit conversion to const std::span.
    /// @return span<const T> viewing this vector's data. Lifetime tied to this ivec.
    /// @note O(1). No allocation. Preferred over mutable span when modification is not needed.
    template <typename T>
    ivec<T>::operator span<const T>() const noexcept {
        return span<const T>(m_Data, m_Size);
    }
}

/** Auto converter to std::vector (O(n), Deep Copy) **/
namespace rdt {
    /// @brief Explicit conversion to std::vector via deep copy.
    /// @return New std::vector<T> containing copies of all elements.
    /// @note O(n) time and space. Independent lifetime from this ivec.
    ///       Equivalent to toVector(). Use when ownership transfer is needed.
    template <typename T>
    ivec<T>::operator vec<T>() const noexcept {
        return vec<T>(m_Data, m_Data + m_Size);
    }

    /// @brief Explicit conversion to const std::vector via deep copy.
    /// @return New std::vector<const T> containing copies of all elements.
    /// @note O(n) time and space. Rarely needed — prefer vec<T> in most cases.
    template <typename T>
    ivec<T>::operator vec<const T>() const noexcept {
        return vec<const T>(m_Data, m_Data + m_Size);
    }
}

#endif

/* ---- End: IVec/Converter.Opr.hpp ---- */
