/* ---- Begin: IVec/Access.Iter.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ACCESS_ITER_HPP
#define TOOLS_IVEC_ACCESS_ITER_HPP

/**
 * @file Access.Iter.hpp
 * @brief Pointer-based iterator accessors for Tools::ivec<T>.
 *
 * @details Provides begin()/end() and their explicit const variants cbegin()/cend().
 *          All iterators are raw pointers (T* / const T*), making ivec fully compatible
 *          with STL algorithms, std::ranges, and fmt/ranges without wrapper overhead.
 *
 * @note Mutable begin()/end() return T*, const overloads return const T*.
 *       This dual-overload pattern is required for std::ranges::range and
 *       std::ranges::borrowed_range concept satisfaction on lvalue references.
 *
 * @see Tools::ivec::refbegin
 * @see Tools::ivec::refend
 * @see Tools::ivec::data
 */

#include "Base.Class.hpp"

/** Iterators (Pointer-based, Const-Correct) **/

/** First index **/
namespace rdt {
    /// @brief Get mutable iterator to the first element.
    /// @return Pointer to first element, or nullptr if empty.
    /// @note Equivalent to data(). Satisfies std::ranges::range requirement.
    template <typename T>
    [[nodiscard]] T* ivec<T>::begin() noexcept {
        return m_Data;
    }

    /// @brief Get const iterator to the first element.
    /// @return Const pointer to first element, or nullptr if empty.
    /// @note Enables range-for and STL algorithms on const ivec.
    ///       Required for std::ranges::borrowed_range<ivec<T>&> satisfaction.
    template <typename T>
    [[nodiscard]] const T* ivec<T>::begin() const noexcept {
        return m_Data;
    }

    /// @brief Get explicit const iterator to the first element.
    /// @return Const pointer to first element, or nullptr if empty.
    /// @note Use when you need guaranteed const iteration regardless of
    ///       whether the ivec itself is const or mutable.
    template <typename T>
    [[nodiscard]] const T* ivec<T>::cbegin() const noexcept {
        return m_Data;
    }
}

/** Last index **/
namespace rdt {
    /// @brief Get mutable past-the-end iterator.
    /// @return Pointer one past the last element. Never dereference this value.
    /// @note Equivalent to data() + size(). Satisfies std::ranges::range requirement.
    template <typename T>
    [[nodiscard]] T* ivec<T>::end() noexcept {
        return m_Data + m_Size;
    }

    /// @brief Get const past-the-end iterator.
    /// @return Const pointer one past the last element. Never dereference this value.
    /// @note Enables range-for and STL algorithms on const ivec.
    ///       Required for std::ranges::borrowed_range<ivec<T>&> satisfaction.
    template <typename T>
    [[nodiscard]] const T* ivec<T>::end() const noexcept {
        return m_Data + m_Size;
    }

    /// @brief Get explicit const past-the-end iterator.
    /// @return Const pointer one past the last element. Never dereference this value.
    /// @note Use when you need guaranteed const iteration regardless of
    ///       whether the ivec itself is const or mutable.
    template <typename T>
    [[nodiscard]] const T* ivec<T>::cend() const noexcept {
        return m_Data + m_Size;
    }
}

#endif

/* ---- End: IVec/Access.Iter.hpp ---- */
