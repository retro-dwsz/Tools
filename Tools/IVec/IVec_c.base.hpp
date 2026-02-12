#pragma once

#include "../Types.hpp"

// #define vec<T> vec<T>
#define BEGIN_NAMESPACE(name) namespace name {
#define END_NAMESPACE }

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
    ivec(const vec<T>& Data);
    ivec(const ivec& other);
    ivec(ivec&& other);
    
    // DeConstructors
    ~ivec();

    /** Basic Functions **/
    void reserve(const idx Size);
    void resize(const idx Size, const T& fill = T{});

    void append(const T& Element);      // Single element (the most basic thing)
    void append(const T&& Element);     // Single element (but lvalue)
    void append(const ivec<T>& iv);     // ivec->ivec     ivec<i32> a{1, 2, 3}.append(ivec<i32>{4, 5, 6}) == ivec<i32> a{1, 2, 3, {4, 5, 6}}  (obviously, duh)
    void append(const vec<T>& v);       // vec->ivec      ivec<i32> a{1, 2, 3}.append(vec<i32>{4, 5, 6}) == ivec<i32> a{1, 2, 3, {4, 5, 6}} (auto convert vec->ivec)
    
    void extend(const ivec<T>& v);      // Extend using elements from ivector   ivec<i32> a{1, 2, 3}.Extend(ivec<i32>{1, 2, 3}) == ivec<i32> a{1, 2, 3, 4, 5, 6}
    void extend(const vec<T>& v);       // Extend using elements from vector    ivec<i32> a{1, 2, 3}.Extend(vec<i32>{1, 2, 3}) == ivec<i32> a{1, 2, 3, 4, 5, 6}

    idx GetSize() const noexcept;       // Current element count

    /** Getter and setter **/
    T pop(const idx& Index);            // Get then remove selected index. ivec<i32> a{1, 2, 3, 4}.Pop(1); -> return a[1] then make ivec ivec<i32>a to {1, 3, 4} 
    T& operator[](idx Index);           // setter + getter

    const T& operator[](idx Index) const;        // getter (read-only)
    ivec<T>& operator=(const ivec& Other);       // setter (write-only)

    /** Advanced **/
    void sliceInl(i64 x, i64 y);       // Slice x<->y
    void sliceIln(i64 n);              // Slice First->n or n<-Last
    ivec<T> slice(i64 x, i64 y);       // Slice x<->y, then return
    ivec<T> slice(i64 n);              // Slice First->n or n<-Last, then return
    
    void clear();                                // Nuke all elements, keep slots
    bool isEmpty();                              // Is this empty?

    void appendFirst(const T& Element);          // Append from first index
    void appendAt(const T& Element, idx At);     // Append at Nth index, ivec<i32> a{0, 1, 2, 3, 4}.appendAt(99, 1) -> a{0, 99, 1, 2, 3, 4, 5}    
    bool contains(const T& Element);             // Find element, return true or false
    idx find(const T& Element);                  // Find element, return index 
    idx findFreq(const T& Element);              // Find element, return how many appeared
    pair<idx, vec<T>> findAll(const T& Element);   // Find element, return how many appeared and indexes
    
    ivec<T> shuffle();                 // return shuffling
    void shuffleInl();                 // inline shuffling
    ivec<T> sort();                    // return sorting with std::sort
    void sortInl();                    // inline sorting with std::sort
    ivec<T> rsort();                   // return reverse sorting with std::sort
    void rsortInl();                   // inline reverse sorting with std::sort
    ivec<T> reverse();                 // return reverse order
    void reverseInl();                 // inline reverse order 
    
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
    T& refbegin();       // First iterator ref

    T last();            // Last index getter
    T back();            // Last index getter (legacy)
    T* end();            // Last iterator
    const T* cend();     // Last iterator
    T& refend();         // Last iterator ref

    /** Conversion **/
    vec<T> toVector();     // To std::vector
    span<T> toSpan();      // To std::span
    template <idx S>    
    arr<T, S> toArray(); // To std::arrat<T, S>
    T* toCArr();         // To C-Style array

    // struct test {
    //     static cstr Test(){
    //         return "Hello, namespace!";
    //     }
    // };

    /* Legacy functions */
    void push_back(const T& Element);       // Add Single element (legacy)
    void push_front(const T& Element);      // Append from first index (Legacy-ish)

    void insert(const ivec<T>& v);          // Extend using elemnent from ivector (legacy)
    void insert(const vec<T>& v);           // Extend using elemnent from vector (legacy)
    void insert(const T& Element, idx At);  // Append at Nth index (legacy)
    void insert(const T* A, const T* B);    // Extend using elemnent from any iterable (legacy iterator)

};
END_NAMESPACE