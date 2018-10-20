workspace(name = "build_playground")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# googletest
http_archive(
    name = "gtest",
    url = "https://github.com/google/googletest/archive/release-1.8.1.zip",
    sha256 = "927827c183d01734cc5cfef85e0ff3f5a92ffe6188e0d18e909c5efebf28a0c7",
    strip_prefix = "googletest-release-1.8.1"
)

# llvm/clang 7 toolchain
new_http_archive(
    name = "clang_700",
    url = "http://releases.llvm.org/7.0.0/clang+llvm-7.0.0-x86_64-apple-darwin.tar.xz",
    sha256 = "b3ad93c3d69dfd528df9c5bb1a434367babb8f3baea47fbb99bf49f1b03c94ca",
    build_file = "var/bazel/toolchain/clang_700/clang-700.BUILD",
    strip_prefix = "clang+llvm-7.0.0-x86_64-apple-darwin",
)

# new_http_archive(
#   name = 'emscripten_toolchain',
#   url = 'https://github.com/kripken/emscripten/archive/1.37.22.tar.gz',
#   build_file = 'emscripten-toolchain.BUILD',
#   strip_prefix = "emscripten-1.37.22",
# )
#
# new_http_archive(
#   name = 'emscripten_clang',
#   url = 'https://s3.amazonaws.com/mozilla-games/emscripten/packages/llvm/tag/linux_64bit/emscripten-llvm-e1.37.22.tar.gz',
#   build_file = 'emscripten-clang.BUILD',
#   strip_prefix = "emscripten-llvm-e1.37.22",
# )
