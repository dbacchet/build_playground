common_inc = include_directories('include')
common_lib = library( 'common',
         ['src/fs_utils.cpp', ],
         include_directories : include_directories('include')
        )
common_dep = declare_dependency(include_directories : common_inc,
                                link_with : common_lib)
