/* ---- Begin: IVec/Core.Extend.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CORE_EXTEND_HPP
#define TOOLS_IVEC_CORE_EXTEND_HPP

/**
 * @file Core.Extend.hpp
 * @brief Bulk element insertion for Tools::ivec<T>.
 *
 * @details Provides extend() for appending multiple elements from any contiguous
 *          range via std::span. Performs exact pre-allocation to ensure zero
 *          intermediate reallocations during bulk insertion.
 *
 * @note For single-element insertion, use append() instead.
 *       For positional insertion, use reassignInl() or appendAt().
 *
 * @see Tools::ivec::append
 * @see Tools::ivec::reassignInl
 */

#include "Base.Class.hpp"

namespace rdt {
    // /* Extend with ivec */
    // template <typename T>
    // void ivec<T>::extend(const ivec& iv) {
    //     if (iv.m_Size == 0) return;
    //
    //     // pastikan kapasitas cukup
    //     if (m_Size + iv.m_Size > m_Capacity) {
    //         reserve(m_Size + iv.m_Size);
    //     }
    //
    //     // copy satu per satu
    //     for (idx i = 0; i < iv.m_Size; ++i) {
    //         new (m_Data + m_Size) T(iv.m_Data[i]);
    //         ++m_Size;
    //     }
    // }
    //
    // /* Extend with vec */
    // template <typename T>
    // void ivec<T>::extend(const vec<T>& v) {
    //     if (v.empty()) return;
    //
    //     if (m_Size + v.size() > m_Capacity) {
    //         reserve(m_Size + v.size());
    //     }
    //
    //     for (const auto& elem : v) {
    //         new (m_Data + m_Size) T(elem);
    //         ++m_Size;
    //     }
    // }

    /** Generic Extend with span **/
    /// @brief Append all elements from a span to the end of the vector.
    /// @param Data Span of elements to copy-construct at the end.
    /// @post size() increased by D.size(). All source elements are copy-constructed.
    /// @note Performs exact pre-allocation (m_Size + D.size()) before copying,
    ///       guaranteeing zero intermediate reallocations regardless of current capacity.
    ///       Empty span is a no-op. Source and destination may safely overlap
    ///       only if source is entirely before the write position.
    template <typename T>
    void ivec<T>::extend(std::span<const T> Data) {
        if (Data.empty()) return;

        // Pre-allocate exact size needed
        if (m_Size + Data.size() > m_Capacity) {
            reserve(m_Size + Data.size());
        }

        // Copy all elements from span
        for (const auto& elem : Data) {
            new (m_Data + m_Size) T(elem);
            ++m_Size;
        }
    }
}

#endif

/* ---- End: IVec/Core.Extend.hpp ---- */
