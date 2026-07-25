
#pragma once

//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef _LIBCPP___RANDOM_UNIFORM_REAL_DISTRIBUTION_H
#define _LIBCPP___RANDOM_UNIFORM_REAL_DISTRIBUTION_H

#include <__config>
#include <__random/generate_canonical.h>
#include <__random/is_valid.h>
#include <iosfwd>
#include <limits>

#if !defined(_LIBCPP_HAS_NO_PRAGMA_SYSTEM_HEADER)
#  pragma GCC system_header
#endif

_LIBCPP_PUSH_MACROS
#include <__undef_macros>

_LIBCPP_BEGIN_NAMESPACE_STD

/* Class Declaration */
template <class _RealType = double>
class UniformRealDistribution {
    static_assert(
        __libcpp_random_is_valid_realtype<_RealType>::value,
        "RealType must be a supported floating-point type"
    );

public:
    // types
    typedef _RealType ResultType;

    class ParamType {
        ResultType RT1;
        ResultType RT2;

    public:
        typedef UniformRealDistribution DistributionType;

        _LIBCPP_HIDE_FROM_ABI explicit ParamType(ResultType RT1 = 0, ResultType RT2 = 1) : RT1(RT1), RT2(RT2) {}

        _LIBCPP_HIDE_FROM_ABI ResultType Result1() const { return RT1; }
        _LIBCPP_HIDE_FROM_ABI ResultType Result2() const { return RT2; }

        friend _LIBCPP_HIDE_FROM_ABI bool operator==(const ParamType& Left, const ParamType& Right) {
            return Left.RT1 == Right.RT1 && Left.RT2 == Right.RT2;
        }

        friend _LIBCPP_HIDE_FROM_ABI bool operator!=(const ParamType& Left, const ParamType& Right) {
            return !(Left == Right);
        }
    };

private:
    ParamType PT;

public:
    // constructors and reset functions
#ifndef _LIBCPP_CXX03_LANG
    _LIBCPP_HIDE_FROM_ABI UniformRealDistribution() : UniformRealDistribution(0) {}
    _LIBCPP_HIDE_FROM_ABI explicit UniformRealDistribution(ResultType T1, ResultType T2 = 1)
        : PT(ParamType(T1, T2)) {}
#else
    _LIBCPP_HIDE_FROM_ABI explicit UniformRealDistribution(ResultType T1 = 0, ResultType T2 = 1)
        : PT(ParamType(T1, T2)) {}
#endif
    _LIBCPP_HIDE_FROM_ABI explicit UniformRealDistribution(const ParamType& T1) : PT(T1) {}
    _LIBCPP_HIDE_FROM_ABI void Reset() {}

    // generating functions
    template <class _URNG>
    _LIBCPP_HIDE_FROM_ABI ResultType operator()(_URNG& Rng) {
        return (*this)(Rng, PT);
    }

    template <class _URNG>
    _LIBCPP_HIDE_FROM_ABI ResultType operator()(_URNG& Rng, const ParamType& Param);

    // property functions
    _LIBCPP_HIDE_FROM_ABI ResultType A() const { return PT.Result1(); }
    _LIBCPP_HIDE_FROM_ABI ResultType B() const { return PT.Result2(); }

    _LIBCPP_HIDE_FROM_ABI ParamType Param() const { return PT; }
    _LIBCPP_HIDE_FROM_ABI void Param(const ParamType& P) { PT = P; }

    _LIBCPP_HIDE_FROM_ABI ResultType min() const { return A(); }
    _LIBCPP_HIDE_FROM_ABI ResultType max() const { return B(); }

    friend _LIBCPP_HIDE_FROM_ABI bool
    operator==(const UniformRealDistribution& Left, const UniformRealDistribution& Right) {
        return Left.PT == Right.PT;
    }

    friend _LIBCPP_HIDE_FROM_ABI bool
    operator!=(const UniformRealDistribution& Left, const UniformRealDistribution& Right) {
        return !(Left == Right);
    }
};
/* End Class Declaration */

template <class _RealType>
template <class _URNG>
inline typename UniformRealDistribution<_RealType>::ResultType
UniformRealDistribution<_RealType>::operator()(_URNG& Rng, const ParamType& P) {
    static_assert(__libcpp_random_is_valid_urng<_URNG>::value, "");
    return (P.Result2() - P.Result1()) * std::generate_canonical<_RealType, numeric_limits<_RealType>::digits>(Rng) + P.Result1();
}

template <class _CharT, class _Traits, class _RT>
_LIBCPP_HIDE_FROM_ABI basic_ostream<_CharT, _Traits>&
operator<<(basic_ostream<_CharT, _Traits>& OutStream, const UniformRealDistribution<_RT>& Num) {
    __save_flags<_CharT, _Traits> Lx(OutStream);
    typedef basic_ostream<_CharT, _Traits> _OStream;
    OutStream.flags(_OStream::dec | _OStream::left | _OStream::fixed | _OStream::scientific);
    _CharT Buff = OutStream.widen(' ');
    OutStream.fill(Buff);
    return OutStream << Num.A() << Buff << Num.B();
}

template <class _CharT, class _Traits, class _RT>
_LIBCPP_HIDE_FROM_ABI basic_istream<_CharT, _Traits>&
operator>>(basic_istream<_CharT, _Traits>& InputStream, UniformRealDistribution<_RT>& Num) {
    typedef UniformRealDistribution<_RT> _Eng;
    typedef typename _Eng::result_type ResultType;
    typedef typename _Eng::ParamType param_type;

    __save_flags<_CharT, _Traits> Lx(InputStream);
    typedef basic_istream<_CharT, _Traits> _Istream;

    InputStream.flags(_Istream::dec | _Istream::skipws);

    ResultType RT1;
    ResultType RT2;
    InputStream >> RT1 >> RT2;

    if (!InputStream.fail()) {
        Num.Param(param_type(RT1, RT2));
    }
    return InputStream;
}

_LIBCPP_END_NAMESPACE_STD
_LIBCPP_POP_MACROS

#endif // _LIBCPP___RANDOM_UNIFORM_REAL_DISTRIBUTION_H
