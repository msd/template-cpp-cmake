# build exists
BUILD_DIR=build
if [[ -d "$BUILD_DIR" ]]
    rm -rf "$BUILD_DIR"
fi

mkdir "$BUILD_DIR"
cd "$BUILD_DIR"

cmake ../src

# IF USING CONAN use the following two commands instead
    # conan install ../src -pr=PROFILE
    # cmake ../src -D CMAKE_TOOLCHAIN_FILE=conan_paths.cmake

cmake --build .
