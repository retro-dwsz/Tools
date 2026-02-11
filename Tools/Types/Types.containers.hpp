#pragma once

/* ---- Value Containers (Types.containers.hpp) ---- */

/* Iterable */
#include <ranges>
template <typename T>
concept Iterable = std::ranges::range<T>;

/* Commonly used */
#include <vector>
template<typename T>
using vec = std::vector<T>;

#include <array>
template<typename T, std::size_t S>
using arr = std::array<T, S>;

#include <map>
template<typename K, typename V>
using map = std::map<K, V>;

#include <unordered_map>
template<typename K, typename V>
using umap = std::unordered_map<K, V>;

#include <set>
template<typename T>
using set = std::set<T>;

#include <unordered_set>
template<typename T>
using uset = std::unordered_set<T>;

// #include <pair>
template<typename K, typename V>
using pair = std::pair<K, V>;

#include <initializer_list>
template <typename T>
using initl = std::initializer_list<T>;

/* Helper */
#include <span>
template<typename T>
using span = std::span<T>;

/* Less commonly used */
#include <tuple>
template<typename T>
using tuple = std::tuple<T>;

#include <list>
template<typename T>
using list = std::list<T>;

/* ---- Type Containers ---- */
#include <optional>
template<typename T>
using topt = std::optional<T>;

#include <variant>
template<typename... T>
using tvar = std::variant<T...>;

#include <expected>
template<typename A, typename B>
using texp = std::expected<A, B>;

