#include <fmt/format.h>
#include <fmt/ranges.h>

#include <RDTools/Types.hpp>
#include <RDTools/Random.hpp>
#include <RDTools/IVec.hpp>

using namespace rdt;

i32 main() {
    // Dummy data
    const auto v1 = Random::RandomNumsVD(10, -9.99, 9.99, 4);
    const auto v2 = Random::RandomNumsVD(10, -5.99, 5.99, 4);
    fmt::println("{}",
        fmt::format("{}", "{}", "{}", "{}", "{}",
            "Dummy data:\n"
            "v1 -> RandomNumsVD(N=10, LB=-9.99, UB=9.99, 4) = \n", v1,
            "v2 -> RandomNumsVD(N=10, LB=-5.99, UB=5.99, 4) = \n", v2
        )
    );

    // Init.Ctor from std::vector
    ivec iv1(v1);
    fmt::println("iv1 = {}", iv1);

    /** Core.Data **/
    const auto iv1_data = iv1.data();           // 1st item pointer
    fmt::println("iv1.data()        = {}", fmt::ptr(iv1_data));

    const auto iv1_size = iv1.size();           // How many items we have?
    fmt::println("iv1.size()        = {}", iv1_size);

    const auto iv1_capacity = iv1.capacity();   // How much rooms left?
    fmt::println("iv1.capacity()    = {}", iv1_capacity);

    const auto iv1_memory = iv1.memory();       // How big are those stuffs?
    fmt::println("iv1.memory()      = {}", iv1_memory);

    /** Core.State **/
    ivec iv2(v2);
    iv2.clear();                                // Nuke EVERYTHING
    const auto iv2_isEmpty = iv2.isEmpty();     // Is it empty?

    /** Core.Resize **/
    iv2.reserve(10);                    // Make room for incoming stuffs
    iv1.resize(3, 3.14159);             // Make another room for specific stuffs

    /** Core.Append **/
    iv1.append(Random::Choice(v1));     // Add an item at back

    /** Core.Append.Idx **/
    const auto N = Random::RandomNum<idx>(0, iv1.size());
    iv1.appendAt(N, Random::Choice(v1));    // Add an item at specific index
    iv1.appendFirst(Random::Choice(v1));    // Add ad item at front

    /** Core.Emplace **/
    ivec<str> v3 = {"Hello"};
    v3.emplace(str("world"));         // Create an object on-fly at back

    /** Core.Emplace.Idx **/
    v3.emplaceAt(N, str("from"));     // Create an object on-fly at specific index
    v3.emplaceFront(str("ivec"));     // Create an object on-fly at front

    /** Core.Extend **/
    iv1.extend(v1);                   // Extend with another iterable

    /** Access.Getset **/
    const auto iv1_0 = iv1[0];        // Access an item
    iv1[0] = iv1[1];                  // Set an item

    /** Access.Pop **/
    const auto p1 = iv2.pop(N);       // Get and remove specific item
    const auto p2 = iv2.popFirst();   // Get and remove 1st item
    const auto p3 = iv2.popLast();    // Get and remove last item

    /** Access.Elements **/
    const auto e1 = iv2.first();      // 1st item getter
    const auto e2 = iv2.last();       // last item getter
    const auto e3 = iv2.first(N+1);   // 1st+N offset item getter
    const auto e4 = iv2.last(N+1);    // last-N offset item getter
    const auto e5 = iv2.front();      // legacy choise of diciton for first
    const auto e6 = iv2.back();       // legacy choise of diciton for last

    /** Access.Iterators **/
    f64* t01 = iv2.begin();           // 1st item pointer
    const f64* t02 = iv2.begin();     // 1st item constant implicit pointer
    const f64* t03 = iv2.cbegin();    // 1st item constant explicit pointer

    f64* t04 = iv2.end();             // Last item pointer
    const f64* t05 = iv2.end();       // Last item constant implicit pointer
    const f64* t06 = iv2.cend();      // Last item constant explicit pointer

    /** Access.Ref **/
    f64& t07 = iv2.refbegin();        // 1st item reverse pointer
    const f64& t08 = iv2.refbegin();  // 1st item constant implicit reverse pointer
    const f64& t09 = iv2.crefbegin(); // 1st item constant explicit reverse pointer

    f64& t10 = iv2.refend();          // Last item reverse pointer
    const f64& t11 = iv2.refend();    // Last item constant implicit reverse pointer
    const f64& t12 = iv2.crefend();   // Last item constant explicit reverse pointer

    /** Opr.Dunder **/
    ivec iv4(v1);
    ivec iv5 = iv4 + iv2;             // "Extend" with another ivec
    ivec iv6 = iv4*2;                 // "Duplicate" with specified count
    bool iv7 = iv5 == iv4;            // "Compare" both ivec

    /** Items.Orders **/
    ivec o0 = iv5.Shuffle();          // Shuffle return new
    ivec o1 = iv5.Sort();             // Sort items return new
    ivec o2 = iv5.rSort();            // reverse sort return new
    ivec o3 = iv5.Reverse();          // reverse current order return new

    o0.ShuffleInl();                  // Shuffle do inline
    o1.SortInl();                     // Sort items do inline
    o2.rSortInl();                    // reverse sort do inline
    o3.ReverseInl();                  // reverse current order do inline

    /** Items.Query **/
    ivec q0a(v1);
    ivec q1 = q0a.Uniques();           // Remove duplicated value return new
    ivec q2 = q0a.Reassign(v2, 0);     // Reassign S..N with something else return new
    ivec q0b(v2);
    q0b.UniquesInl();                  // Remove duplicated vaue do inline
    q0b.ReassignInl(v2, 1);            // Reassign S..N with something else do inline

    /** Items.Finders **/
    ivec f0(v1);
    const auto f1 = f0.Contains(3.14);      // Is there 3.14?
    const auto f2 = f0.Find(Choice(f0));    // Find N located where?
    const auto f3 = f0.FindFreq(Choice(f0));// How many times N appeared?

    /** Items.Slicer **/
    ivec s0(v1);
    const auto s1 = s0.Slice(2, 4);     // Extract s0[2..4]

    /** Items.Eraser.idx **/
    ivec er0(v1);
    const auto er1 = er0.Erase(2);      // Remove er0[2]
    const auto er2 = er0.Erase(2, 4);   // Remove er0[2..4]

    /** Items.Eraser.ptr **/
    const auto er3 = er0.erase(er0.begin() + 2);      // Remove er0[2] by pointer
    const auto er4 = er0.erase(er0.begin() + 2, er0.begin() + 4);   // Remove er0[2..4] by pointer

    /** Functional **/
    auto fn0 = ivec<f64>{};
    for(idx i = 0; i < v1.size(); i++) {
        fn0[i] = v1[i];
    }
    auto fn_m = [](const auto& x){ return x * 2.0; };
    auto fn_f = [](const auto& x){ return x > 2.0; };

    const auto fn1 = fn0.Map(fn_m);
    const auto fn2 = fn0.Filter(fn_f);

    /** Converter **/
    const auto cv0 = fn0.to<vec>();
    // f64 cv1[v1.size()];
    // fn0.toCArr(cv1);
}