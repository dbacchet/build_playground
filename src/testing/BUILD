cc_test(
    name = "unit_tests",
    srcs = [
      'test_concurrent_queue.cpp',
      'test_foundation_types.cpp',
      'test_idtable.cpp',
      'test_static_idtable.cpp',
      'test_threadpool.cpp',
           ],
    deps = ['//src/logger:logger',
            '//src/threadpool:threadpool',
            '@gtest//:gtest_main'],
)
