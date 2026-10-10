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
 * using namespace rdt;
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
/**
 * @brief Generic single-element random selection for any random-access container.
 *
 * @details Provides Python-style random.choice() as free functions.
 *          Opt-in header — NOT included by IVec.hpp or Base.Master.hpp
 *          to avoid pulling <random> into every translation unit.
 *
 * @note Requires container to satisfy std::ranges::random_access_range
 *       and std::ranges::sized_range. This covers ivec, std::vector,
 *       std::array, std::span, std::deque, and C arrays (via ADL).
 *
 * @see rdt::Random::Sample (multi-element selection)
 * @see rdt::Random::RandomNum
 */
namespace rdt::Random {
    /** Get single random item **/
    /*
     * @brief Select a single random element from the entire container.
     * @tparam Data Any random-access sized range (ivec, vector, array, span, etc.).
     * @param DataSet Source container. Must not be empty for meaningful results.
     * @return Copy of a randomly selected element.
     *         Returns default-constructed value_type if container is empty.
     * @note O(1) time complexity. Equivalent to Python's random.choice().
     *       Uses thread-local RNG internally.
     */
    template <typename Data>
    requires std::ranges::random_access_range<Data> && std::ranges::sized_range<Data>
    [[nodiscard]] auto Choice(const Data& DataSet) -> std::ranges::range_value_t<Data> {
        using Type = std::ranges::range_value_t<Data>;
        const auto Size = scast<idx>(DataSet.size());
        if (Size == 0) return Type{};

        // RandomNum uses exclusive upper bound: [0, Size)
        const idx index = RandomNum<idx>(0, Size);
        return DataSet[index];
    }

    /** Get single random item from selected range **/
    /*
     * @brief Select a single random element from sub-range [From, To] inclusive.
     * @tparam Data Any random-access sized range.
     * @param DataSet Source container.
     * @param From Lower bound index (inclusive). Auto-swapped if From > To.
     * @param To Upper bound index (inclusive). Clamped to size()-1.
     * @return Copy of a randomly selected element from [From, To].
     *         Returns default-constructed value_type if effective range is empty.
     * @note O(1) time complexity. Both bounds are clamped to valid container range.
     *       Uses thread-local RNG internally.
     */
    template <typename Data>
        requires std::ranges::random_access_range<Data> &&
                 std::ranges::sized_range<Data>
    [[nodiscard]] auto Choice(const Data& DataSet, idx From, idx To)
        -> std::ranges::range_value_t<Data>
    {
        using Type = std::ranges::range_value_t<Data>;
        const auto Size = scast<idx>(DataSet.size());
        if (Size == 0) return Type{};

        // Auto-swap if reversed
        if (From > To) std::swap(From, To);

        // Clamp to valid range [0, Size-1]
        if (From >= Size) From = Size - 1;
        if (To >= Size)   To   = Size - 1;

        // Convert inclusive [From, To] → exclusive [From, To+1) for RandomNum
        const idx index = RandomNum<idx>(From, To + 1);
        return DataSet[index];
    }
}

/** Many items **/
/**
 * @brief Generic multi-element random selection (with replacement) for any random-access container.
 *
 * @details Provides Python-style random.choices() as free functions.
 *          Sampling is done WITH replacement — elements may appear multiple times.
 *          Opt-in header — NOT included by IVec.hpp or Base.Master.hpp.
 *
 * @note Requires container to satisfy std::ranges::random_access_range
 *       and std::ranges::sized_range.
 *
 * @see rdt::Random::Choice (single-element selection)
 * @see rdt::Random::RandomNumsV
 */
namespace rdt::Random {
    /** Get N random items **/
    /*
     * @brief Select N random elements from the entire container (with replacement).
     * @tparam Data Any random-access sized range (ivec, vector, array, span, etc.).
     * @param DataSet Source container.
     * @param Count Number of elements to select.
     * @return vec<value_type> containing Count randomly selected elements.
     *         Returns empty vec if container is empty or Count == 0.
     * @note O(Count) time. Elements may repeat (sampling with replacement).
     *       Equivalent to Python's random.choices(data, k=Count).
     *       Uses thread-local RNG internally.
     */
    template <typename Data>
    requires std::ranges::random_access_range<Data> && std::ranges::sized_range<Data>
    [[nodiscard]] auto Sample(const Data& DataSet, idx Count)
        -> vec<std::ranges::range_value_t<Data>>
    {
        using T = std::ranges::range_value_t<Data>;

        const idx Size = scast<idx>(DataSet.size());
        if (Size == 0 || Count == 0) return {};

        // RandomNumsV uses exclusive upper bound: [0, Size)
        const vec<idx> indices = RandomNumsV<idx>(Count, 0, Size);

        vec<T> out;
        out.reserve(Count);
        for (const auto& i : indices) {
            out.append(DataSet[i]);
        }
        return out;
    }

    /** Get N random items from selected range **/
    /*
     * @brief Select N random elements from sub-range [From, To] inclusive (with replacement).
     * @tparam Data Any random-access sized range.
     * @param DataSet Source container.
     * @param From Lower bound index (inclusive). Auto-swapped if From > To.
     * @param To Upper bound index (inclusive). Clamped to size()-1.
     * @param Count Number of elements to select.
     * @return vec<value_type> containing Count randomly selected elements from [From, To].
     *         Returns empty vec if effective range is empty or Count == 0.
     * @note O(Count) time. Both bounds are clamped to valid container range.
     *       Equivalent to Python's random.choices(data[From:To+1], k=Count).
     *       Uses thread-local RNG internally.
     */
    template <typename Data>
        requires std::ranges::random_access_range<Data> && std::ranges::sized_range<Data>
    [[nodiscard]] auto Sample(const Data& DataSet, idx From, idx To, idx Count)
        -> vec<std::ranges::range_value_t<Data>>
    {
        using T = std::ranges::range_value_t<Data>;

        const idx Size = scast<idx>(DataSet.size());
        if (Size == 0 || Count == 0) return {};

        // Auto-swap if reversed
        if (From > To) std::swap(From, To);

        // Clamp to valid range [0, Size-1]
        if (From >= Size) From = Size - 1;
        if (To >= Size)   To   = Size - 1;

        // Convert inclusive [From, To] → exclusive [From, To+1) for RandomNumsV
        const vec<idx> indices = RandomNumsV<idx>(Count, From, To + 1);

        vec<T> out;
        out.reserve(Count);
        for (const auto& i : indices) {
            out.append(DataSet[i]);
        }
        return out;
    }
}

#endif

/* ---- End: Random/Choice.Base.hpp ---- */
