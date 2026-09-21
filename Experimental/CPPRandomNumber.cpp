#include <fmt/format.h>
#include <fmt/ranges.h>

#include <RDTools/Types.hpp>
#include <RDTools/Random.hpp>

i32 main() {
    // Parameters
    i32 i32Min = rdt::Random::RandomNumI(-10, 0);
    i32 i32Max = rdt::Random::RandomNumI(1, 10);
    idx i32SizeArr = rdt::Random::RandomNum<idx>(5, 10);

    f32 f32Min = rdt::Random::RandomNumF(-10.0f, 0.0f);
    f32 f32Max = rdt::Random::RandomNumF(1.0f, 10.0f);
    idx f32SizeArr = rdt::Random::RandomNum<idx>(5, 10);
    i32 f32Round = 2; // rdt::Random::RandomNumI(2, 5);

    // Processing
    i32 rdi32 = rdt::Random::RandomNumI(i32Min, i32Max);
    fmt::println("Single Random i32");
    fmt::println(
        "~ random<i32>(min={}, max={})\n~ Out = {}\n",
        i32Min, i32Max, rdi32
    );

    vec<i32> rdi32s = rdt::Random::RandomNumsVI(i32SizeArr, i32Min, i32Max);
    fmt::println("Vector Random i32");
    fmt::println(
        "~ random<i32>(count={}, min={}, max={})\n~ Out = {}\n",
        i32SizeArr, i32Min, i32Max, rdi32s
    );

    f32 rdf32 = rdt::Random::RandomNumF(f32Min, f32Max, f32Round);
    fmt::println("Single Random f32");
    fmt::println(
        "~ random<f32>(min={}, max={}, rounding={})\n~ Out = {}\n",
        f32Min, f32Max, f32Round, rdf32
    );

    vec<f32> rdf32s = rdt::Random::RandomNumsVF(f32SizeArr, f32Min, f32Max, f32Round);
    fmt::println("Vector Random f32");
    fmt::println(
        "~ random<f32>(count={}, min={}, max={}, rounding={})\n~ Out = {}",
        f32SizeArr, f32Min, f32Max, f32Round, rdf32s
    );
}
