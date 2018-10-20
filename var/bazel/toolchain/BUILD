package(default_visibility = ['//visibility:public'])
cc_toolchain_suite( name = "emscripten",
                    toolchains = {
                        "asmjs": ":asmjs_toolchain",
                        "asmjs|emscripten": ":asmjs_toolchain",
                    },
)

filegroup(name = "empty")

filegroup(
name = "all",
srcs = ["@clang_700//:all",
        "clang_700/tool_wrappers/clang.sh",
        "clang_700/tool_wrappers/clang++.sh",
       ],
)

cc_toolchain(
    name = "asmjs_toolchain",
    toolchain_identifier = "asmjs-toolchain",
    all_files = ":all",
    compiler_files = ":all",
    cpu = "asmjs",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":all",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 0,
)
