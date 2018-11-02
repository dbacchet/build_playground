add_library(threadpool STATIC threadpool.cpp)
target_include_directories(threadpool PUBLIC include)
target_link_libraries(threadpool PUBLIC common)
