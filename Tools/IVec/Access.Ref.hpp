/* ---- Begin: IVec/Access.Ref.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ACCESS_REF_HPP
#define TOOLS_IVEC_ACCESS_REF_HPP

/**
 * @file Access.Ref.hpp
 * @brief Bounds-checked reference accessors for Tools::ivec<T>.
 *
 * @details Provides refbegin()/refend() and their explicit const variants
 *          crefbegin()/crefend(). Unlike first()/last() which return by value,
 *          these return references and throw std::out_of_range on empty vectors.
 *
 * @note These are the safe counterparts to first()/last(). Use when you need
 *       a reference (not a copy) AND want bounds checking.
 *
 * @warning All methods throw std::out_of_range if size() == 0.
 *          They are NOT noexcept.
 *
 * @see Tools::ivec::first
 * @see Tools::ivec::last
 * @see Tools::ivec::operator[]
 */

#include "Base.Class.hpp"

/** Reference Accessors (Bounds-Checked) **/

/** First index **/
namespace Tools {
    /// @brief Get mutable reference to first element with bounds checking.
    /// @return Mutable reference to element at index 0.
    /// @throws std::out_of_range if size() == 0.
    /// @note Preferred over first() when you need to modify the element in-place.
    template <typename T>
    [[nodiscard]] T& ivec<T>::refbegin() {
        if (m_Size == 0)
            throw std::out_of_range("ivec::refbegin(): vector is empty");
        return m_Data[0];
    }

    /// @brief Get const reference to first element with bounds checking.
    /// @return Const reference to element at index 0.
    /// @throws std::out_of_range if size() == 0.
    template <typename T>
    [[nodiscard]] const T& ivec<T>::refbegin() const {
        if (m_Size == 0)
            throw std::out_of_range("ivec::refbegin(): vector is empty");
        return m_Data[0];
    }

    /// @brief Get explicit const reference to first element with bounds checking.
    /// @return Const reference to element at index 0.
    /// @throws std::out_of_range if size() == 0.
    /// @note Use when you need guaranteed const access regardless of whether
    ///       the ivec itself is const or mutable. Analogous to cbegin().
    template <typename T>
    [[nodiscard]] const T& ivec<T>::crefbegin() const {
        if (m_Size == 0)
            throw std::out_of_range("ivec::crefbegin(): vector is empty");
        return m_Data[0];
    }
}

/** Last index **/
namespace Tools {
    /// @brief Get mutable reference to last element with bounds checking.
    /// @return Mutable reference to element at index (size() - 1).
    /// @throws std::out_of_range if size() == 0.
    /// @note Preferred over last() when you need to modify the element in-place.
    template <typename T>
    [[nodiscard]] T& ivec<T>::refend() {
        if (m_Size == 0)
            throw std::out_of_range("ivec::refend(): vector is empty");
        return m_Data[m_Size - 1];
    }

    /// @brief Get const reference to last element with bounds checking.
    /// @return Const reference to element at index (size() - 1).
    /// @throws std::out_of_range if size() == 0.
    template <typename T>
    [[nodiscard]] const T& ivec<T>::refend() const {
        if (m_Size == 0)
            throw std::out_of_range("ivec::refend(): vector is empty");
        return m_Data[m_Size - 1];
    }

    /// @brief Get explicit const reference to last element with bounds checking.
    /// @return Const reference to element at index (size() - 1).
    /// @throws std::out_of_range if size() == 0.
    /// @note Use when you need guaranteed const access regardless of whether
    ///       the ivec itself is const or mutable. Analogous to cend().
    template <typename T>
    [[nodiscard]] const T& ivec<T>::crefend() const {
        if (m_Size == 0)
            throw std::out_of_range("ivec::crefend(): vector is empty");
        return m_Data[m_Size - 1];
    }
}

#endif

/* ---- Begin: IVec/Access.Ref.hpp ---- */
