/* ---- Begin: IVec/Converter.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_CONVERT_HPP
#define TOOLS_IVEC_CONVERT_HPP

/**
 * @file Converter.hpp
 * @brief String formatting and generic container conversion for Tools::ivec<T>.
 *
 * @details Provides utilities for converting ivec contents to strings and
 *          other container types. Explicit conversion operators (span, vector)
 *          are defined separately in Converter.Opr.hpp.
 *
 * @note toVector() and toSpan() have been removed from this file.
 *       Use explicit conversion operators instead:
 *       - static_cast<std::vector<T>>(v) or vec<T>(v)
 *       - static_cast<std::span<T>>(v) or span<T>(v)
 *
 * @see IVec/Converter.Opr.hpp
 */

#include <format>
#include "Base.Class.hpp"

namespace Tools {
    /** Convert (almost) everything to string **/
    /// @brief Convert entire vector to a bracketed string representation.
    /// @return String in format "[elem0, elem1, ..., elemN]" using std::format.
    /// @note Uses std::format("{}") for each element. T must be formattable.
    ///       For custom formatting with spec forwarding, use fmt::format or std::format
    ///       directly with Format.fmt.hpp / Format.std.hpp included.
    template <typename T>
    str ivec<T>::fstr() const {
        str out = "[";

        for (idx i = 0; i < m_Size; ++i) {
            out += std::format("{}", m_Data[i]);
            if (i + 1 < m_Size) out += ", ";
        }

        out += "]";
        return out;
    }

    /** join with delimiter **/
    /// @brief Join all elements into a single string with a delimiter.
    /// @param Delim Separator string placed between elements. Default: ", ".
    /// @return Concatenated string of all elements separated by Delim.
    ///         Empty string if vector is empty.
    /// @note Uses std::format("{}") for each element. T must be formattable.
    ///       Example: ivec<int>{1,2,3}.join(" | ") → "1 | 2 | 3"
    template <typename T>
    str ivec<T>::join(strview Delim) const {
        if (isEmpty()) return "";

        str result = std::format("{}", m_Data[0]);

        for (idx i = 1; i < m_Size; ++i) {
            result += std::format("{}{}", Delim, m_Data[i]);
        }

        return result;
    }

    // /** To Vector **/
    // template <typename T>
    // vec<T> ivec<T>::toVector() const {
    //     vec<T> out;
    //     out.reserve(m_Size);
    //
    //     for(auto i = 0; i < m_Size; i++){
    //         out.push_back(m_Data[i]);
    //     }
    //
    //     return out;
    // }
    //
    // /* To Span */
    // template <typename T>
    // span<T> ivec<T>::toSpan() const {
    //     return {m_Data, m_Size};
    // }

    /** To C Array (wrapped with span) **/
    /// @brief Copy elements into a pre-allocated C-style array via span.
    /// @param Destination Span wrapping the target buffer. Elements are assigned (not constructed).
    /// @note Copies min(size(), Destination.size()) elements. Safe for partial copies.
    ///       No-op if destination is empty or source is empty.
    ///       Destination elements must already be constructed (uses operator=, not placement new).
    template <typename T>
    void ivec<T>::toCArr(span<T> Destination) const {
        if (Destination.empty() || m_Size == 0) return;

        const idx count = std::min(m_Size, Destination.size());
        for (idx i = 0; i < count; ++i) {
            Destination[i] = m_Data[i]; // assignment, not placement new (dest already constructed)
        }
    }

    // /** To Array **/
    // template <typename T>
    // template <idx S>
    // arr<T, S> ivec<T>::toArray() {
    //     static_assert(S > 0, "Array size must be positive");
    //     arr<T, S> out{};
    //     const idx n = std::min(m_Size, S);
    //     std::uninitialized_copy_n(m_Data, n, out.begin());
    //
    //     // Zero-initialize remaining elements handled by arr{} default init
    //     return out;
    // }

    /** Generic conversion **/
    /// @brief Generic conversion to any container constructible from iterator pair.
    /// @tparam Container Template template parameter accepting any standard container.
    /// @return Container<T> constructed from begin()/end() iterators.
    /// @note Replaces type-specific converters (toVector, toArray, etc.).
    ///       Example: v.to<std::vector>() -> std::vector<T>
    ///                v.to<std::list>()   -> std::list<T>
    ///                v.to<std::deque>()  -> std::deque<T>
    // template <typename T>
    // template <template<typename...> class Container>
    // [[nodiscard]] auto ivec<T>::to() const {
    //     return Container<T>(begin(), end());
    // }

    template <typename T>
    template <template<typename, typename...> class Container>
    [[nodiscard]] auto ivec<T>::to() const {
        return Container<T>(begin(), end());
    }
}

#endif

/* ---- End: IVec/Converter.hpp ---- */
