/* ---- Begin: IVec/Access.Getset.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ACCESS_GETSET_HPP
#define TOOLS_IVEC_ACCESS_GETSET_HPP

/**
 * @file Access.Getset.hpp
 * @brief Element access operators and copy assignment for Tools::ivec<T>.
 *
 * @details Provides unchecked operator[] for performance-critical paths,
 *          bounds-checked at() for safe access, and deep-copy assignment.
 *
 * @note operator[] does NOT perform bounds checking in any build configuration.
 *       Use at() when index validity cannot be guaranteed at compile time.
 *
 * @see Tools::ivec::refbegin
 * @see Tools::ivec::refend
 */

#include "Base.Class.hpp"
#include <cassert>

/** Common Getter Operators **/
namespace rdt {
    /// @brief Access element by index without bounds checking (mutable).
    /// @param Index Position of the element [0, size()).
    /// @return Mutable reference to the element at Index.
    /// @warning UB if Index >= size(). No debug assertion is performed.
    ///          Use at() for safe bounded access.
    template <typename T>
    T& ivec<T>::operator[](idx Index) noexcept {
        // optional bounds check (debug)
        // assert(Index < m_Size);
        return m_Data[Index];
    }

    /// @brief Access element by index without bounds checking (const).
    /// @param Index Position of the element [0, size()).
    /// @return Const reference to the element at Index.
    /// @warning UB if Index >= size(). No debug assertion is performed.
    template <typename T>
    const T& ivec<T>::operator[](idx Index) const noexcept {
        // assert(Index < m_Size);
        return m_Data[Index];
    }
}

/** Legacy getter at (with bounds check) **/
namespace rdt {
    /// @brief Access element by index with bounds checking (mutable).
    /// @param Index Position of the element [0, size()).
    /// @return Mutable reference to the element at Index.
    /// @throws std::out_of_range if Index >= size().
    template <typename T>
    T& ivec<T>::at(const idx& Index) {
        if (Index >= m_Size) {
            throw std::out_of_range(std::format("ivec::at({}): index out of range [0, {})", Index, m_Size));
        }
        return m_Data[Index];
    }

    /// @brief Access element by index with bounds checking (const).
    /// @param Index Position of the element [0, size()).
    /// @return Const reference to the element at Index.
    /// @throws std::out_of_range if Index >= size().
    template <typename T>
    T& ivec<T>::at(const idx& Index) const {
        if (Index >= m_Size) {
            throw std::out_of_range(std::format("ivec::at({}): index out of range [0, {})", Index, m_Size));
        }
        return m_Data[Index];
    }
}

/** Common Setter Operators **/
namespace rdt {
    /// @brief Deep-copy assignment from another ivec.
    /// @param Other Source vector to copy. Self-assignment is safely handled.
    /// @return Reference to this vector after assignment.
    /// @post size() == Other.size(), capacity() == Other.capacity().
    ///       All elements are copy-constructed into freshly allocated storage.
    /// @note Strong exception guarantee: if allocation or copy construction fails,
    ///       this vector remains unchanged (old data preserved until new data is ready).
    template <typename T>
    ivec<T>& ivec<T>::operator=(const ivec& Other) {
        if (this == &Other) return *this;

        // Allocate new buffer first (strong exception safety)
        T* NewData = nullptr;
        if (Other.m_Capacity > 0) {
            NewData = Cast::scast<T*>(operator new[](Other.m_Capacity * sizeof(T)));
            for (idx i = 0; i < Other.m_Size; ++i) {
                new (NewData + i) T(Other.m_Data[i]);
            }
        }

        // destroy old
        for (idx i = 0; i < m_Size; ++i) {
            m_Data[i].~T();
        }
        operator delete[](m_Data);

        // Commit new state
        m_Data     = NewData;
        m_Size     = Other.m_Size;
        m_Capacity = Other.m_Capacity;

        return *this;

        // m_Size = Other.m_Size;
        // m_Capacity = Other.m_Capacity;
        // m_Data = Cast::scast<T*>(operator new[](m_Capacity * sizeof(T)));
        //
        // for (idx i = 0; i < m_Size; ++i) {
        //     new (m_Data + i) T(Other.m_Data[i]);
        // }
        //
        // return *this;
    }
}

#endif

/* ---- End: IVec/Access.Getset.hpp ---- */
