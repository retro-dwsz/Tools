/* ---- Begin: IVec/Init.Dtor.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_INIT_DTOR_HPP
#define TOOLS_IVEC_INIT_DTOR_HPP

/**
 * @file Init.Dtor.hpp
 * @brief Destructor implementation for Tools::ivec<T>.
 *
 * @details Responsible for proper cleanup of heap-allocated resources:
 *          1. Explicitly destroys all constructed elements via destructor calls
 *          2. Releases raw memory back to the allocator via operator delete[]
 *
 * @note This destructor is noexcept and safe to call on moved-from objects
 *       (where m_Data == nullptr). operator delete[](nullptr) is a valid no-op
 *       per the C++ standard.
 *
 * @warning Elements are destroyed in forward order [0, size). If reverse
 *          destruction order is required for your use case, modify accordingly.
 *
 * @see Tools::ivec::~ivec
 */

#include "Base.Class.hpp"

namespace Tools {
    /// @brief Destructor. Destroys all elements and releases heap memory.
    /// @post All element destructors have been called. Raw memory is freed.
    /// @note noexcept — guaranteed not to throw. Element destructors that throw
    ///       will result in std::terminate() being called.
    template <typename T>
    ivec<T>::~ivec() noexcept {
        // Destroy all constructed elements explicitly
        // (placement-new constructed objects require manual destruction)
        if constexpr (!std::is_trivially_destructible_v<T>) {
            for(idx i = 0; i < m_Size; i++){
                m_Data[i].~T();
            }
        }

        // Release raw heap memory. Safe even if m_Data == nullptr (moved-from state).
        operator delete[](m_Data);
    }
}
#endif

/* ---- Begin: IVec/Init.Dtor.hpp ---- */
