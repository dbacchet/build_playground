e = executable('unit_tests',
               ['test_concurrent_queue.cpp',
                'test_foundation_types.cpp',
                'test_idtable.cpp',
                'test_static_idtable.cpp',
                'test_threadpool.cpp', ],
               dependencies : [gtest_proj.get_variable('gtest_main_dep'),
                               common_dep,
                               threadpool_dep]
              )
test('unit tests',e)
