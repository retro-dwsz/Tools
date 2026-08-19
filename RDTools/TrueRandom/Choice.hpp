/* ---- Begin: TrueRandom/Choice.hpp ---- */

#pragma once

#ifndef TOOLS_TRUE_RANDOM_CHOICE
#define TOOLS_TRUE_RANDOM_CHOICE 10

#include "_Common.hpp"
#include "Single.hpp"
#include "Vector.hpp"

// // ─── Helper: extract value_type from container ───────────────
// // Cannot use alias template with dependent types directly.
// // Struct-based approach is the standard C++ pattern.
// namespace rdt::TrueRandom::Detail {
//     template <typename Container>
//     struct ValueType {
//         using Type = typename Container::value_type;
//     };
// }

/** Choises validatation **/
namespace rdt::TrueRandom {
    /**
     * @brief Validates and clamps index range against data bounds.
     * @param Size The size of the data container.
     * @param From Lower bound (swapped with To if From > To).
     * @param To Upper bound (clamped to Size-1).
     * @throws std::out_of_range if both indices exceed data size after clamping.
     */
    inline void ValidateChoiceRange(const idx Size, idx& From, idx& To) {
        CheckRange(From, To);
        if (From >= Size) {
            throw std::out_of_range("Choice: 'From' index exceeds data size");
        }
        if (To >= Size) {
            To = Size - 1; // Clamp to valid range
        }
    }
}

namespace rdt::TrueRandom {
    /**
     * @brief Pick a single random element from a container.
     *
     * @tparam Data Container type (must have size(), operator[], value_type).
     * @param DataSet Source container. Must not be empty.
     * @return Copy of randomly selected element.
     * @throws std::runtime_error if entropy acquisition fails.
     * @note Uses TRNG — cryptographically secure selection.
     */
    template <typename Data>
    requires requires(const Data& d) {
        { d.size() } -> std::convertible_to<idx>;
        { d[std::declval<idx>()] };
        typename Data::value_type;
    }
    Data::value_type Choice(const Data& DataSet) {
        const idx Index = RandomNum<idx>(0, DataSet.size() - 1);
        return DataSet[Index];
    }

    /**
     * @brief Pick a single random element from a sub-range of a container.
     *
     * @tparam Data Container type.
     * @param DataSet Source container.
     * @param From Lower index bound (inclusive). Auto-swapped if From > To.
     * @param To Upper index bound (inclusive). Clamped to size-1.
     * @return Copy of randomly selected element.
     * @throws std::out_of_range if DataSet is empty or From >= size after clamp.
     */
    template <typename Data>
    requires requires(const Data& d) {
        { d.size() } -> std::convertible_to<idx>;
        { d[std::declval<idx>()] };
        typename Data::value_type;
    }
    Data::value_type Choice(const Data& DataSet, idx From, idx To) {
        CheckRange(From, To);

        if(DataSet.size() == 0) return {};
        ValidateChoiceRange(static_cast<idx>(DataSet.size()), From, To);
        const idx Index = RandomNum<idx>(From, To);

        return DataSet[Index];
    }
}

/** Many items **/
namespace rdt::TrueRandom {
    // template <typename Data>
    // using T1 = Data::value_type;

    /**
     * @brief Pick multiple random elements from a container (with replacement).
     *
     * @tparam Data Container type.
     * @param DataSet Source container.
     * @param Count Number of elements to sample. Default: 1.
     * @return vec of randomly selected elements. May contain duplicates.
     * @note Sampling WITH replacement. For without-replacement, shuffle first.
     */
    template <typename Data>
    requires requires(const Data& d) {
        { d.size() } -> std::convertible_to<idx>;
        { d[std::declval<idx>()] };
        typename Data::value_type;
    }
    vec<typename Data::value_type> Sample(const Data& DataSet, const idx Count) {
        // using T = Data::value_type;

        if(DataSet.size() == 0 || Count == 0) return {};

        const vec Index = RandomNumsV<idx>(Count, 0, DataSet.size() - 1);
        vec<typename Data::value_type> Out;
        Out.reserve(Count);

        for(const auto& i : Index) {
            Out.push_back(DataSet[i]);
        }

        return Out;
    }

    /**
     * @brief Pick multiple random elements from a sub-range (with replacement).
     *
     * @tparam Data Container type.
     * @param DataSet Source container.
     * @param From Lower index bound (inclusive).
     * @param To Upper index bound (inclusive). Clamped to size-1.
     * @param Count Number of elements to sample. Default: 1.
     * @return vec of randomly selected elements from [From, To].
     */
    template <typename Data>
    requires requires(const Data& d) {
        { d.size() } -> std::convertible_to<idx>;
        { d[std::declval<idx>()] };
        typename Data::value_type;
    }
    vec<typename Data::value_type> Sample(const Data& DataSet, idx From, idx To, const idx Count) {
        CheckRange(From, To);

        if(DataSet.size() == 0 || Count == 0) return {};
        ValidateChoiceRange(DataSet.size(), From, To);

        const vec Index = RandomNumsV<idx>(Count, From, To);

        vec<typename Data::value_type> Out;
        Out.reserve(Count);

        for(const auto& i : Index) {
            Out.push_back(DataSet[i]);
        }

        return Out;
    }
}

#endif

/* ---- End: TrueRandom/Choice.hpp ---- */
