#pragma once

#ifndef TOOLS_TYPES_MEMORY_HPP
#define TOOLS_TYPES_MEMORY_HPP

/* ---- Smart pointers ---- */
#include <memory>

template <typename T> using uptr = std::unique_ptr<T>;
template <typename T> using sptr = std::shared_ptr<T>;
template <typename T> using wptr = std::weak_ptr<T>;

#endif