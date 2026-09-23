# ---- Direct install on msys2/cygwin ----
# If you're on windows and using msys2 or cygwin
# you can simply copy RDTools/ to your /include/ folder
# Example to msys2 with PowerShell:
# `Copy-Item -Path .\RDTools\ -Destination D:\Msys2\clang64\include -Recurse -Force`
# use -Recure to scrap the entire every single file under /RDTools folder
# use -Force (optional) to overwrite current installation and replace it with newer update

cmake_minimum_required(VERSION 4.00)
project(RDTools VERSION 1.0.0 LANGUAGES CXX)

# ------ 1. HEADER-ONLY LIBRARY------
add_library(RDTools INTERFACE)
add_library(RDTools::RDTools ALIAS RDTools)

# The ONLY mandatory thing: include path
# BUILD_INTERFACE  -> for develop / add_subdirectory()
# INSTALL_INTERFACE -> for cmake --install
target_include_directories(RDTools INTERFACE
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

# C++26 automatic propagate
target_compile_features(RDTools INTERFACE cxx_std_26)

# ------ 2. TEST EXECUTABLE (Optional, gated by option)------
option(RDTOOLS_BUILD_TESTS "Build RDTools test executable" ON)

if(RDTOOLS_BUILD_TESTS)
    add_executable(RDTools_Test RDTools.cpp)
    target_link_libraries(RDTools_Test PRIVATE RDTools::RDTools)

    # Header list only appeared here for IDE view, doesn't effect build/install
    file(GLOB_RECURSE _rdtools_ide_headers CONFIGURE_DEPENDS
        "${CMAKE_CURRENT_SOURCE_DIR}/RDTools/*.hpp"
    )
    target_sources(RDTools_Test PRIVATE ${_rdtools_ide_headers})

    target_compile_options(RDTools_Test PRIVATE
        -O0 -m64 -Wall
        -fansi-escape-codes -fcolor-diagnostics
        -fdiagnostics-show-option
        -Wno-deprecated-declarations -Wno-return-type
    )

    set_target_properties(RDTools_Test PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}
    )
endif()

# ------ 3. INSTALL & PACKAGE SUPPORT------
include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

# Install target + export
install(TARGETS RDTools
        EXPORT RDToolsTargets
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

install(EXPORT RDToolsTargets
        FILE RDToolsTargets.cmake
        NAMESPACE RDTools::
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/RDTools
)

# Generate config files
configure_package_config_file(
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake/RDToolsConfig.cmake.in"
        "${CMAKE_CURRENT_BINARY_DIR}/RDToolsConfig.cmake"
        INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/RDTools
)

write_basic_package_version_file(
        "${CMAKE_CURRENT_BINARY_DIR}/RDToolsConfigVersion.cmake"
        VERSION ${PROJECT_VERSION}
        COMPATIBILITY SameMajorVersion
)

install(FILES
        "${CMAKE_CURRENT_BINARY_DIR}/RDToolsConfig.cmake"
        "${CMAKE_CURRENT_BINARY_DIR}/RDToolsConfigVersion.cmake"
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/RDTools
)

# Copy folder RDTools/ -> include/RDTools/
install(DIRECTORY RDTools
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

# Optional: umbrella header
if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/RDTools.hpp")
    install(FILES RDTools.hpp
            DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
    )
endif()

# usage:
# # Configure
# cmake -B build
#
# # Build test
# cmake --build build
#
# # Install (opsional)
# cmake --install build --prefix D:/Code/_CLIB/install