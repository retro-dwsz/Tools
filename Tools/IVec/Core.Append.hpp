/* ---- Begin: IVec/Core.Append.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CORE_APPEND_HPP
#define TOOLS_IVEC_CORE_APPEND_HPP

/**
 * @file Core.Append.hpp
 * @brief Single-element append operations for Tools::ivec<T>.
 *
 * @details Provides append() overloads for adding individual elements to the
 *          end of the vector. Supports both lvalue (copy) and rvalue (move)
 *          semantics. Automatic capacity growth uses 2x strategy.
 *
 * @note For bulk insertion, use extend() or append(span) instead.
 *       For in-place construction without copies/moves, use emplace().
 *
 * @see Tools::ivec::extend
 * @see Tools::ivec::emplace
 */

#include "Base.Class.hpp"

namespace Tools {
    /** Append single element (lvalue) **/
    /// @brief Append element by copy-constructing at the end.
    /// @param Element Lvalue reference to copy into the vector.
    /// @post size() increased by 1. Element is copy-constructed at new position.
    /// @note Triggers reallocation if size() == capacity() before insertion.
    ///       Growth factor: 2x current capacity (or 1 if empty).
    template <typename T>
    void ivec<T>::append(const T& Element) {
        if (m_Size == m_Capacity) {
            reserve(m_Capacity == 0 ? 1 : m_Capacity * 2);
        }
        new (m_Data + m_Size) T(Element);
        ++m_Size;
    }

    /** Append single element (rvalue) **/
    /// @brief Append element by move-constructing at the end.
    /// @param Element Rvalue reference to move into the vector.
    /// @post size() increased by 1. Element is move-constructed at new position.
    ///       Source object is left in valid-but-unspecified state.
    /// @note Triggers reallocation if size() == capacity() before insertion.
    ///       Growth factor: 2x current capacity (or 1 if empty).
    template <typename T>
    void ivec<T>::append(T&& Element) {
        if (m_Size == m_Capacity) {
            reserve(m_Capacity == 0 ? 1 : m_Capacity * 2);
        }
        new (m_Data + m_Size) T(std::move(Element));
        ++m_Size;
    }

    // /** Append ivec **/
    // template <typename T>
    // void ivec<T>::append(const ivec<T>& iv) {
    //     if (m_Size == m_Capacity)
    //         reserve(m_Capacity == 0 ? 1 : m_Capacity * 2);
    //
    //     new (m_Data + m_Size) ivec<T>(iv); // copy ivec
    //     ++m_Size;
    // }
    //
    // /* Append vec */
    // template <typename T>
    // void ivec<T>::append(const vec<T>& v) {
    //     if (m_Size == m_Capacity)
    //         reserve(m_Capacity == 0 ? 1 : m_Capacity * 2);
    //
    //     new (m_Data + m_Size) ivec<T>(v); // convert vec -> ivec
    //     ++m_Size;
    // }

    /** Append generic iterable with span **/
    // template <typename T>
    // void ivec<T>::append(std::span<const T> D) {
    //     if (D.empty()) return;
    //
    //     // Reserve exact capacity needed (avoid multiple reallocs)
    //     if (m_Size + D.size() > m_Capacity) {
    //         reserve(m_Size + D.size());
    //     }
    //
    //     // Copy elements from span into our buffer
    //     for (const auto& elem : D) {
    //         new (m_Data + m_Size) T(elem);
    //         ++m_Size;
    //     }
    // }
}

#endif

/* ---- Begin: IVec/Core.Append.hpp ---- */
