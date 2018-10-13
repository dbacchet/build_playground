cc_library(
    name = 'logger',
    hdrs = ['include/logger/logger.h'],
    strip_include_prefix = 'include',
    visibility = ["//visibility:public"],
)
cc_binary(
    name = "sample_logger",
    srcs = ["test_app.c"],
    deps = [":logger"],
)
