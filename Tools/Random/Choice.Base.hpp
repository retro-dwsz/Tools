/* ---- Begin: Random/Choice.Base.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_CHOICE_BASE_HPP
#define TOOLS_RANDOM_CHOICE_BASE_HPP 16

#include "_Common.hpp"
#include "Single.Base.hpp"
#include "Vector.Base.hpp"

/**
 * @file Choice.Base.hpp
 * @brief Provides Python-like random selection functions (choice & sample) using preset generators.
 *
 * This header implements generic random selection from any contiguous container
 * (vec, std::vector, std::array, etc.) using thread-local preset generators.
 *
 * - **Choice**: Selects a single random element (like Python's `random.choice`).
 * - **Sample**: Selects N random elements WITH replacement (like Python's `random.choices`).
 *
 * @note All functions use preset thread-local generators via Single.Base.hpp and Vector.Base.hpp.
 *       For custom generator support, see Choice.Custom.hpp.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * vec<i32> data = {10, 20, 30, 40, 50};
 *
 * auto item  = Random::Choice(data);           // Single random element
 * auto items = Random::Sample(data, 3);        // 3 random elements (with replacement)
 * auto sub   = Random::Choice(data, 1, 3);     // Random from index [1..3]
 * auto subs  = Random::Sample(data, 1, 3, 5);  // 5 random elements from index [1..3]
 * @endcode
 */

/** Single item **/
namespace Tools::Random {
    /** Get single random item **/
    /**
     * @brief Selects a single random element from the entire container.
     *
     * Equivalent to Python's `random.choice(data)`.
     * Uses a preset thread-local generator internally.
     *
     * @tparam Data Any contiguous container with `.size()` and `operator[]`
     *                   (e.g., vec<T>, std::vector<T>, std::array<T,N>).
     * @param DataSet Source data container.
     * @return typename Container::value_type A randomly selected element.
     *         Returns default-constructed value if container is empty.
     *
     * @note Time complexity: O(1).
     */
    template <typename Data>
    auto Choice(const Data& DataSet) -> Data::value_type {
        const idx Index = RandomNum<idx>(0, DataSet.size() - 1);
        return DataSet[Index];
    }

    /** Get single random item from selected range **/
    /**
     * @brief Selects a single random element from a sub-range [From, To].
     *
     * @tparam Data Any contiguous container with `.size()` and `operator[]`.
     * @param DataSet Source data container.
     * @param From Lower bound index (inclusive). Auto-swapped if From > To.
     * @param To Upper bound index (inclusive). Clamped to Data.size()-1.
     * @return typename Container::value_type A randomly selected element from the specified range.
     *         Returns default-constructed value if container is empty.
     * @throws std::out_of_range if From >= Data.size() after validation.
     *
     * @see ValidateChoiceRange in _Common.hpp for range validation details.
     */
    template<typename Data>
    auto Choice(const Data& DataSet, idx From, idx To) -> Data::value_type {
        CheckRange(From, To);

        if(DataSet.size() == 0) return {};
        ValidateChoiceRange(static_cast<idx>(DataSet.size()), From, To);
        const idx Index = RandomNum<idx>(From, To);

        return DataSet[Index];
    }
}

/** Many items **/
namespace Tools::Random {
    /** Get N random items **/
    /**
     * @brief Selects N random elements from the entire container (with replacement).
     *
     * Equivalent to Python's `random.choices(data, k=Count)`.
     * Elements may appear multiple times in the result since sampling is done
     * with replacement.
     *
     * @tparam Data Any contiguous container with `.size()` and `operator[]`.
     * @param DataSet Source data container.
     * @param Count Number of elements to select.
     * @return vec<typename Container::value_type> Vector containing 'Count' randomly
     *         selected elements. Returns empty vector if Data is empty or Count <= 0.
     *
     * @note Time complexity: O(Count). Memory: allocates a new vec of size Count.
     */
    template <typename Data>
    vec<typename Data::value_type> Sample(const Data& DataSet, const idx Count) {
        using T = Data::value_type;

        if(DataSet.size() == 0 || Count == 0) return {};

        const vec Index = RandomNumsV<idx>(Count, 0, DataSet.size() - 1);
        vec<T> Out;
        Out.reserve(Count);

        for(const auto& i : Index) {
            Out.push_back(DataSet[i]);
        }

        return Out;
    }

    /** Get N random items from selected range **/
    /**
     * @brief Selects N random elements from a sub-range [From, To] (with replacement).
     *
     * @tparam Data Any contiguous container with `.size()` and `operator[]`.
     * @param DataSet Source data container.
     * @param From Lower bound index (inclusive). Auto-swapped if From > To.
     * @param To Upper bound index (inclusive). Clamped to Data.size()-1.
     * @param Count Number of elements to select.
     * @return vec<typename Container::value_type> Vector containing 'Count' randomly
     *         selected elements from the specified range.
     *         Returns empty vector if Data is empty or Count <= 0.
     * @throws std::out_of_range if From >= Data.size() after validation.
     *
     * @see ValidateChoiceRange in _Common.hpp for range validation details.
     */
    template <typename Data>
    vec<typename Data::value_type> Sample(const Data& DataSet, idx From, idx To, const idx Count) {
        CheckRange(From, To);
        using T = Data::value_type;

        if(DataSet.size() == 0 || Count == 0) return {};
        ValidateChoiceRange(DataSet.size(), From, To);

        const vec Index = RandomNumsV<idx>(Count, From, To);

        vec<T> Out;
        Out.reserve(Count);

        for(const auto& i : Index) {
            Out.push_back(DataSet[i]);
        }

        return Out;
    }
}

#endif

/* ---- End: Random/Choice.Base.hpp ---- */
