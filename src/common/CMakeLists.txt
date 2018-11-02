# create a static library
add_library(common STATIC src/fs_utils.cpp)
target_include_directories(common PUBLIC include)
