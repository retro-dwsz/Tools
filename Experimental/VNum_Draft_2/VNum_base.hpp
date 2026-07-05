/*
 * Arbitary number with std::vector coming soon
 * File "Tools/Experimental/VNum_Draft_2/VNum.hpp"
 */

#pragma once

#ifndef TOOLS_EXPERIMENTAL_VNUM_BASE_HPP
#define TOOLS_EXPERIMENTAL_VNUM_BASE_HPP

#include "../../Tools/Types.hpp"
#include "../../Tools/Casting.hpp"

namespace ToolsExperimental {

using Tools::Types::Number,
    Tools::Types::Integer,
    Tools::Types::Float,
    Tools::Types::NtvFloat,
    Tools::Cast::scast;

class VNum {
    private:
    vec<u8> m_DataInt        = {};
    vec<u8> m_DataDec        = {};
    idx     m_SeparatorScale = 3;
    char    m_SeparatorChar  = '\'';
    bool    m_IsNegative     = false;
    idx     m_CommaAfter     = 0;
    char    m_CommaChar      = '.';
    idx     m_DecimalLimit   = 100;

    public:

    VNum& SetSeperatorScale(const char Scale) const;                // SetSeperatorScale('\'')  2147483647     -> 2'147'483'647
    VNum& SetSeperatorDecimal(const char Decimal) const;            // SetSeperatorDecimal('_') 21474836473.14 -> 21474836473_14
    VNum& SetSeperator(const char Scale, const char Decimal) const; // SetSeperator('\'', '_')  21474836473.14 -> 21'474'836'473_14

    /* Get Private Props */
    pair<vec<u8>, vec<u8>> GetData() const {
        return {
            this->m_DataInt,
            this->m_DataDec
        };
    }

    idx  GetSeparatorScale() const {
        return this->m_SeparatorScale;
    }

    char GetSeparatorChar() const {
        return this->m_SeparatorChar;
    }

    bool GetIsNegative() const {
        return this->m_IsNegative;
    }

    idx  GetCommaAfter() const {
        return this->m_CommaAfter;
    }

    char GetCommaChar() const {
        return this->m_CommaChar;
    }

    idx GetDecimalLimit() const {
        return this->m_DecimalLimit;
    }

    // CTors
    // Default
    VNum() = default;

    // CTor from native number
    template <Integer I>
    VNum(const I& NtvNumber);                // From actual number (Integer/Float)

    template <Float F>
    VNum(const F& NtvNumber);                // From actual number (Float)

    // CTor from string
    /* @brief   Parse from string
     * @param   str&/strview    String containing numbers to be parsed
     * @param   Dec             Decimal after specified degit(s)
     *
     * Example for integer number:
     *
     * str  Sv1 = "1920";
     * VNum Ni1(Sv1);                   // 1920
     *
     * str  Sv2 = "1080";
     * VNum Ni2(Sv2);                   // 1080
     *
     * Example for floating number
     *
     * str  Sv3 = "1920";
     * VNum Ni3(Sv3, 2);                // 19.2
     *
     * str  Sv4 = "1080";
     * VNum Ni4(Sv4, 1);                // 1.08
     *
     * str  Sv5 = "3.14159";
     * VNum Ni5(Sv5);                   // 3.14159 -> automatically specified
     * VNum Ni6(Sv5, 2);                // 31.4159 -> manually specified
     * VNum Ni6(Sv5, 0);                // 314159  -> 0 means remove any decimals
     */
    VNum(const str& Num, const char ScaleDelimiter = '\'');                                 // From a string
    VNum(const str& Num, idx Dec, const char ScaleDelimiter = '\'', const char Comma = '.'); // From a string for float (+ Decimal after specified digit)

    // CTor from iterables
    /* @brief   Parse from iterables with auto convert + warning
     * @param   vec&/span&<u8>  Iterable containing numbers
     * @pram    idx Dec         Decimal after specified digit(s)
     *
     * Example for integer number:
     *
     * vec  Dv1 = {1,9,2,0};            // Get from normal vector
     * VNum Ni1(Dv1);                   // 1920
     *
     * vec  Dv2 = {1,0,8,0};
     * VNum Ni2(Dv2);                   // 1080
     *
     * vec  Dv3 = {0,7,2,0};            // auto cut frontal '0'
     * VNum Ni3(Dv3);                   // 780
     *
     * vec  Dv3 = {0,7,21,0};           // auto normalize >1 digits number
     * VNum Ni3(Dv3);                   // 7210
     *
     * // Auto parse + normalize
     * VNum Ni4({0,7,21,0});            // 7210
     *
     *
     * Example for Float number:
     *
     * vec  Dv4 = {3,1,4,1,5,9};        // Leave like normal vector
     * VNum Nf1(Dv4, 1);                // 3.14159 -> Decimal after 1st digit
     * VNum Nf2(Dv4, 2);                // 31.4159 -> Decimal after 2nd digit
     *
     * // Auto parse + normalize
     * VNum Nf3({3,1,4,1,5,9}, 1);      // 3.14159
     * VNum Nf4({2,7,1,8,2,8}, 2);      // 27.1828
     *
     * // Auto parse nested vec (max 1 tree)
     * VNum Nf6({3,{1,4,1,5,9}});       // 3.14159 (invalid)
     * VNum Nf6({{3},{1,4,1,5,9}});     // 3.14159 (valid)
     * VNim Nf6({{3},{14}}, 2);         // 31.4 (auto flat)
     */
    // Single vec
    VNum(const vec<u8>& Num);                // From vector
    VNum(const vec<u8>& Num, idx Dec);       // From vector for float (+ Decimal after specified digit)

    // Single generic iterable
    VNum(const span<u8> Num);                // From generic iterables
    VNum(const span<u8> Num, idx Dec);       // From generic iterables for float (+ Decimal after specified digit)

    // Nested vec
    VNum(const vec<vec<u8>>& Num);
    VNum(const vec<vec<u8>>& Num, idx Dec);

    // Nested generic iterable
    VNum(const span<span<u8>> Num);
    VNum(const span<span<u8>> Num, idx Dec);

    // Left & Right vec
    VNum(const vec<u8>& NumLeft, const vec<u8>& NumRight);
    VNum(const vec<u8>& NumLeft, const vec<u8>& NumRight, idx Dec);

    // Left & Right generic iterable
    VNum(const span<u8> NumLeft, const span<u8> NumRight);
    VNum(const span<u8> NumLeft, const span<u8> NumRight, idx Dec);

    // Destroyer
    ~VNum() = default;

    // Set decimals digits (after comma sign)
    void ApplyDecimalLimit(idx limit);

    // Basic operations with operators
    [[nodiscard]] VNum operator+(const VNum& Other) const;
    [[nodiscard]] VNum operator-(const VNum& Other) const;
    [[nodiscard]] VNum operator*(const VNum& Other) const;
    [[nodiscard]] VNum operator/(const VNum& Other) const;

    // Getter
    // Get specific digit (seperator for decimal and thousands are ignored)
    u8& operator[](const idx At);
    u8 operator[](const idx At) const;

    // Copy & Move: Rule of Zero/Five (Setter)
    VNum(const VNum&) = default;
    VNum(VNum&&) noexcept = default;
    VNum& operator=(const VNum&) = default;
    VNum& operator=(VNum&&) noexcept = default;

    // Function'ed operations

    /* Chainable functions with VNum & Native numbers (implicit CTor)
     * VNum N1 = "32";
     * VNum N2 = "2";
     * VNum N3 = N1.Add(N2).Mul(4);          // Mul(VNum{4}) -> Implicit CTor
     * fmt::println("N1 = {}", N3.Str());    // 8.5
     */
    VNum& Add(const VNum& Other);
    VNum& Sub(const VNum& Other);
    VNum& Mul(const VNum& Other);
    VNum& Div(const VNum& Other);

    VNum& Pow(const VNum& Other);
    VNum& Root(const VNum& Power);
    VNum& Sqrt();
    VNum& Cbrt();

    // Compare each digit and direction
    bool operator==(VNum& Other) const noexcept;
    auto operator!=(const VNum& Other) const noexcept;
    auto operator>(const VNum& Other) const noexcept;
    auto operator>=(const VNum& Other) const noexcept;
    auto operator<(const VNum& Other) const noexcept;
    auto operator<=(const VNum& Other) const noexcept;

    /* ---- Accessors & Checks ---- */
    bool empty() const noexcept {
        return m_DataDec.empty() && m_DataInt.empty();
    }
    explicit operator bool() const noexcept {
        return !empty();
    }

    /* Conversion to possible native data
     * default is i32 for round numbers, and f32 for floating points
     *
     * Signed:
     * If Min<i8>..Max<i8>,     return with i8
     * If Min<i16>..Max<i16>,   return with i16
     * If Min<i32>..Max<i32>,   return with i32
     * If Min<i64>..Max<i64>,   return with i64
     *
     * Unsigned:
     * If 0..Max<u64>+,         return with u64
     *
     * Example Integer numbers:
     * VNum Ni1_vn = "2'147'483'647";        // auto parse seperators
     * auto Ni1_nt = Ni1_vn.ToNative();      // Ni1_nt is now i32 (int32_t)
     *
     * VNum Ni2_vn = "2'147'483'647" * 2 + 1;
     * auto Ni2_nt = Ni2_vn.ToNative();      // Ni2_nt is now i64 (int64_t), becuase it's over i32 limit
     *
     * VNum Ni4_vn = "9223372036854775807";
     * auto Ni4_nt = Ni4_vn.ToNative();      // Ni4_nt is now i64 (int64_t)
     *
     * VNum Ni5_vn = "9223372036854775807" * 2 + 1;
     * auto Ni5_nt = Ni5_vn.ToNative();      // Ni5_nt is now u64 (uint64_t)
     *
     * VNum Ni6_vn = "18446744073709551615" + 1;
     * auto Ni6_nt = Ni6_vn.ToNative();      // Ni6_nt is now u64 (uint64_t) but trunked to 18446744073709551615
     *
     * VNum Ni7_vn = "18446744073709551615";
     * auto Ni7_nt = Ni7_vn.ToNative<i32>(); // Ni7_nt is now i32 (int32_t) but overflow'ed
     *
     *
     * Example Floating point numbers:
     *
     * // 32 digis after comma of Pi
     *
     * static const str Pi = "3.14159265358979323846264338327950";
     *
     * VNum Nf1_vn = Pi.substr(1, 2);       // 2 digits after comma
     * auto Nf1_nt = Nf1.ToNative();        // Nf1_nt is now f32 (float), because is has less than 7 digis after comma
     *
     * VNum Nf2_vn = Pi.substr(1, 7);       // 7 digits after comma
     * auto Nf2_nt = Nf2.ToNative();        // Nf2_nt is now still f32 (float), because is has exactly 7 digis after comma
     *
     * VNum Nf4_vn = Pi.substr(1, 17);      // 17 digits after comma
     * auto Nf4_nt = Nf4.ToNative();        // Nf4_nt is now f64 (double), because is has more than 7 digis after comma
     *
     * VNum Nf4_vn = Pi.substr(1, 32);      // 32 digits after comma
     * auto Nf4_nt = Nf4.ToNative();        // Nf4_nt is now fld (long double), because is has more than 17 digis after comma
     *
     * VNum Nf5_vn = Pi.substr(1, 32);      // 32 digits after comma
     * auto Nf5_nt = Nf5.ToNative<f32>();   // Nf5_nt is now f32 (float), sliced to only 7 digits after comma
     *
     */
    template <Number N = i32>
    N ToNative() const;                     // return singly native data

    /* Conversion to basic string
     *
     * Example:
     * NVum Ni1_vn({3,1,4,1,5,9}, 1);       // 3.141459
     * str  Ni1_nt = Ni1_vn.ToStr();        // std::string{"3.141459"};
     *
     * NVum Ni1_vn({3,1,4,1,5,9}, 1);       // 3.141459
     * str  Ni1_nt = Ni1_vn.ToStr();        // std::string{"3.141459"};
     */
    str ToStr() const;                      // return singly str'ed native data

    /* @brief Conversion to container for each digits
     *
     * Example Integer numbers:
     * VNum Ni1_vn = "2'147'483'647";       // auto parse seperators
     * auto Ni1_nt = Ni1_vn.ToVec();        // Ni1_nt is now vec<u8>{2,1,4,7,4,8,3,6,4,7};
     *
     * VNum Ni2_vn = "2'147'483'647";       // auto parse seperators
     * auto Ni2_nt = Ni2_vn.ToChunkVec();   // Ni2_nt is now vec<u8>{{2},{1,4,7},{4,8,3},{6,4,7}};
     *
     * VNum Ni3_vn = "9223372036854775807" * 2 + 1;
     * auto Ni3_nt = Ni3_vn.ToVec();        // Ni3_nt is now vec<u8>{1,8,4,4,6,7,4,4,0,7,3,7,0,9,5,5,1,6,1,5};
     *
     * VNum Nf1_vn = "3.14";
     * auto Nf1_nt = Nf1_vn.ToVec();        // Nf1_vn is now vec<u8>{3,1,4};
     *
     * VNum Nf2_vn = "3.14159";
     * auto Nf2_nt = Nf2_vn.ToChunkVec();   // Nf2_vn is now vec<u8>{{3},{1,4,1,5,9}};
     *
     * VNum Nf3_vn = "2.71828";
     * u8 Nf3_nt[];
     * Nf3_vn.ToArr(Nf3_nt);                // Nf3_nt is now u8[]{2,7,1,8,2,8};
     */
    vec<u8> ToVec() const;                  // return as vector of numbers for each digits
    vec<vec<u8>> ToChunkVec() const;        // return as vector of numbers for each digits by chunks

    template <Number N>
    void ToArr(N* Dest) const;              // return as pointer array for each digits (C Style)

    /* ---- Conversion CTors ---- */
    // To generic native number types: i8, i16.., u64
    template <Tools::Types::Number N = i32>
    operator N() const noexcept;

    //
    operator vec<u8>() const noexcept;
    operator str() const noexcept;

    operator span<u8>() const noexcept;
    operator strview() const noexcept;
};

}

#endif