/* ---- Begin: IVec/Opr.Dunder.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_OPR_DUNDER_HPP
#define TOOLS_IVEC_OPR_DUNDER_HPP

/**
 * @file Opr.Dunder.hpp
 * @brief Python-style operator overloads for Tools::ivec<T>.
 *
 * @details Provides intuitive operator syntax inspired by Python list semantics:
 *          - operator+ : Concatenation (returns new ivec)
 *          - operator* : Repetition (returns new ivec with N copies)
 *          - operator== : Element-wise equality comparison
 *
 * @note All operators return NEW vectors. No in-place mutation variants
 *       (+=, *=) are provided to maintain value semantics and prevent
 *       accidental aliasing bugs. Use extend() for in-place concatenation.
 *
 * @see Tools::ivec::extend
 * @see Tools::ivec::contains
 */

#include "Base.Class.hpp"

/** Python like functions **/
namespace rdt {
    // __add__ (a.k.a "extend")
    /// @brief Concatenate two vectors, returning a new ivec.
    /// @param Other Right-hand operand to append.
    /// @return New ivec containing all elements of this followed by all elements of Other.
    /// @note Equivalent to Python: a + b. Does not modify either operand.
    ///       Pre-allocates exact capacity needed (no intermediate reallocations).
    template <typename T>
    ivec<T> ivec<T>::operator+(const ivec& Other) {
        ivec Out(*this);
        Out.reserve(this->m_Capacity + Other.m_Capacity);
        Out.extend(Other);
        return Out;
    };

    // __iadd__ -> "extend"

    // __mul__
    /// @brief Repeat vector contents N times, returning a new ivec.
    /// @param Count Number of repetitions. Zero returns empty vector.
    /// @return New ivec containing this->size() * Count elements.
    /// @note Equivalent to Python: a * n. Does not modify this vector.
    ///       Pre-allocates exact capacity needed. O(n * size()) complexity.
    template <typename T>
    ivec<T> ivec<T>::operator*(const idx Count) {
        ivec<T> Out;
        Out.reserve(this->m_Size * Count);

        for (idx i = 0; i < Count; i++) {
            Out.extend(*this);
        }

        return Out;
    }

    // __imul__ -> no

    // __eq__
    /// @brief Element-wise equality comparison.
    /// @param Other Vector to compare against.
    /// @return true if both vectors have same size AND all corresponding elements are equal.
    /// @note Equivalent to Python: a == b. Short-circuits on first mismatch.
    ///       Uses operator== on element type T.
    template <typename T>
    bool ivec<T>::operator==(const ivec& Other) const {
        if (m_Size != Other.m_Size) return false;
        for (idx i = 0; i < m_Size; ++i) {
            if (!(m_Data[i] == Other.m_Data[i])) return false;
        }
        return true;
    }

    // __ne__   -> no.
    // __contains__ -> (already)
    // __len__  -> no.
    // __lt__   -> no.
    // __le__   -> no.
    // __gt__   -> no.
    // __ge__   -> no.

    // Intentionally omitted operators:
    // - operator!= : Can be synthesized from == by compiler (C++20+)
    // - operator<, <=, >, >= : Lexicographic ordering not implemented.
    //   Use std::lexicographical_compare(begin(), end(), ...) explicitly if needed.
    // - operator+=, *= : In-place mutation omitted to preserve value semantics.
    //   Use extend() for concatenation, manual loop for repetition.
    // - operator[] : Defined in Access.Getset.hpp
    // - contains() : Defined in Items.Finders.hpp
}

#endif

/* ---- End: IVec/Opr.Dunder.hpp ---- */
