/* ---- Begin: IVec/Access.Elements.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ACCESS_ELEMENTS_HPP
#define TOOLS_IVEC_ACCESS_ELEMENTS_HPP

/**
 * @file Access.Elements.hpp
 * @brief Positional element accessors for Tools::ivec<T>.
 *
 * @details Provides first(), last(), front(), back() and their indexed variants.
 *          All methods return by value (copy) and are noexcept.
 *
 * @warning No bounds checking is performed. Calling on an empty vector or with
 *          out-of-range index is Undefined Behavior. Use refbegin()/refend()
 *          for bounds-checked reference access.
 *
 * @see Tools::ivec::refbegin
 * @see Tools::ivec::refend
 * @see Tools::ivec::operator[]
 */

#include "Base.Class.hpp"

/** Element Access (First / Last / Front / Back) **/

/** First index **/
namespace rdt {
    /// @brief Get first element by copy.
    /// @return Copy of the first element.
    /// @warning UB if size() == 0. No bounds check performed.
    template <typename T>
    [[nodiscard]] T ivec<T>::first() const noexcept {
        return m_Data[0];
    }

    /// @brief Get last element by copy.
    /// @return Copy of the last element.
    /// @warning UB if size() == 0. No bounds check performed.
    template <typename T>
    [[nodiscard]] T ivec<T>::last() const noexcept {
        return m_Data[m_Size - 1];
    }

    /// @brief Get nth element from start by copy.
    /// @param n Zero-based offset from the beginning [0, size()).
    /// @return Copy of the element at position n.
    /// @warning UB if n >= size(). No bounds check performed.
    template <typename T>
    [[nodiscard]] T ivec<T>::first(const idx n) const noexcept {
        return m_Data[n];
    }

    /// @brief Get nth element from end by copy.
    /// @param n Zero-based offset from the end [0, size()).
    ///          last(0) == last(), last(1) == second-to-last, etc.
    /// @return Copy of the element at position (size() - 1 - n).
    /// @warning UB if n >= size(). No bounds check performed.
    template <typename T>
    [[nodiscard]] T ivec<T>::last(const idx n) const noexcept {
        return m_Data[m_Size - 1 - n];
    }
}

/** Last index **/
namespace rdt {
    /// @brief Legacy alias for first(). Equivalent to std::vector::front().
    /// @return Copy of the first element.
    /// @warning UB if size() == 0.
    template <typename T>
    [[nodiscard]] T ivec<T>::front() const noexcept {
        return first();
    }

    /// @brief Legacy alias for last(). Equivalent to std::vector::back().
    /// @return Copy of the last element.
    /// @warning UB if size() == 0.
    template <typename T>
    [[nodiscard]] T ivec<T>::back() const noexcept {
        return last();
    }
}

#endif

/* ---- End: IVec/Access.Elements.hpp ---- */
