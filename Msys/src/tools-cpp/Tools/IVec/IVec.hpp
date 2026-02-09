#pragma once

#include "../Types.hpp"

#define tvec vec<T>
#define BEGIN_NAMESPACE(name) namespace name {
#define END_NAMESPACE }

template <typename T>
using cref = const T&;

BEGIN_NAMESPACE(Tools)

template <typename T>
class ivec {
    private:
    
    T* ivec_data;

    /** Helper **/
    inline idx Normalize(i64 i) {
        if (i < 0) i += ivec_size;
        return (i < 0 ? 0 : (i >= ivec_size ? ivec_size - 1 : i));
    }

    idx ivec_size;       // Actual size
    idx ivec_capacity;   // How many elements that can be fitted without reallocation
    
    public:
    
    /** Data features **/
    T* data();
    idx size();
    idx capacity();
    
    /** Init features **/
    // Default constructor
    ivec();
    // Constructors
    ivec(const initl<T> Data);
    ivec(const tvec& Data);
    ivec(const ivec& other);
    ivec(ivec&& other);
    
    // DeConstructors
    ~ivec();

    /** Basic Functions **/
    void reserve(const idx Size);
    void resize(const idx Size, const T& fill = T{});

    void append(const T& Element);      // Single element   (the most basic thing)
    void append(const T&& Element);     // Single element   (but lvalue)
    void append(const ivec<T>& iv);     // ivec->ivec       ivec<i32> a{1, 2, 3}.append(ivec<i32>{4, 5, 6}) == ivec<i32> a{1, 2, 3, {4, 5, 6}}  (obviously, duh)
    void append(const tvec& v);         // vec->ivec        ivec<i32> a{1, 2, 3}.append(vec<i32>{4, 5, 6}) == ivec<i32> a{1, 2, 3, {4, 5, 6}} (auto convert vec->ivec)
    
    void extend(const ivec<T>& v);      // Extend using elements from ivector   ivec<i32> a{1, 2, 3}.Extend(ivec<i32>{1, 2, 3}) == ivec<i32> a{1, 2, 3, 4, 5, 6}
    void extend(const tvec& v);         // Extend using elements from vector    ivec<i32> a{1, 2, 3}.Extend(vec<i32>{1, 2, 3}) == ivec<i32> a{1, 2, 3, 4, 5, 6}

    idx GetSize() const noexcept;       // Current element count

    /** Getter and setter **/
    T pop(const idx& Index);            // Get then remove selected index. ivec<i32> a{1, 2, 3, 4}.Pop(1); -> return a[1] then make ivec ivec<i32>a to {1, 3, 4} 
    T& operator[](idx Index);           // setter + getter

    const T& operator[](idx Index) const;        // getter (read-only)
    ivec<T>& operator=(const ivec& Other);       // setter (write-only)

    /** Advanced **/
    void slice(i64 x, i64 y);           // Slice x<->y
    void slice(i64 n);                  // Slice First->n or n<-Last
    ivec<T> rslice(i64 x, i64 y);       // Slice x<->y, then return
    ivec<T> rslice(i64 n);              // Slice First->n or n<-Last, then return
    
    void clear();                                // Nuke all elements, keep slots
    bool isEmpty();                              // Is this empty?

    void appendFirst(const T& Element);          // Append from first index
    void appendAt(const T& Element, idx At);     // Append at Nth index, ivec<i32> a{0, 1, 2, 3, 4}.appendAt(99, 1) -> a{0, 99, 1, 2, 3, 4, 5}
    
    bool contains(const T& Element);             // Find element, return true or false
    idx find(const T& Element);                  // Find element, return index 
    idx findFreq(const T& Element);              // Find element, return how many appeared
    pair<idx, tvec> findAll(const T& Element);   // Find element, return how many appeared and indexes
    
    void shuffle();                     // inline shuffling
    ivec<T> rshuffle();                 // return shuffling
    void sort();                        // inline sorting with std::sort
    ivec<T> rsort();                    // return sorting with std::sort
    void revsort();                     // inline reverse sorting with std::sort
    ivec<T> rrevsort();                 // return reverse sorting with std::sort
    void reverse();                     // inline reverse order 
    ivec<T> rreverse();                 // return reverse order
    
    T popFirst();                       // get first element, then remove it
    T popLast();                        // get last element, then remove it

    u64 memory();                       // total object size in bytes

    template<typename... Args>
    void emplace(Args&&... args);           // Build and append object on-fly
    
    template<typename... Args>
    void emplaceFront(Args&&... args);      // Build and append in front object on-fly
    
    template<typename... Args>
    void emplaceAt(Args&&... args, idx n);  // Build and append in Nth index object on-fly

    str fstr();          // Make to string literally (almost) anything

    /** Iterators **/
    T first();           // First index getter
    T front();           // First index getter (legacy)
    T* begin();          // First iterator
    const T* cbegin();   // First iterator
    T& revbegin();       // First iterator ref

    T last();            // Last index getter
    T back();            // Last index getter (legacy)
    T* end();            // Last iterator
    const T* cend();     // Last iterator
    T& revend();         // Last iterator ref

    /** Conversion **/
    tvec toVector();     // To std::vector
    span<T> toSpan();    // To std::span
    template <idx S>    
    arr<T, S> toArray(); // To std::arrat<T, S>
    T* toCArr();         // To C-Style array

    struct test {
        static cstr Test(){
            return "Hello, namespace!";
        }
    };
};
END_NAMESPACE

/** Datas **/
#include "IVec_c.data.hpp"

/** Inits **/
#include "IVec_c.init.hpp"

/** Basic features **/
#include "IVec_c.basic.hpp"

/** Getter && Setter **/
#include "IVec_c_getset.hpp"

/** Advanced **/
#include "IVec_c.advanced.hpp"

/** Iterators **/
#include "IVec_c.iter.hpp"

/**  Converter **/
#include "IVec_c.convert.hpp"


// namespace Test {
//     template <typename T>
//     using ivec = Tools::ivec<T>;
    
//     void Test(){
//         ivec<f32> IArr1 = {1.68, 2.72, 3.14};
//         ivec<f32> IArr2 = {1.68, 2.72, 3.14};
//         ivec<ivec<f32>> IArr3 = {IArr1, Iarr2};
//     }
// }