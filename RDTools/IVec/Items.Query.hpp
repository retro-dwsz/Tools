/* ---- Begin: IVec/Items.Query.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ITEMS_QUERY_HPP
#define TOOLS_IVEC_ITEMS_QUERY_HPP

/**
 * @file Items.Query.hpp
 * @brief Deduplication and bulk reassignment operations for Tools::ivec<T>.
 *
 * @details Provides two categories of operations:
 *          - uniques() / uniquesInl(): Remove duplicate elements, keeping at most N occurrences
 *          - reassign() / reassignInl(): Overwrite/extend elements from a span at a given position
 *
 * @note uniques() preserves the relative order of first occurrences.
 *       reassignInl() performs in-place overwrite when possible, avoiding reallocation.
 *
 * @see Tools::ivec::filter
 * @see Tools::ivec::extend
 */

#include <algorithm>
#include "Base.Class.hpp"

/** Remove duplicated elements by n times inline/return new **/
namespace rdt {
    /// @brief Return a new ivec with duplicates removed, keeping at most Max occurrences.
    /// @param Max Maximum number of times each value may appear. Must be > 0.
    /// @return New ivec with duplicates filtered. Original is unchanged.
    /// @note Preserves relative order of first occurrences. O(n) time + O(n) space for hash map.
    ///       Returns empty vector if Max <= 0 or source is empty.
    template <typename T>
    ivec<T> ivec<T>::Uniques(const idx Max) {
        ivec Out;
        if (Max <= 0 || m_Size == 0) return ivec{};

        Out.reserve(m_Size);
        umap<T, idx> freq;

        for (idx i = 0; i < m_Size; ++i){
            const T&val = m_Data[i];
            idx&  count = freq[val];

            if (count < Max){
                Out.append(val);
                ++count;
            }
        }

        return Out;
    }

    /// @brief Remove duplicates in-place, keeping at most Max occurrences.
    /// @param Max Maximum number of times each value may appear. Must be > 0.
    /// @post size() reduced to number of unique elements kept. Capacity unchanged.
    /// @note Preserves relative order. O(n) time + O(n) space for hash map.
    ///       No-op if Max <= 0 or size() <= 1.
    template <typename T>
    void ivec<T>::UniquesInl(const idx Max) {
        if (Max <= 0 || m_Size <= 1) return;

        umap<T, idx> freq;
        idx          write = 0;

        for (idx read = 0; read < m_Size; ++read){
            T&  val = m_Data[read];
            idx&count = freq[val];

            if (count < Max){
                if (write != read){
                    // move element forward
                    new (m_Data + write) T(std::move(val));
                    m_Data[read].~T();
                }
                ++write;
                ++count;
            } else {
                // destroy skipped duplicate
                m_Data[read].~T();
            }
        }

        m_Size = write;
    }
}

/** Reassign based on specified iterable **/
namespace rdt {
    /// @brief Overwrite elements starting at Start with data from span, returning new ivec.
    /// @param Data Span of elements to write.
    /// @param Start Position to begin overwriting [0, size()]. Clamped to size().
    /// @return New ivec with the result. Original is unchanged.
    /// @note If Start + Data.size() > size(), the result is extended to fit.
    ///       Delegates to reassignInl() on a copy.
    template <typename T>
    ivec<T> ivec<T>::Reassign(std::span<const T> Data, const idx Start) {
        ivec out(*this); // copy original
        out.ReassignInl(Data, Start);
        return out;
    }

    /// @brief Overwrite elements in-place starting at Start with data from span.
    /// @param Data Span of elements to write.
    /// @param Start Position to begin overwriting [0, size()]. Clamped to size().
    /// @post Elements at [Start, min(Start+Data.size(), old_size)) are overwritten.
    ///       If Start + Data.size() > old_size, vector is extended via reserve() + placement new.
    /// @note Pure overwrite path (no allocation) when Start + Data.size() <= size().
    ///       Extension path uses single reserve() call for exact capacity.
    template <typename T>
    void ivec<T>::ReassignInl(std::span<const T> Data, idx Start) {
        if (Data.empty()) return;

        // Clamp from to valid range [0, m_Size]
        if (Start > m_Size) Start = m_Size;

        const idx needed = Start + Data.size();

        if (needed <= m_Size) {
            // Pure overwrite: no allocation, just assign
            for (idx i = 0; i < Data.size(); ++i) {
                m_Data[Start + i] = Data[i];
            }
        } else {
            // Warning: Partial overwrite + extension needed
            // Overwrite existing elements first
            const idx overwrite_count = m_Size - Start;
            for (idx i = 0; i < overwrite_count; ++i) {
                m_Data[Start + i] = Data[i];
            }

            // Reserve and append remaining elements
            reserve(needed);
            for (idx i = overwrite_count; i < Data.size(); ++i) {
                new (m_Data + m_Size) T(Data[i]);
                ++m_Size;
            }
        }
    }
}

#endif

/* ---- End: IVec/Items.Query.hpp ---- */
