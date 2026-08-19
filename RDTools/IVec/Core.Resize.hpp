/* ---- Begin: IVec/Core.Resize.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CORE_RESIZE_HPP
#define TOOLS_IVEC_CORE_RESIZE_HPP

/**
 * @file Core.Resize.hpp
 * @brief Capacity management for Tools::ivec<T>.
 *
 * @details Provides reserve() for pre-allocation without changing size,
 *          and resize() for changing the logical element count with optional fill value.
 *
 * @note Both functions use strong exception guarantee for shrink operations.
 *       Grow operations provide basic guarantee — if construction of fill values throws,
 *       the vector remains in a valid state with elements constructed up to the failure point.
 *
 * @see Tools::ivec
 */

#include "Base.Class.hpp"

namespace rdt {
    /* Resize (with filler value given or default) */
    /// @brief Change the number of stored elements.
    /// @param Size New element count. If smaller than current size, excess elements are destroyed.
    ///             If larger, new elements are copy-constructed from Fill.
    /// @param Fill Value used to initialize new elements when growing. Default-constructed T if omitted.
    /// @post size() == Size. capacity() >= Size.
    /// @note Shrinking does NOT release memory (capacity unchanged). Call shrink_to_fit() after
    ///       resize() if you want to release unused capacity (when available).
    ///       Growing may trigger reallocation if Size > capacity().
    template <typename T>
    void ivec<T>::resize(const idx Size, const T& Fill) {
        // Shrink: destroy excess elements
        if (Size < m_Size) {
            for (idx i = Size; i < m_Size; ++i) {
                m_Data[i].~T();
            }
            m_Size = Size;
            return;
        }

        // Grow: allocate if needed, then construct fill elements
        if (Size > m_Size) {
            reserve(Size);

            for (idx i = m_Size; i < Size; ++i) {
                new (m_Data + i) T(Fill);
            }
            m_Size = Size;
        }
    }

    /* Reserve (with NONE value) */
    /// @brief Pre-allocate storage without changing size.
    /// @param Size Minimum capacity to ensure. No-op if Size <= capacity().
    /// @post capacity() >= Size. size() unchanged. All existing elements preserved.
    /// @note Uses move_if_noexcept for relocation — falls back to copy if move constructor
    ///       is not noexcept, ensuring strong exception safety during reallocation.
    ///       Existing elements are always destroyed before old memory is freed.
    template <typename T>
    void ivec<T>::reserve(const idx Size) {
        if(Size <= m_Capacity) {
            return;
        }

        T* NewData = Cast::scast<T*>(
            operator new[](Size * sizeof(T))
        );

        for(idx i = 0; i < m_Size; i++) {
            new (NewData + i) T(std::move_if_noexcept(m_Data[i]));
        }

        for(idx i = 0; i < m_Size; i++) {
            m_Data[i].~T();
        }

        operator delete[](m_Data);

        m_Data      = NewData;
        m_Capacity  = Size;
    }
}

#endif

/* ---- End: IVec/Core.Resize.hpp ---- */
