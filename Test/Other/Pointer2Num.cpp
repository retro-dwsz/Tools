#include <fmt/format.h>

#include "../RDTools/Types.hpp"
#include "../RDTools/Random.hpp"

void RandomAddress() {
    // 10 f64 random number from -9.99 to 9.99
    const vec n = rdt::Random::RandomNumsV<f64>(10, -9.99, 9.99, 2);

    // Simulate random memory address
    list<f64> l;
    for(const auto& i : n) {
        l.push_back(i);
    }

    // Store adresses
    vec<u64> p;
    for(const auto& i : l) {
        p.push_back(rdt::GetAddress<u64>(i));
    }
    // vec<u32p> p;
    // for(const auto& elem : l) {
    //     p.push_back(rcast<u32p>(&elem));
    // }

    for(idx i = 0; i < 10; i++) {
        fmt::println(
            "{} \t {} Bytes at 0x{:x} ({})",
            n[i], sizeof(n[i]), p[i], p[i]
        );
    }

    std::exit(0);
}

i32 main() {
    RandomAddress();
}
