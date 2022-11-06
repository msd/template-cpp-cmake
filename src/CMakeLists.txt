cmake_minimum_required(VERSION 3.24.0 FATAL_ERROR)

project(UntitledProject VERSION 0.0.1 LANGUAGES CXX)

set ( DEBUG_BUILD TRUE CACHE BOOL "enable extra debugging tests & messages" )
set ( BUILD_TESTS FALSE CACHE BOOL "whether to build the tests" )

if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
    add_compile_options("-fdiagnostics-color")
    link_libraries("-static-libgcc -static-libstdc++")
endif ()
# TODO IF MSVC -> add_compile_options("/WX /Wall")

if (BUILD_TESTS)
    find_package(Catch2 REQUIRED)
    add_executable(tests tests.cpp hashing.cpp utils.cpp)
    target_link_libraries(tests PUBLIC Catch2::Catch2)
endif()

add_executable(main main.cpp)
target_compile_features(main PUBLIC cxx_std_23)

if (DEBUG_BUILD)
    add_compile_definitions(UNTITLED_PROJECT_DEBUG)
endif()
