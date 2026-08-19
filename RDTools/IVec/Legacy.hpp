/* ---- Begin: IVec/Legacy.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_LEGACY_HPP
#define TOOLS_IVEC_LEGACY_HPP

/**
 * @file Legacy.hpp
 * @brief STL-compatible and legacy API aliases for Tools::ivec<T>.
 *
 * @details Provides familiar function names for users migrating from std::vector
 *          or other containers. All functions delegate to modern ivec equivalents:
 *          - push_back()   -> append()
 *          - push_front()  -> appendFirst()
 *          - insert(v)     -> extend()
 *          - insert(item, at) -> appendAt()
 *          - insert(ptr, ptr) -> manual extend with pointer range
 *
 * @note These are thin wrappers with zero overhead. Prefer the modern API
 *       (append, extend, appendAt) in new code for clarity and consistency.
 *
 * @see Tools::ivec::append
 * @see Tools::ivec::extend
 * @see Tools::ivec::appendAt
 */

#include "Base.Class.hpp"
#include <utility>

namespace rdt {
    /** Append single element (legacy) **/
    /// @brief "Append" single element to end (STL-compatible alias).
    /// @param Item Element to copy-append.
    /// @note Delegates to append(const T&). Equivalent to std::vector::push_back.
    template <typename T>
    void ivec<T>::push_back(const T& Item) {
        append(Item);
    }

    /** Append from first index (Legacy-ish) **/
    /// @brief "Insert" single element at beginning (legacy alias).
    /// @param Item Element to copy-insert at front.
    /// @note Delegates to appendFirst(). O(n) due to element shifting.
    ///       Equivalent to std::deque::push_front.
    template <typename T>
    void ivec<T>::push_front(const T& Item) {
        appendFirst(Item);
    }

    /** Move version (optional, for performance) **/
    /// @brief "Extend" vector by moving all elements from another ivec.
    /// @param v Source ivec whose elements are moved into this vector.
    /// @post Source is left in valid-but-unspecified state (typically empty).
    /// @note Delegates to extend() via implicit span conversion.
    ///       More efficient than copy-insert for temporary sources.
    template <typename T>
    void ivec<T>::insert(ivec&& v) {
        extend(std::move(v)); // if extend supports rvalue span
    }

    // // Extend using elements from ivec (legacy)
    // template <typename T>
    // void ivec<T>::insert(const ivec& v) {
    //     extend(v); // implicit conversion: ivec -> span<const T>
    // }
    //
    // // Extend using elements from vector (legacy)
    // template <typename T>
    // void ivec<T>::insert(const vec<T>& v) {
    //     extend(v); // implicit conversion: vec -> span<const T>
    // }

    /// @brief "Extend" vector by copying elements from a span.
    /// @param v Span of elements to copy-append.
    /// @note Delegates to extend(span<const T>). Accepts any contiguous range
    ///       that converts to span (std::vector, std::array, C arrays, etc.).
    /* Safety note
     *
     * v.insert(std::span{arr});        // Won't bind to non-const lvalue ref
     * void insert(span<const T> v);    // Accepts both lvalues and rvalues
     */
    template <typename T>
    void ivec<T>::insert(span<const T>& v) {
        extend(v); // implicit conversion: vec -> span<const T>
    }

    /** Append at Nth index (legacy) **/
    /// @brief "Insert" single element at specified position (legacy alias).
    /// @param Item Element to copy-insert.
    /// @param At Target index [0, size()]. Clamped to size() if out of range.
    /// @note Delegates to appendAt(). O(n) due to element shifting.
    ///       Equivalent to std::vector::insert(iterator, value).
    template <typename T>
    void ivec<T>::insert(const T& Item, const idx At) {
        appendAt(Item, At);
    }

    /// @brief "Extend" vector by copying elements from raw pointer range [From, To).
    /// @param From Pointer to first element (inclusive). Null-safe.
    /// @param To Pointer past last element (exclusive). Null-safe.
    /// @note Safe: handles nullptr, reversed range (From >= To), and empty range.
    ///       Pre-allocates exact capacity needed (single reallocation).
    ///       O(n) where n = To - From.
    template <typename T>
    void ivec<T>::insert(const T* From, const T* To) {
        // Guard: null or invalid range
        if (!From || !To || From >= To) return;

        const auto count = Cast::scast<idx>(To - From);

        // Pre-allocate exact size needed (single realloc)
        if (m_Size + count > m_Capacity) {
            reserve(m_Size + count);
        }

        // Copy elements from pointer range
        for (idx i = 0; i < count; ++i) {
            new (m_Data + m_Size) T(From[i]);
            ++m_Size;
        }
    }
}

#endif

/* ---- End: IVec/Legacy.hpp ---- */
