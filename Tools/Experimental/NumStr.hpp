/* Arbitary number with std::string coming soon */

#pragma once

#ifndef TOOLS_EXPERIMENTAL_NUMSTR_HPP
#define TOOLS_EXPERIMENTAL_NUMSTR_HPP

#include "../Types.hpp"

namespace ToolsExperimental {
    class NumStr{
        str Data;
        bool HasComma;

        // Constructor
        NumStr();
        template <Tools::Types::Integer Int>
        NumStr(const Int& NativeNumber);      // From actual number (Integer)
        template <Tools::Types::Float Flt>
        NumStr(const Flt& NativeNumber);      // From actual number (Float)
        NumStr(const str& StrNumber);       // From a string
        NumStr(const strview StrNumber);    // From a string (pointer)

        // Destroyer
        ~NumStr();

        // Basic operations
        NumStr operator+(const NumStr& Other);
        NumStr operator-(const NumStr& Other);
        NumStr operator*(const NumStr& Other);
        NumStr operator/(const NumStr& Other);

        // Function'ed basic operations, maybe???
        // Return new
        // NumStr Add(const NumStr& Other);
        // NumStr Sub(const NumStr& Other);
        // NumStr Mul(const NumStr& Other);
        // NumStr Div(const NumStr& Other);
        // Modify inplace
        // void Add(const NumStr* Other);
        // void Sub(const NumStr* Other);
        // void Mul(const NumStr* Other);
        // void Div(const NumStr* Other);

        // GetSet
        NumStr operator=(NumStr&);
        NumStr operator==(NumStr&);
        NumStr operator[](NumStr&);

        // Mem check and auto construct
        bool operator()();     // is it empty?
        operator span<str>() noexcept;  // span auto struct
        operator strview() noexcept;    // strview auto construct

        // Conversion
        str ToStr();    // return str data
        template <Tools::Types::Integer T>
        T ToInteger();  // return possible number data
    };
}

// CTor & DTor
namespace ToolsExperimental {
    // default
    NumStr::NumStr(){
        this->Data = {};
        this->HasComma = {};
    }

    // From actual number (Integer)
    template <Tools::Types::Integer P>
    NumStr::NumStr(const P& NativeNumber){
        this->Data = std::to_string(NativeNumber);
        this->HasComma = false;
    }

    // From actual number (Float)
    template <Tools::Types::Float P>
    NumStr::NumStr(const P& NativeNumber){
        this->Data = std::to_string(NativeNumber);
        this->HasComma = true;
    }

    // From a string
    NumStr::NumStr(const str& StrNumber){
        this->Data = StrNumber;
    }

    // From a string (pointer)
    NumStr::NumStr(const strview StrNumber){
        this->Data = StrNumber;
    }

    // Destroyer
    NumStr::~NumStr(){
        /* */
    }
}

// Basic operations
namespace ToolsExperimental {

    NumStr NumStr::operator+(const NumStr& Other) {
        /* ... */ return {};
    };

    NumStr NumStr::operator-(const NumStr& Other) {
        /* ... */ return {};
    };

    NumStr NumStr::operator*(const NumStr& Other) {
        /* ... */ return {};
    };

    NumStr NumStr::operator/(const NumStr& Other) {
        /* ... */ return {};
    };
}

// Mem check and auto construct
namespace ToolsExperimental {
    bool NumStr::operator()(){
        return NumStr::Data.empty();
    };
}

// Conversion
namespace ToolsExperimental {}

#endif