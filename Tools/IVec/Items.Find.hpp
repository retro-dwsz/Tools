/* ---- Begin: IVec/Items.Find.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_FIND_HPP
#define TOOLS_IVEC_FIND_HPP

#include "Base.Class.hpp"

/**
 * @file Items.Find.hpp
 * @brief Linear search utilities for Tools::ivec<T>.
 *
 * @details Provides O(n) element lookup operations including existence check,
 *          index finding, frequency counting, and multi-index collection.
 *          All methods use linear scan and are noexcept where applicable.
 *
 * @note For sorted data, consider using std::lower_bound/upper_bound via
 *       begin()/end() iterators for O(log n) performance instead.
 *
 * @see Tools::ivec
 */

/* Non Const & Const Finders */
namespace Tools {
    /// @brief Check whether an element exists in the vector.
    /// @param Item Element to search for (compared via operator==).
    /// @return true if at least one matching element is found, false otherwise.
    /// @note O(n) linear scan. Const-correct: callable on both mutable and const ivec.
    template <typename T>
    bool ivec<T>::Contains(const T& Item) noexcept {
        for(idx i = 0; i < m_Size; ++i) {
            if(m_Data[i] == Item)
                return true;
        }
        return false;
    }

    /// @brief Find the index of the first occurrence of an element.
    /// @param Item Element to search for (compared via operator==).
    /// @return Index of first match, or size() if not found.
    /// @note O(n) linear scan. Returns size() (not -1) as sentinel value
    ///       since idx is unsigned. Always check result < size() before use.
    template <typename T>
    idx ivec<T>::Find(const T& Item) noexcept {
        for(idx i = 0; i < m_Size; ++i) {
            if(m_Data[i] == Item)
                return i;
        }
        return m_Size;   // not found
    }

    /// @brief Count how many times an element appears in the vector.
    /// @param Item Element to count (compared via operator==).
    /// @return Number of occurrences (0 if not found).
    /// @note O(n) linear scan. Equivalent to std::count(begin(), end(), Item).
    template <typename T>
    idx ivec<T>::FindFreq(const T& Item) noexcept {
        idx count = 0;
        for(idx i = 0; i < m_Size; ++i) {
            if(m_Data[i] == Item)
                ++count;
        }
        return count;
    }
    /// @brief *Find all* occurrences of an element, returning count and indices.
    /// @param Item Element to search for (compared via operator==).
    /// @return pair<count, vec<idx>> where count is number of matches and
    ///         vec contains all matching indices in ascending order.
    /// @note O(n) linear scan + dynamic allocation for result vector.
    ///       If no matches found, returns {0, empty_vec}.
    template <typename T>
    pair<idx, vec<T>> ivec<T>::FindAll(const T& Item) noexcept {
        idx count = 0;
        vec<T> idxs;

        for(idx i = 0; i < m_Size; ++i) {
            if(m_Data[i] == Item) {
                ++count;
                idxs.push_back(i);
            }
        }
        return {count, idxs};
    }
}

/* Const Finders */
/*
namespace Tools {
    template <typename T>
    bool ivec<T>::Contains(const T& Item) const noexcept {
        for(idx i = 0; i < m_Size; ++i) {
            if(m_Data[i] == Item)
                return true;
        }
        return false;
    }

    template <typename T>
    idx ivec<T>::Find(const T& Item) const noexcept {
        for(idx i = 0; i < m_Size; ++i) {
            if(m_Data[i] == Item)
                return i;
        }
        return m_Size;   // not found
    }

    template <typename T>
    idx ivec<T>::FindFreq(const T& Item) const noexcept {
        idx count = 0;
        for(idx i = 0; i < m_Size; ++i) {
            if(m_Data[i] == Item)
                ++count;
        }
        return count;
    }

    template <typename T>
    pair<idx, vec<T>> ivec<T>::FindAll(const T& Item) const noexcept {
        idx count = 0;
        vec<T> idxs;

        for(idx i = 0; i < m_Size; ++i) {
            if(m_Data[i] == Item) {
                ++count;
                idxs.push_back(i);
            }
        }
        return {count, idxs};
    }
}
*/
#endif

/* ---- End: IVec/Items.Find.hpp ---- */
