
add_executable(unit_tests test_concurrent_queue.cpp
                          test_foundation_types.cpp
                          test_idtable.cpp
                          test_static_idtable.cpp
                          test_threadpool.cpp)
target_link_libraries(unit_tests PRIVATE common
                                         threadpool
                                         gtest_main)
add_test(unit_tests unit_tests)
