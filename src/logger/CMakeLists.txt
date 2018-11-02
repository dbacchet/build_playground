add_library(logger INTERFACE)
target_include_directories(logger INTERFACE include)

add_executable(sample_logger test_app.c)
target_link_libraries(sample_logger PRIVATE logger)
