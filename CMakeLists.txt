cmake_minimum_required(VERSION 4.2)
project(RDTools VERSION 1.0.0 LANGUAGES CXX)

#set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_CXX_STANDARD 26)

add_executable(RDTools Tools.cpp)

set(TOOLS_TYPES
    # ----- RDTools.Types -----
    RDTools/Types.hpp
    RDTools/Types/Base.hpp
    RDTools/Types/Common.hpp

    RDTools/Types/Int.hpp
    RDTools/Types/Int.Fast.hpp
    RDTools/Types/Int.Least.hpp
    RDTools/Types/Int.Atomic.hpp
    RDTools/Types/Int.Atomic.Fast.hpp
    RDTools/Types/Int.Atomic.Least.hpp

    RDTools/Types/UInt.hpp
    RDTools/Types/UInt.Fast.hpp
    RDTools/Types/UInt.Least.hpp
    RDTools/Types/UInt.Atomic.hpp
    RDTools/Types/UInt.Atomic.Fast.hpp
    RDTools/Types/UInt.Atomic.Least.hpp

    RDTools/Types/Float.hpp

    RDTools/Types/ExtNum.hpp

    RDTools/Types/Memory.hpp
    RDTools/Types/Pointer.hpp

    RDTools/Types/String.hpp

    RDTools/Types/Time.hpp
    RDTools/Types/Containers.hpp
)

set(TOOLS_CASTING
    # ----- RDTools.Casting -----
    RDTools/Casting.hpp
)

set(TOOLS_FILES
    # ----- RDTools.Files -----
    RDTools/Files.hpp
)

set(TOOLS_EDGES
    # ----- RDTools.Edges -----
    RDTools/Edges.hpp
)

set(TOOLS_FORMAT_NUMBER
    # ----- RDTools.FormatNumber -----
    RDTools/FormatNumber.hpp

    # ----- RDTools.Rounding -----
    RDTools/Rounding.hpp
)

set(TOOLS_IVEC
    # ----- RDTools.IVec -----
    # Master file
    RDTools/IVec.hpp
    RDTools/IVec/Base.Master.hpp

    # Base class
    RDTools/IVec/Base.Class.hpp

    # Inits
    RDTools/IVec/Init.Ctor.hpp
    RDTools/IVec/Init.Dtor.hpp

    # Core features
    RDTools/IVec/Core.Data.hpp
    RDTools/IVec/Core.State.hpp
    RDTools/IVec/Core.Resize.hpp
    RDTools/IVec/Core.Append.hpp
    RDTools/IVec/Core.Append.Idx.hpp
    RDTools/IVec/Core.Emplace.hpp
    RDTools/IVec/Core.Emplace.Idx.hpp
    RDTools/IVec/Core.Extend.hpp

    # Accessors
    RDTools/IVec/Access.Getset.hpp
    RDTools/IVec/Access.Pop.hpp
    RDTools/IVec/Access.Elements.hpp
    RDTools/IVec/Access.Iter.hpp
    RDTools/IVec/Access.Ref.hpp

    # Dunder
    RDTools/IVec/Opr.Dunder.hpp

    # Items
    RDTools/IVec/Items.Orders.hpp
    RDTools/IVec/Items.Query.hpp
    RDTools/IVec/Items.Find.hpp
    RDTools/IVec/Items.Slice.hpp
    RDTools/IVec/Items.Erase.Idx.hpp
    RDTools/IVec/Items.Erase.Ptr.hpp

    # functional
    RDTools/IVec/Functional.hpp

    # Converter
    RDTools/IVec/Converter.hpp
    RDTools/IVec/Converter.Opr.hpp

    # Legacy choise of diction
    RDTools/IVec/Legacy.hpp

    # formater for std & fmt (Don't include on Master.hpp)
    RDTools/IVec/Format.std.hpp
    RDTools/IVec/Format.fmt.hpp

    # Debug (Don't include on Master.hpp)
    RDTools/IVec/Base.RangesQualification.hpp
)

set(TOOLS_LINKING
    # ----- RDTools.Linking -----
    RDTools/Linking.hpp
)

set(TOOLS_OS
    # ----- RDTools.OS -----
    RDTools/OS.hpp

    RDTools/OS/Apple.API.hpp
    RDTools/OS/Apple.files.hpp
    RDTools/OS/Apple.proc.hpp
    RDTools/OS/Apple.sleep.hpp
    RDTools/OS/Apple.terminal.hpp
    RDTools/OS/Linux.API.hpp
    RDTools/OS/Linux.files.hpp
    RDTools/OS/Linux.proc.hpp
    RDTools/OS/Linux.sleep.hpp
    RDTools/OS/Linux.terminal.hpp
    RDTools/OS/Win32.API.hpp
    RDTools/OS/Win32.Env.hpp
    RDTools/OS/Win32.Files.hpp
    RDTools/OS/Win32.Proc.hpp
    RDTools/OS/Win32.Sleep.hpp
    RDTools/OS/Win32.Terminal.hpp
)

set(TOOLS_STYLES
    # ----- RDTools.Style -----
    RDTools/Style.hpp

    # ----- RDTools.StyleW -----
    RDTools/StyleW.hpp

    # ----- RDTools.PrintHeader -----
    RDTools/PrintHeader.hpp
)


set(TOOLS_RANDOMS
    # ----- Tool.Randomizer -----
    RDTools/Randomizer.hpp

    # ----- RDTools.Random -----
    RDTools/Random.hpp
    RDTools/Random/_Common.hpp
    RDTools/Random/Bundle.Base.hpp
    RDTools/Random/Bundle.Custom.hpp
    RDTools/Random/Bundle.Thread.Custom.hpp
    RDTools/Random/Bundle.Thread.hpp
    RDTools/Random/Choice.Base.hpp
    RDTools/Random/Choice.Custom.hpp
    RDTools/Random/SBundle.Base.hpp
    RDTools/Random/SBundle.Custom.hpp
    RDTools/Random/SBundle.Thread.Custom.hpp
    RDTools/Random/SBundle.Thread.hpp
    RDTools/Random/Single.Base.hpp
    RDTools/Random/Single.Custom.hpp
    RDTools/Random/String.Base.hpp
    RDTools/Random/String.Custom.hpp
    RDTools/Random/Vector.Base.hpp
    RDTools/Random/Vector.Custom.hpp
    RDTools/Random/Vector.Thread.Custom.hpp
    RDTools/Random/Vector.Thread.hpp

    # ----- RDTools.TrueRandom -----
    # Master file
    RDTools/TrueRandom.hpp                  # 0

    # Common meader file
    RDTools/TrueRandom/_Common.hpp          # 1
    RDTools/TrueRandom/_Internal.Win32.hpp  # 2
    RDTools/TrueRandom/_Internal.Linux.hpp  # 2

    # Single thread exclusive
    RDTools/TrueRandom/Single.hpp           # 3a (4)
    RDTools/TrueRandom/Single.Impl.hpp      # 3b (5)

    # Single threading with 32/64-bit type preset
    RDTools/TrueRandom/Vector.hpp           # 4a (6)
    RDTools/TrueRandom/Vector.Impl.hpp      # 4b (7)
    RDTools/TrueRandom/Bundle.hpp           # 5a (8)
    RDTools/TrueRandom/Bundle.Impl.hpp      # 5b (9)
    RDTools/TrueRandom/SBundle.hpp          # 6a (10)
    RDTools/TrueRandom/SBundle.Impl.hpp     # 6b (11)

    # Multi threading with 32/64-bit type preset
    RDTools/TrueRandom/Vector.Thread.hpp        # 7a (12)
    RDTools/TrueRandom/Vector.Thread.Impl.hpp   # 7b (13)
    RDTools/TrueRandom/Bundle.Thread.hpp        # 8a (14)
    RDTools/TrueRandom/Bundle.Thread.Impl.hpp   # 8b (15)
    RDTools/TrueRandom/SBundle.Thread.hpp       # 9a (16)
    RDTools/TrueRandom/SBundle.Thread.Impl.hpp  # 9b (17)

    # Random Choice from any iterable via generic template
    RDTools/TrueRandom/Choice.hpp           # 10  (18)
    RDTools/TrueRandom/String.hpp           # 11a (19)
    RDTools/TrueRandom/String.Impl.hpp      # 11b (20)
)

set(TOOLS_VECTORS
    # ----- RDTools.Vector -----
    RDTools/Vector.hpp
    RDTools/Vector/Accumulator.hpp
    RDTools/Vector/Erase.hpp
    RDTools/Vector/Erase.inl.hpp
    RDTools/Vector/Find.hpp
    RDTools/Vector/Order.hpp
    RDTools/Vector/Order.inl.hpp
    RDTools/Vector/Slice.hpp
    RDTools/Vector/Slice.inl.hpp
)

# ---- RDTools.PStr -----
set(TOOLS_CPTR_STR
    RDTools/PStr.hpp
    RDTools/PStr/Base.Class.hpp
    RDTools/PStr/Init.Ctor.hpp
    RDTools/PStr/Core.Getter.hpp
    RDTools/PStr/Core.Converter.hpp
    RDTools/PStr/Core.Debug.hpp
)

set(TOOLS_TIME
    # ---- RDTools.Time -----
    RDTools/Time.hpp
)

set(TOOLS_OTHERS
    # ---- Other Drafts ----
    RDTools/RandomVariant.hpp
    RDTools/Range.hpp
    RDTools/String.hpp
    RDTools/Version.hpp
    RDTools/FeatureCheck.hpp
)

set(TOOLS_UNIFIED_HEADERS
    ${TOOLS_TYPES}
    ${TOOLS_CASTING}
    ${TOOLS_FILES}
    ${TOOLS_EDGES}
    ${TOOLS_FORMAT_NUMBER}
    ${TOOLS_IVEC}
    ${TOOLS_LINKING}
    ${TOOLS_OS}
    ${TOOLS_STYLES}
    ${TOOLS_RANDOMS}
    ${TOOLS_VECTORS}
    ${TOOLS_CPTR_STR}
    ${TOOLS_TIME}
    ${TOOLS_OTHERS}
)

# set(TOOLS_TRNG_TESTS
#     # For bcrypt
#     Tests/BCryptGenRandom.cpp
# )

target_sources(RDTools PRIVATE ${TOOLS_UNIFIED_HEADERS})

set_source_files_properties(${TOOLS_UNIFIED_HEADERS} PROPERTIES
    HEADER_FILE_ONLY TRUE
)

target_compile_features(RDTools PRIVATE cxx_std_26)

set(COMMON_FLAGS
    -std=c++26
    -O0
    # -march=native
    # -mavx512f
    -m64
    -fansi-escape-codes
    -fcolor-diagnostics
    -fdiagnostics-show-option
    -fcxx-exceptions
    -fexceptions
    -Wall
    # -flto
    -Wno-deprecated-declarations
    -Wno-return-type
    -v
)

target_compile_options(RDTools PRIVATE
    ${COMMON_FLAGS}
)

target_link_libraries(RDTools PRIVATE
    # fmt
    # bcrypt
)

set_target_properties(RDTools PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
)
