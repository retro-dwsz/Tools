#pragma once

#ifndef TOOLS_RANDOM_RSTRING_HPP
#define TOOLS_RANDOM_RSTRING_HPP

#include "_Common.hpp"

using namespace Tools::Cast;

namespace Tools::Random {
    char RandomCharPicker(const str& Text){
        return Text[
            scast<idx>(DistInt<i64>(0, Text.size()-1)(Gen64))
        ];
    };

    str RandomCharPicker(const vec<str>& CharSet){
        return CharSet[
            scast<idx>(DistInt<i64>(0, CharSet.size()-1)(Gen64))
        ];
    };

    template <typename T>
    str RandomStrGenerator(const OneOf<vec<str>, str, vec<T>> auto& CharSet, const idx Count){
        str Result{};
        Result.reserve(Count);

        // sthread RdDevice RdDev;
        // sthread Twister64 Gen64(RdDev());
        DistInt<i64> NResult(0, CharSet.size());

        idx Index{};
        for(idx i = 0; i < Count; i++){
            Index = scast<idx>(NResult(Gen64));
            Result.append(
                std::format("{}", CharSet[Index])
            );
        }
        return Result;
    };
}

#endif