cmake_minimum_required(VERSION 3.12)

project(BuildPlayground VERSION 1.0
                        DESCRIPTION "Playground to experiment with build systems"
                        LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# generate the compilation database file
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

enable_testing()
# recurse subdirectories
add_subdirectory(src)
add_subdirectory(subprojects)

