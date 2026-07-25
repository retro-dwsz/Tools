/* ---- Begin: IVec/Items.Erase.ptr.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ITEMS_ERASE_PTR_HPP
#define TOOLS_IVEC_ITEMS_ERASE_PTR_HPP

/**
 * @file Items.Erase.ptr.hpp
 * @brief Pointer-based element removal for Tools::ivec<T>.
 *
 * @details Provides erase() and eraseInl() overloads that accept raw pointers.
 *          These are the foundational implementations that index-based erasers
 *          delegate to. Pointers must refer to elements within this vector's
 *          allocated buffer [m_Data, m_Data + m_Size).
 *
 * @note Pointer validity is checked at runtime. Out-of-range pointers are either
 *       rejected (throw) or silently ignored depending on the overload.
 *       All operations use move-then-destroy pattern for safe element compaction.
 *
 * @see Tools::ivec::erase(idx)
 * @see Tools::ivec::eraseInl(idx)
 */

#include "Base.Class.hpp"
#include <algorithm>

/** Erase specific element with pointer **/

/** Erase return new **/
namespace Tools {
    /// @brief Return new ivec with single element at pointer position removed.
    /// @param pos Pointer to element to remove. Must be within [data(), data()+size()).
    /// @return New ivec with size()-1 elements. Original is unchanged.
    /// @throws std::out_of_range if pos is null or outside valid range.
    /// @note Delegates to eraseInl(idx) on a copy. O(n) due to element shifting.
    template <typename T>
    ivec<T> ivec<T>::erase(T* pos) {
        if (!pos || pos < m_Data || pos >= m_Data + m_Size)
            throw std::out_of_range("ivec::Erase(T*): invalid pointer");
        ivec out(*this);

        //fmt::println(
        //    "[DEBUG erase(T*)] BEFORE: out.size()={}, out.data()={}, this.data()={}",
        //    out.size(), fmt::ptr(out.data()), fmt::ptr(m_Data)
        //);

        const idx index = Cast::scast<idx>(pos - m_Data);
        out.eraseInl(out.m_Data + index);

        // const idx index = pos - m_Data;
        // out.eraseInl(index);

        //fmt::println("[DEBUG erase(T*)] AFTER:  out.size()={}", out.size());
        return out;
    }

    /// @brief Return new ivec with elements in [begin, end) removed.
    /// @param begin Pointer to first element to remove (inclusive).
    /// @param end Pointer past last element to remove (exclusive).
    /// @return New ivec without the specified range. Original is unchanged.
    /// @note Out-of-range pointers are clamped to valid bounds. No-op if begin >= end.
    ///       Delegates to eraseInl(T*, T*) on a copy. O(n) due to element shifting.
    template <typename T>
    ivec<T> ivec<T>::erase(T* begin, T* end) {
        // ivec out(*this);
        // out.eraseInl(begin, end);
        // return out;

        // Clamp against THIS buffer first
        if (!begin || !end) return ivec<T>(*this);
        T* cBegin = (begin < m_Data) ? m_Data : begin;
        T* cEnd   = (end > m_Data + m_Size) ? m_Data + m_Size : end;
        if (cBegin >= cEnd) return ivec<T>(*this);

        ivec<T> out(*this);
        // Translate pointers from this->out
        const auto fromIdx = Cast::scast<idx>(cBegin - m_Data);
        const auto toIdx   = Cast::scast<idx>(cEnd - m_Data);
        out.eraseInl(out.m_Data + fromIdx, out.m_Data + toIdx);
        return out;
    }
}

/** Erase do inline**/
namespace Tools {
    /// @brief Remove single element at pointer position in-place.
    /// @param pos Pointer to element to remove. Must be within [data(), data()+size()).
    /// @post size() decreased by 1. Elements after pos shifted left.
    /// @note Silently returns if pos is null or out of range (no exception).
    ///       Uses move-then-destroy pattern for safe compaction. O(n).
    template <typename T>
    void ivec<T>::eraseInl(T* pos) {
        // fmt::println(
        //     "[DEBUG] eraseInl(T*) called, pos={}, m_Data={}, m_Size={}",
        //     fmt::ptr(pos), fmt::ptr(m_Data), m_Size
        // );
        if (!pos || pos < m_Data || pos >= m_Data + m_Size)
            return; // or throw

        idx index = pos - m_Data; // pointer arithmetic

        // destroy element
        m_Data[index].~T();

        // shift left
        for (idx i = index; i + 1 < m_Size; ++i){
            new (m_Data + i) T(std::move(m_Data[i + 1]));
            m_Data[i + 1].~T();
        }

        --m_Size;
    }

    /// @brief Remove elements in [begin, end) in-place.
    /// @param begin Pointer to first element to remove (inclusive).
    /// @param end Pointer past last element to remove (exclusive).
    /// @post size() decreased by number of removed elements. Remaining elements compacted.
    /// @note Out-of-range pointers are clamped to valid bounds. No-op if begin >= end.
    ///       Uses batch destroy + shift pattern for efficiency. O(n).
    template <typename T>
    void ivec<T>::eraseInl(T* begin, T* end) {
        if (!begin || !end) return;
        if (begin < m_Data) begin = m_Data;
        if (end > m_Data + m_Size) end = m_Data + m_Size;
        if (begin >= end) return;

        const idx begin_idx = begin - m_Data;
        const idx end_idx   = end - m_Data;
        const idx count     = end_idx - begin_idx;

        // destroy range
        for (idx i = begin_idx; i < end_idx; ++i)
            m_Data[i].~T();

        // shift tail
        for (idx i = end_idx; i < m_Size; ++i){
            new (m_Data + (i - count)) T(std::move(m_Data[i]));
            m_Data[i].~T();
        }
        m_Size -= count;
    }
}

#endif

/* ---- End: IVec/Items.Erase.ptr.hpp ---- */
