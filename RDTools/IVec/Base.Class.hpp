/* ---- Begin: IVec/Base.Class.hpp ---- */

#pragma once

#ifndef TOOLS_IVEC_BASE_CLASS_HPP
#define TOOLS_IVEC_BASE_CLASS_HPP

/**
 * @file Base.Class.hpp
 * @brief Primary class declaration for Tools::ivec<T> (declarations only).
 *
 * @details This header contains the complete public interface declaration for
 *          the ivec<T> container template. All method implementations are
 *          segmented into dedicated headers and aggregated via Base.Master.hpp.
 *
 *          This file serves as the canonical reference for the full API surface.
 *          Developers should consult this file to discover available methods,
 *          then refer to the corresponding implementation header for details.
 *
 * @par Implementation Segments
 * | Segment Header           | Contents                                      |
 * |--------------------------|-----------------------------------------------|
 * | Init.Ctor.hpp            | Constructors (default, init_list, copy, move) |
 * | Init.Dtor.hpp            | Destructor                                    |
 * | Core.Data.hpp            | data(), size(), capacity(), memory()          |
 * | Core.State.hpp           | clear(), isEmpty()                            |
 * | Core.Resize.hpp          | reserve(), resize()                           |
 * | Core.Append.hpp          | append(T&), append(T&&)                       |
 * | Core.Append.Idx.hpp      | appendFirst(), appendAt()                     |
 * | Core.Emplace.hpp         | emplace()                                     |
 * | Core.Emplace.Idx.hpp     | emplaceFront(), emplaceAt()                   |
 * | Core.Extend.hpp          | extend(span)                                  |
 * | Access.Getset.hpp        | operator[], at(), operator=                   |
 * | Access.Pop.hpp           | pop(), popFirst(), popLast()                  |
 * | Access.Elements.hpp      | first(), last(), front(), back()              |
 * | Access.Iterators.hpp     | begin(), end(), cbegin(), cend()              |
 * | Access.Ref.hpp           | refbegin(), refend(), crefbegin(), crefend()  |
 * | Opr.Dunder.hpp           | operator+, operator*, operator==              |
 * | Items.Orders.hpp         | sort(), rsort(), shuffle(), reverse() + Inl   |
 * | Items.Query.hpp          | uniques(), reassign() + Inl                   |
 * | Items.Finders.hpp        | contains(), find(), findFreq(), findAll()     |
 * | Items.Slicer.hpp         | slice(), sliceInl()                           |
 * | Items.Eraser.idx.hpp     | erase(idx), eraseInl(idx)                     |
 * | Items.Eraser.ptr.hpp     | erase(T*), eraseInl(T*)                       |
 * | Functional.hpp           | map(), filter()                               |
 * | Converter.hpp            | fstr(), join(), toCArr(), to<Container>()     |
 * | Converter.Opr.hpp        | explicit operator span<T>, vec<T>             |
 * | Legacy.hpp               | push_back(), push_front(), insert()           |
 *
 * @note Formatter specializations (Format.fmt.hpp, Format.std.hpp) are NOT
 *       declared here. They are opt-in headers included directly by users.
 *
 * @see IVec/Base.Master.hpp
 */

#include <Tools/Types.hpp>
#include <Tools/Casting.hpp>

namespace rdt {
    /// @brief A modern, heap-allocated dynamic array with Python-like ergonomics.
    /// @tparam T Element type. Must be destructible. Copy/move requirements depend on operations used.
    ///
    /// @par Memory Model
    /// - Data is always heap-allocated via operator new[]
    /// - Pointer-based iterators (T*) for zero-overhead STL/ranges compatibility
    /// - Growth factor: 2x on append, exact allocation on extend/resize
    ///
    /// @par Naming Conventions
    /// - Methods without suffix return a **new modified copy** (non-mutating)
    /// - `-Inl` suffix: modifies container **in-place** (mutating)
    /// - `ref-` prefix: returns reference instead of copy
    /// - `c-` prefix: explicit const variant (e.g., cbegin, crefbegin)
    ///
    template <typename T>
    class ivec {
        private:
        T*  m_Data;       // Actual data in pointer
        idx m_Size;       // Actual size
        idx m_Capacity;   // How many elements that can be fitted without reallocation

        public:
        /** [Init] Constructors **/
        ivec() noexcept;                            // default
        ivec(initl<T> Data);                        // with {}
        explicit ivec(const vec<T>& Data);          // copy from std::vector
        explicit ivec(const span<const T>& Data);   // copy from generic iterables
        ivec(const ivec& Data);                     // copy from Data ivec
        ivec(ivec&& Data) noexcept;                 // copy from temporary ivec

        /** [Init] DeConstructors **/
        ~ivec() noexcept;

        /** [Core] Data stuffs **/
        [[nodiscard]] T* data() noexcept;               // pointer to first element
        [[nodiscard]] const T* data() const noexcept;   // const pointer to first element
        [[nodiscard]] idx size() const noexcept;        // how much element right now
        [[nodiscard]] idx capacity() const noexcept;    // available free slots
        [[nodiscard]] u64 memory() const noexcept;      // total object size in bytes

        /** [Core] Resize and reserve with/for stuffs **/
        void resize(idx Size, const T& Fill = T{});
        void reserve(idx Size);

        /** [Core] Append at end **/
        void append(const T& Element);      // Single element (the most basic thing)
        void append(T&& Element);           // Single element (but rvalue)

        /** [Core] Append at specific index **/
        void appendFirst(const T& Item);         // Append from first index, ivec<i32> a{0, 1, 2, 3, 4}.appendFirst(99) -> a{99, 0, 1, 2, 3, 4, 5}
        void appendAt(const T& Item, idx At);    // Append at Nth index, ivec<i32> a{0, 1, 2, 3, 4}.appendAt(99, 1) -> a{0, 99, 1, 2, 3, 4, 5}

        /** [Core] Emplace at end **/
        template<typename... Args>
        void emplace(Args&&... Items);               // Build and append object on-fly

        /** [Core] Emplace at specific index **/
        template<typename... Args>
        void emplaceFront(Args&&... Items);          // Build and append in front object on-fly
        template<typename... Args>
        void emplaceAt(idx At, Args&&... Items);     // Build and append in Nth index object on-fly

        /** [Core] Extend this with other iterables **/
        void extend(std::span<const T> Data);        // Unified range append via span (replaces vec<T> overload)

        /** [Core] State **/
        void clear();                                   // Nuke all elements, keep slots
        [[nodiscard]] bool isEmpty() const noexcept;    // Is this empty?

        /** [Access] Common getter **/
        [[nodiscard]] T& operator[](idx Index) noexcept;        // setter + getter
        [[nodiscard]] const T& operator[](idx Index) const noexcept;  // getter (read-only)
        [[nodiscard]] T& at(const idx& Index);                  // getter (legacy)
        [[nodiscard]] T& at(const idx& Index) const;            // getter (legacy)

        /** [Access] Common setter **/
        [[nodiscard]] ivec& operator=(const ivec& Other);       // setter (write-only)

        /** [Access] Pop front/back/specific index **/
        [[nodiscard]] T pop(const idx& Index);                  // Get then remove selected index. ivec<i32> a{1, 2, 3, 4}.Pop(1); -> return a[1] then make ivec ivec<i32>a to {1, 3, 4}
        [[nodiscard]] T popFirst();                             // get first element, then remove it
        [[nodiscard]] T popLast();                              // get last element, then remove it

        /** [Access] Specific Element Accessors **/
        [[nodiscard]] T first() const noexcept;             // First element (copy)
        [[nodiscard]] T last() const noexcept;              // Last element (copy)
        [[nodiscard]] T first(idx n) const noexcept;        // Nth from start (copy)
        [[nodiscard]] T last(idx n) const noexcept;         // Nth from end (copy)
        [[nodiscard]] T front() const noexcept;             // Legacy alias for first()
        [[nodiscard]] T back() const noexcept;              // Legacy alias for last()

        /** [Access] Standard Iterators (Pointer-based) **/
        [[nodiscard]] T* begin() noexcept;                  // Mutable begin
        [[nodiscard]] const T* begin() const noexcept;      // Const begin (enables range-for on const ivec)
        [[nodiscard]] const T* cbegin() const noexcept;     // Explicit const begin
        [[nodiscard]] T* end() noexcept;                    // Mutable end
        [[nodiscard]] const T* end() const noexcept;        // Const end
        [[nodiscard]] const T* cend() const noexcept;       // Explicit const end

        /** [Access] Reference Accessors with bounds check **/
        [[nodiscard]] T& refbegin();                        // Mutable ref to first (throws if empty)
        [[nodiscard]] const T& refbegin() const;            // Const ref to first (throws if empty)
        [[nodiscard]] const T& crefbegin() const;           // Explicit const ref to first
        [[nodiscard]] T& refend();                          // Mutable ref to last (throws if empty)
        [[nodiscard]] const T& refend() const;              // Const ref to last (throws if empty)
        [[nodiscard]] const T& crefend() const;             // Explicit const ref to last

        /** [Opr] Dunders **/
        [[nodiscard]] /* __add__ */ ivec operator+(const ivec& Other);
        [[nodiscard]] /* __mul__ */ ivec operator*(idx Count);
        [[nodiscard]] /* __eq__  */ bool operator==(const ivec& Other) const;

        /** [Items] Orders **/
        [[nodiscard]] ivec shuffle();       // return shuffling
        [[nodiscard]] ivec Sort();          // return sorting with std::sort
        [[nodiscard]] ivec rSort();         // return reverse sorting with std::sort
        [[nodiscard]] ivec Reverse();       // return reverse order
        void ShuffleInl();                  // inline shuffling
        void SortInl();                     // inline sorting with std::sort
        void rSortInl();                    // inline reverse sorting with std::sort
        void ReverseInl();                  // inline reverse order

        /** [Items] Query **/
        [[nodiscard]] ivec Uniques(idx Max = 1);                    // return remove duplicated values
        [[nodiscard]] ivec Reassign(span<const T> Data, idx Start); // return reassign valued
        void UniquesInl(idx Max = 1);                               // inline remove duplicated values
        void ReassignInl(span<const T> Data, idx Start);            // inline reassign valued

        /** [Items] Find utils **/
        [[nodiscard]] bool Contains(const T& Item) noexcept;            // Find element, return true or false
        [[nodiscard]] idx Find(const T& Item) noexcept;                 // Find element, return index
        [[nodiscard]] idx FindFreq(const T& Item) noexcept;             // Find element, return how many appeared
        [[nodiscard]] pair<idx, vec<T>> FindAll(const T& Item) noexcept;// Find element, return how many appeared and indexes

        // /** [Items] Const Find utils **/
        // [[nodiscard]] bool Contains(const T& Item) const noexcept;              // Find element, return true or false
        // [[nodiscard]] idx Find(const T& Item) const noexcept;                   // Find element, return index
        // [[nodiscard]] idx FindFreq(const T& Item) const noexcept;               // Find element, return how many appeared
        // [[nodiscard]] pair<idx, vec<T>> FindAll(const T& Item) const noexcept;  // Find element, return how many appeared and indexes

        /** [Items] Slicers **/
        [[nodiscard]]   ivec Slice(i64 From, i64 To);       // Slice From<->To, then return
        [[nodiscard]]   ivec Slice(i64 To);                 // Slice First->n or n<-Last, then return
                        void SliceInl(i64 From, i64 To);    // Slice x<->y
                        void SliceInl(i64 To);              // Slice First->n or n<-Last

        /** [Items] Eraser return new by index **/
        [[nodiscard]]   ivec Erase(idx Pos);                // return erased specific
        [[nodiscard]]   ivec Erase(idx From, idx To);       // return erased range
        /** [Items] Eraser do inline by pointer **/
                        void EraseInl(idx Pos);             // inline erased specific
                        void EraseInl(idx From, idx To);    // inline erased range

        /** [Items] Eraser return new by pointer **/
        [[nodiscard]]   ivec erase(T* pos);                 // return erased specific
        [[nodiscard]]   ivec erase(T* begin, T* end);       // return erased range
        /** [Items] Eraser fo inline by pointer **/
                        void eraseInl(T* pos);              // inline erased specific
                        void eraseInl(T* begin, T* end);    // inline erased range

        /** [Functional] Generate items by lambda **/
        template <typename Fn>
        requires requires(Fn&& f, const T& x) { f(x); }
        [[nodiscard]] auto Map(Fn&& Func) const -> ivec<decltype(Func(std::declval<const T&>()))>;

        template <typename Fn>
        requires std::predicate<Fn, const T&>
        [[nodiscard]] ivec Filter(Fn&& Pred) const;

        /** [Converter] Convert to common objects **/
        [[nodiscard]] str fstr() const;                     // Make to string literally (almost) anything
        [[nodiscard]] str join(strview Delim = ", ") const; // Format everything into string seperated by something
        void toCArr(span<T> Destination) const;             // Convert to conventional pointer array
        // template <template<typename...> class Container>
        template <template<typename, typename...> class Container>
        [[nodiscard]] auto to() const;                      // To generic iterables

        /* [Converter.Opr] Auto converter to std::span & std::vector by operator */
        explicit operator span<T>() const noexcept;
        explicit operator span<const T>() const noexcept;
        explicit operator vec<T>() const noexcept ;
        explicit operator vec<const T>() const noexcept;

        /* Legacy functions */
        void push_back(const T& Item);              // "Append" Add Single element (legacy)
        void push_front(const T& Item);             // "Append" from first index (Legacy-ish)
        void insert(ivec &&v);                      // "Extend" from ivec
        void insert(span<const T>& v);              // "Extend" using elemnent from generic container (legacy)
        void insert(const T& Item, idx At);         // "Append" at Nth index (legacy)
        void insert(const T* From, const T* To);    // "Extend" using elemnent from any iterable (legacy iterator)
    };
}

#endif

/* ---- End: IVec/Base.Class.hpp ---- */
