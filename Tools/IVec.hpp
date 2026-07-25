/* ---- Begin: IVec.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_HPP
#define TOOLS_IVEC_HPP

/**
 * @file IVec.hpp
 * @brief Main entry point for the Tools::ivec<T> container library.
 *
 * @section sec_overview Overview
 * `Tools::ivec<T>` is a modern, heap-allocated dynamic array designed for C++26.
 * While it shares the core memory model of `std::vector` (contiguous heap storage,
 * size/capacity tracking, pointer-based iterators), it diverges significantly in
 * API design to prioritize developer ergonomics, Python-like expressiveness, and
 * explicit functional paradigms.
 *
 * @section sec_philosophy Design Philosophy & Naming Conventions
 * - **Immutability by Default (Returning vs In-Place):**
 *   Most algorithms (sort, reverse, slice, erase, uniques) return a *new* modified
 *   copy, leaving the original vector intact. Append the `-Inl` suffix
 *   (e.g., `sortInl()`, `eraseInl()`) to mutate the container in-place.
 * - **Pythonic Ergonomics:**
 *   Supports operator overloading for concatenation (`+`), repetition (`*`),
 *   element-wise equality (`==`), and negative-index slicing (`slice(-3, -1)`).
 * - **Functional Pipelines:**
 *   Built-in eager `map()` and `filter()` methods for list-comprehension-style
 *   transformations without needing external ranges/views.
 * - **Zero-Overhead Iteration:**
 *   Uses raw pointers (`T*`, `const T*`) as iterators. This guarantees full,
 *   zero-cost compatibility with `<algorithm>`, `std::ranges`, and `fmt/ranges.h`.
 * - **Safety vs Speed:**
 *   `operator[]` provides unchecked, maximum-speed access. Use `at()`, `refbegin()`,
 *   or `refend()` when bounds-checking and exception safety are required.
 *
 * @section sec_example Quick Example
 * @code{.cpp}
 * #include "IVec.hpp"
 * #include "IVec/Format.fmt.hpp" // Opt-in for format spec forwarding
 * #include <fmt/format.h>
 *
 * using namespace Tools;
 *
 * ivec<int> data = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
 *
 * // Functional pipeline: filter evens, then square them
 * auto result = data.filter([](int x){ return x % 2 == 0; })
 *                 .map([](int x){ return x * x; });
 * // result: [4, 16, 36, 64, 100]
 *
 * // Pythonic slicing (inclusive bounds: [From, To])
 * auto middle = data.slice(2, 5); // [3, 4, 5, 6]
 *
 * // Formatting with spec forwarding
 * ivec<double> pi = {3.14159, 2.71828};
 * fmt::print("{:.2f}\n", pi); // Outputs: [3.14, 2.72]
 * @endcode
 *
 * @section sec_integration Integration Notes
 * - **Formatters:** Custom `fmt` and `std::format` specializations are **NOT** included
 *   in this master header to prevent SFINAE conflicts with `<fmt/ranges.h>`. Include
 *   `IVec/Format.fmt.hpp` or `IVec/Format.std.hpp` explicitly in your `.cpp` files
 *   when you need format spec forwarding (e.g., `{:.2f}`).
 * - **Ranges Concept:** Fully satisfies `std::ranges::range` and
 *   `std::ranges::borrowed_range` (for lvalues) out of the box.
 *
 * @see Tools::ivec
 * @see IVec/Base.Master.hpp
 */

#include "FeatureCheck.hpp"
#include "IVec/Base.Master.hpp"

// template <typename T>
// using ivec = Tools::ivec<T>;

#endif

/* ---- End: IVec.hpp ---- */
