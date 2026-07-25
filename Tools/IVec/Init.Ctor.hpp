/* ---- Begin: IVec/Init.Ctor.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_INIT_CTOR_HPP
#define TOOLS_IVEC_INIT_CTOR_HPP

/**
 * @file Init.Ctor.hpp
 * @brief Constructor implementations for Tools::ivec<T>.
 *
 * @details Provides all construction pathways for ivec including:
 *          - Default construction (empty, zero-allocation)
 *          - Initializer list construction
 *          - Copy/move construction from std::vector and std::span
 *          - Deep copy construction from another ivec
 *          - Move construction (zero-copy ownership transfer)
 *
 * @note All constructors that allocate memory use operator new[] directly.
 *       Elements are constructed via placement new to support non-default-constructible types.
 *
 * @see Tools::ivec
 */

#include "Base.Class.hpp"

/** Init **/
namespace Tools {
    /// @brief Default constructor. Creates an empty vector with no allocation.
    /// @post size() == 0, capacity() == 0, data() == nullptr
    template <typename T>
    ivec<T>::ivec() noexcept : m_Data(nullptr), m_Size(0), m_Capacity(0) {}
}

namespace Tools {
    /// Construct with {}
    /// @brief Construct from std::vector<T> (deep copy).
    /// @param Data Source vector to copy elements from.
    /// @note Explicit constructor to prevent implicit conversion.
    ///       Allocates exactly Data.size() capacity. Empty source results in no allocation.
    template <typename T>
    ivec<T>::ivec(initl<T> Data)
    : m_Data(nullptr), m_Size(0), m_Capacity(0) {
        if(Data.size() == 0){ return; }

        m_Capacity = Data.size();
        m_Data = Cast::scast<T*>(
            operator new[](m_Capacity * sizeof(T))
        );

        idx i = 0;
        for(const T& x : Data){
            new(m_Data + i) T(x);
            i++;
        }
        m_Size = m_Capacity;
    }

    /// Construct from Data ivec
    /// @brief Deep copy constructor from another ivec.
    /// @param Data Source ivec to copy. All elements are copy-constructed.
    /// @note Allocates exactly other.capacity() (not size) to preserve reserved space.
    ///       If source is empty, no allocation occurs.
    template <typename T>
    ivec<T>::ivec(const ivec& Data)
    : m_Data(nullptr), m_Size(Data.m_Size), m_Capacity(Data.m_Capacity) {
        if (m_Capacity == 0) return;

        m_Data = Cast::scast<T*>(operator new[](m_Capacity * sizeof(T)));
        for (idx i = 0; i < m_Size; ++i) {
            new (m_Data + i) T(Data.m_Data[i]);
        }
    }

    /// Construct from temporary other ivec
    /// @brief Move constructor. Transfers ownership from another ivec.
    /// @param Data Source ivec whose resources are stolen. Left in valid empty state.
    /// @post other.size() == 0, other.capacity() == 0, other.data() == nullptr
    /// @note noexcept — guaranteed not to throw. Critical for STL container compatibility.
    template <typename T>
    ivec<T>::ivec(ivec&& Data) noexcept
    : m_Data(Data.m_Data), m_Size(Data.m_Size), m_Capacity(Data.m_Capacity) {
        Data.m_Data = nullptr;
        Data.m_Size = 0;
        Data.m_Capacity = 0;
    };

    /// Construct from Data std::vector<T>
    /// @brief Deep copy constructor from another ivec.
    /// @param Data Source ivec to copy. All elements are copy-constructed.
    /// @note Allocates exactly other.capacity() (not size) to preserve reserved space.
    ///       If source is empty, no allocation occurs.
    template <typename T>
    ivec<T>::ivec(const vec<T>& Data)
    : m_Data(nullptr), m_Size(0), m_Capacity(0) {
        if(Data.empty()){ return; }

        m_Capacity = Data.size();
        m_Size     = Data.size();
        m_Data = Cast::scast<T*>(operator new[](m_Capacity * sizeof(T)));

        idx i = 0;
        for (const T& e : Data) {
            new (m_Data + i) T(e);
            ++i;
        }
    }

    /// Construct from unified containers using std::span<T>
    /// @brief Construct from std::span<const T> (deep copy).
    /// @param Data Span of elements to copy. Supports any contiguous range.
    /// @note Explicit constructor to prevent implicit conversion.
    ///       Uses std::uninitialized_copy for optimal construction of non-trivial types.
    ///       Empty span results in no allocation.
    template <typename T>
    ivec<T>::ivec(const span<const T>& Data)
    : m_Data(nullptr), m_Size(0), m_Capacity(0) {
        if(Data.empty()) return;

        m_Capacity = Data.size();
        m_Size     = Data.size();
        m_Data     = Cast::scast<T*>(operator new[](m_Capacity * sizeof(T)));
        std::uninitialized_copy(Data.begin(), Data.end(), m_Data);
    };
}


#endif

/* ---- End: IVec/Init.Ctor.hpp ---- */
