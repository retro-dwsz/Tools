#include "../IVec.hpp"

#include <fmt/format.h>
#include <fmt/ranges.h>


int main(){
    vec<f64> a1{1.68, 2.71, 3.14};
    fmt::println("vec<f64> = {}", a1);                  // OK
    
    Tools::ivec<f64> a2{1.68, 2.71, 3.14};
    fmt::println("ivec<f64> = {}", a2);                 // In template: implicit instantiation of undefined template 'fmt::detail::type_is_unformattable_for<Tools::ivec<double>, char>'
    fmt::println("ivec<f64> = {}", a2.toVector());      // OK
}