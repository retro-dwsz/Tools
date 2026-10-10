// #pragma once
//
// #ifndef TOOLS_IVEC_ACCESS_RANDOM_HPP
// #define TOOLS_IVEC_ACCESS_RANDOM_HPP
//
// #include "../Random.hpp"
//
// namespace rdt {
//     template<typename T>
//     T ivec<T>::random() {
//         const idx N = Random::RandomNum<idx>(0, this->size());
//         T Out = this[N];
//         return Out;
//     }
//
//     template<typename T>
//     T ivec<T>::randomMax(const idx& MaxIndex) {
//         const idx N = Random::RandomNum<idx>(MaxIndex, this->size());
//         T Out = this[N];
//         return Out;
//     }
//
//     template<typename T>
//     T ivec<T>::randomMin(const idx& MinIndex) {
//         const idx N = Random::RandomNum<idx>(0, MinIndex);
//         T Out = this[N];
//         return Out;
//     }
//
//     template<typename T>
//     T ivec<T>::random(const idx& From, const idx& To) {
//         const idx N = Random::RandomNum<idx>(From, To);
//         T Out = this[N];
//         return Out;
//     }
// }
//
// #endif //TOOLS_IVEC_ACCESS_RANDOM_HPP
