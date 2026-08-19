#pragma once

#ifndef TOOLSIVEC_BASE_RANGE_SQUALIFICATION_HPP
#define TOOLSIVEC_BASE_RANGE_SQUALIFICATION_HPP

/**
 * @file Base.RangesQualification.hpp
 * @brief Compile-time C++20/26 ranges concept verification for Tools::ivec<T>.
 *
 * @details This header is an OPT-IN debugging aid. It is intentionally NOT included
 *          in Base.Master.hpp to avoid slowing down normal compilation or causing
 *          false-positive failures during development.
 *
 *          Include this file in your test TU or main.cpp to verify that ivec
 *          correctly satisfies the required range concepts after modifying
 *          iterator/accessor implementations.
 *
 * @par Concepts Verified
 * |                  Concept                 | Expected |               Rationale               |
 * |------------------------------------------|----------|---------------------------------------|
 * | std::ranges::range                       |   PASS   | Has valid begin()/end()               |
 * | std::ranges::borrowed_range (rvalue)     |   FAIL   | Owns heap data; rvalue would dangle   |
 * | std::ranges::borrowed_range (lvalue ref) |   PASS   | Lvalue lifetime guaranteed by caller  |
 *
 * @warning Do NOT include this in production headers or Base.Master.hpp.
 *          The negative static_assert for rvalue borrowed_range is expected
 *          and intentional — it confirms correct ownership semantics.
 *
 * @see Tools::ivec::begin
 * @see Tools::ivec::end
 */

/** C++20/26 Ranges Concept Verification **/
// These static_asserts verify at compile-time that ivec satisfies
// the required range concepts. If any assertion fails, check that
// begin()/end() have proper const overloads returning pointers.

#include "Base.Class.hpp"

#if __has_include(<ranges>)
#include <ranges>

// Compile-time verification (uncomment to enforce):
namespace rdt {
    template <typename T>
    concept IsIVecRange = std::ranges::range<ivec<T>>;
    static_assert(IsIVecRange<i32>, "ivec must satisfy std::ranges::range");

    template <typename T>
    concept IsIVecBorrowedRange_Val = std::ranges::borrowed_range<ivec<T>>;
    static_assert(IsIVecBorrowedRange_Val<i32>, "ivec (&) must satisfy std::ranges::borrowed_range");

    template <typename T>
    concept IsIVecBorrowedRange_Ref = std::ranges::borrowed_range<ivec<T>&>;
    static_assert(IsIVecBorrowedRange_Ref<i32>, "ivec (&) must satisfy std::ranges::borrowed_range");
}

#endif


#endif
