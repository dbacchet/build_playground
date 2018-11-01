package(default_visibility = ['//visibility:public'])
cc_toolchain_suite( name = "custom_clang",
                    toolchains = {
                        "darwin": ":clang700_toolchain",
                    },
)

filegroup(name = "empty")

filegroup(
name = "all",
srcs = ["@clang_700//:all",
        "clang_700/tool_wrappers/clang.sh",
        "clang_700/tool_wrappers/clang++.sh",
        "clang_700/tool_wrappers/ld.sh",
       ],
)

cc_toolchain(
    name = "clang700_toolchain",
    toolchain_identifier = "clang700-toolchain",
    all_files = ":all",
    compiler_files = ":all",
    cpu = "darwin",
    dwp_files = ":empty",
    dynamic_runtime_libs = [":empty"],
    linker_files = ":all",
    objcopy_files = ":empty",
    static_runtime_libs = [":empty"],
    strip_files = ":empty",
    supports_param_files = 0,
)
