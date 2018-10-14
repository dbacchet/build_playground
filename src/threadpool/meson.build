threadpool_inc = include_directories('include')
threadpool_lib = library(
    'threadpool',
    ['threadpool.cpp', ],
    include_directories : [threadpool_inc,common_inc],
    link_with : common_lib
)
threadpool_dep = declare_dependency(include_directories : threadpool_inc,
                                    link_with : threadpool_lib)
