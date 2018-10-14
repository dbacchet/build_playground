project('build_playground', 'c','cpp',
  version : '0.0.1',
  license : 'MIT',
  default_options : ['c_std=c11', 'cpp_std=c++11'] )

gtest_proj = subproject('gtest')

subdir('src/logger')
subdir('src/common')
subdir('src/threadpool')
subdir('src/samples')
subdir('src/testing')
