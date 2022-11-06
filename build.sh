#!/usr/bin/sh

BASE_DIR=$(realpath $(dirname "$0"))
SRC_DIR="$BASE_DIR/src"
BUILD_DIR="$BASE_DIR/build"

# delete build folder if it exists
if [[ -d "$BUILD_DIR" ]]; then
    rm -rf "$BUILD_DIR"
fi

mkdir "$BUILD_DIR"
cd "$BUILD_DIR"

cmake "$SRC_DIR"

# IF USING CONAN use the following two commands instead
    # conan install "$SRC_DIR" -pr=PROFILE --build=missing
    # cmake "$SRC_DIR" -D CMAKE_TOOLCHAIN_FILE=conan_paths.cmake

cmake --build .
