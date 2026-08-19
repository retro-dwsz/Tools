/* ---- Begin: Random/Choice.Custom.hpp ---- */

#pragma once

#ifndef TOOLS_RANDOM_CHOICE_CUSTOM_HPP
#define TOOLS_RANDOM_CHOICE_CUSTOM_HPP 17

/**
 * @file Choice.Custom.hpp
 * @brief Provides Python-like random selection functions (choice & sample) using a user-provided generator.
 *
 * This header implements generic random selection from any contiguous container
 * (vec, std::vector, std::array, etc.) using a caller-supplied TwisterAny<> engine.
 *
 * - **Choice**: Selects a single random element (like Python's `random.choice`).
 * - **Sample**: Selects N random elements WITH replacement (like Python's `random.choices`).
 *
 * @note Unlike Base versions, these functions do NOT use internal thread-local generators.
 *       The caller is responsible for thread safety if sharing the generator across threads.
 *
 * @section usage Usage
 * @code
 * #include "Random.hpp"
 * using namespace Tools;
 *
 * Twister64 gen(42);
 * vec<i32> data = {10, 20, 30, 40, 50};
 *
 * auto item  = Random::Choice(gen, data);           // Single random element
 * auto items = Random::Sample(gen, data, 3);        // 3 random elements (with replacement)
 * auto sub   = Random::Choice(gen, data, 1, 3);     // Random from index [1..3]
 * auto subs  = Random::Sample(gen, data, 1, 3, 5);  // 5 random elements from index [1..3]
 * @endcode
 */

#include "_Common.hpp"
#include "Single.Custom.hpp"
#include "Vector.Custom.hpp"

/** Single item **/
namespace rdt::Random {
    /** Get single random item **/
    /**
     * @brief Selects a single random element from the entire dataset using a custom generator.
     *
     * Equivalent to Python's `random.choice(data)`.
     *
     * @tparam Data Any contiguous container with `.size()` and `operator[]`
     *              (e.g., vec<T>, std::vector<T>, std::array<T,N>).
     * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
     * @param DataSet Source data container.
     * @return typename Data::value_type A randomly selected element.
     *         Returns default-constructed value if dataset is empty.
     *
     * @note Time complexity: O(1).
     */
    template <typename Data>
    auto Choice(TwisterAny<>& Gen, const Data& DataSet) -> Data::value_type {
        //fmt::println("DataSet = {}", Dat

        const idx Index = RandomNum<idx>(Gen, 0, DataSet.size() - 1);
        return DataSet[Index];
    }

    /** Get single random item from selected range **/
    /**
     * @brief Selects a single random element from a sub-range [From, To] using a custom generator.
     *
     * @tparam Data Any contiguous container with `.size()` and `operator[]`.
     * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
     * @param DataSet Source data container.
     * @param From Lower bound index (inclusive). Auto-swapped if From > To.
     * @param To Upper bound index (inclusive). Clamped to DataSet.size()-1.
     * @return typename Data::value_type A randomly selected element from the specified range.
     *         Returns default-constructed value if dataset is empty.
     * @throws std::out_of_range if From >= DataSet.size() after validation.
     *
     * @see ValidateChoiceRange in _Common.hpp for range validation details.
     */
    template<typename Data>
    auto Choice(TwisterAny<>& Gen, const Data& DataSet, idx From, idx To) -> Data::value_type {
        //fmt::println("DataSet = {}; From = {}; To =

        if(DataSet.size() == 0) return {};
        const idx Index = RandomNum<idx>(Gen, From, To);

        return DataSet[Index];
    }
}

/** Many items **/
namespace rdt::Random {
    /** Get N random items **/
    /**
     * @brief Selects N random elements from the entire dataset using a custom generator (with replacement).
     *
     * Equivalent to Python's `random.choices(data, k=Count)`.
     * Elements may appear multiple times in the result since sampling is done
     * with replacement.
     *
     * @tparam Data Any contiguous container with `.size()` and `operator[]`.
     * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
     * @param DataSet Source data container.
     * @param Count Number of elements to select.
     * @return vec<typename Data::value_type> Vector containing 'Count' randomly
     *         selected elements. Returns empty vector if dataset is empty or Count <= 0.
     *
     * @note Time complexity: O(Count). Memory: allocates a new vec of size Count.
     */
    template <typename Data>
    vec<typename Data::value_type> Sample(TwisterAny<>& Gen, const Data& DataSet, const idx Count) {
        using T = Data::value_type;

        if(DataSet.size() == 0 || Count == 0) return {};

        const vec Index = RandomNumsV<idx>(Gen, Count, 0, DataSet.size() - 1);
        vec<T> Out;
        Out.reserve(Count);

        for(const auto& i : Index) {
            Out.push_back(DataSet[i]);
        }

        return Out;
    }

    /** Get N random items from selected range **/
    /**
     * @brief Selects N random elements from a sub-range [From, To] using a custom generator (with replacement).
     *
     * @tparam Data Any contiguous container with `.size()` and `operator[]`.
     * @param Gen Reference to a Mersenne Twister engine (TwisterAny<>).
     * @param DataSet Source data container.
     * @param From Lower bound index (inclusive). Auto-swapped if From > To.
     * @param To Upper bound index (inclusive). Clamped to DataSet.size()-1.
     * @param Count Number of elements to select.
     * @return vec<typename Data::value_type> Vector containing 'Count' randomly
     *         selected elements from the specified range.
     *         Returns empty vector if dataset is empty or Count <= 0.
     * @throws std::out_of_range if From >= DataSet.size() after validation.
     *
     * @see ValidateChoiceRange in _Common.hpp for range validation details.
     */
    template <typename Data>
    vec<typename Data::value_type> Sample(TwisterAny<>& Gen, const Data& DataSet, idx From, idx To, const idx Count) {
        using T = Data::value_type;

        if(DataSet.size() == 0 || Count == 0) return {};
        ValidateChoiceRange(DataSet.size(), From, To);

        const vec Index = RandomNumsV<idx>(Gen, Count, From, To);

        vec<T> Out;
        Out.reserve(Count);

        for(const auto& i : Index) {
            Out.push_back(DataSet[i]);
        }

        return Out;
    }
}

#endif

/* ---- End: Random/Choice.Custom.hpp ---- */
