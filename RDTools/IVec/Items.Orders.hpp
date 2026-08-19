/* ---- Begin: IVec/Items.Orders.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_ITEMS_ORDERS_HPP
#define TOOLS_IVEC_ITEMS_ORDERS_HPP

/**
 * @file Items.Orders.hpp
 * @brief Sorting, shuffling, and reversing operations for Tools::ivec<T>.
 *
 * @details Provides both returning (copy-based) and in-place (-Inl) variants:
 *          - sort() / sortInl()    : Ascending order via std::sort
 *          - rsort() / rsortInl()  : Descending order via std::sort + std::greater
 *          - shuffle() / shuffleInl() : Random permutation via std::shuffle
 *          - reverse() / reverseInl() : Element reversal via std::reverse
 *
 * @note Returning variants create a deep copy first, then modify the copy.
 *       Original vector is never modified by non-Inl methods.
 *       All operations require T to satisfy the relevant STL concept
 *       (LessThanComparable for sort, Swappable for shuffle/reverse).
 *
 * @see Tools::ivec::uniques
 * @see Tools::ivec::reassign
 */

#include <algorithm>
#include <random>

#include "Base.Class.hpp"

/** Orders return **/
namespace rdt {
    /// @brief Return a new ivec with elements randomly shuffled.
    /// @return Deep copy of this vector with elements in random order.
    /// @note Uses std::mt19937_64 seeded from std::random_device.
    ///       Original vector is unchanged. O(n) complexity.
    template <typename T>
    [[nodiscard]] ivec<T> ivec<T>::shuffle() {
        ivec out(*this);
        out.ShuffleInl();
        return out;
    }

    /// @brief Return a new ivec with elements sorted in ascending order.
    /// @return Deep copy of this vector sorted via operator<.
    /// @note Original vector is unchanged. O(n log n) average complexity.
    ///       Requires T to be LessThanComparable.
    template <typename T>
    [[nodiscard]] ivec<T> ivec<T>::Sort() {
        ivec out(*this);
        out.SortInl();
        return out;
    }

    /// @brief Return a new ivec with elements sorted in descending order.
    /// @return Deep copy of this vector sorted via std::greater<T>.
    /// @note Original vector is unchanged. O(n log n) average complexity.
    ///       Requires T to be comparable via std::greater.
    template <typename T>
    [[nodiscard]] ivec<T> ivec<T>::rSort() {
        ivec out(*this);
        out.rSortInl();
        // std::sort(out.begin(), out.end(), std::greater<T>{});
        return out;
    }

    /** Reversing **/
    /// @brief Return a new ivec with elements in reversed order.
    /// @return Deep copy of this vector with elements reversed.
    /// @note Original vector is unchanged. O(n) complexity.
    template <typename T>
    [[nodiscard]] ivec<T> ivec<T>::Reverse() {
        ivec out(*this);
        out.ReverseInl();
        return out;
    }
}

/** Orders do inline **/
namespace rdt {
    /// @brief Shuffle elements in-place using random permutation.
    /// @note Uses thread-local std::mt19937_64 seeded from std::random_device.
    ///       O(n) complexity. Requires T to be Swappable.
    template <typename T>
    void ivec<T>::ShuffleInl() {
        static std::mt19937_64 rng{ std::random_device{}() };
        std::shuffle(begin(), end(), rng);
    }

    /// @brief Sort elements in-place in ascending order.
    /// @note Uses std::sort (introsort). O(n log n) average complexity.
    ///       Requires T to be LessThanComparable.
    template <typename T>
    void ivec<T>::SortInl() {
        // std::ranges::sort(*this);
        std::sort(begin(), end());
    }

    /// @brief Sort elements in-place in descending order.
    /// @note Uses std::sort with std::greater<T>. O(n log n) average complexity.
    ///       Requires T to be comparable via std::greater.
    template <typename T>
    void ivec<T>::rSortInl() {
        // std::ranges::sort(*this, std::ranges::greater{});
        std::sort(begin(), end(), std::greater<T>{});
    }

    /// @brief Reverse element order in-place.
    /// @note Uses std::reverse. O(n) complexity. Requires T to be Swappable.
    template <typename T>
    void ivec<T>::ReverseInl() {
        // std::ranges::reverse(*this);
        std::reverse(begin(), end());
    }
}

#endif

/* ---- End: IVec/Items.Orders.hpp ---- */
