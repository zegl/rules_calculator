load("@io_bazel_skydoc//stardoc:stardoc.bzl", "stardoc")
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

# Docs
bzl_library(
    name = "all-rules",
    srcs = [
        "add.bzl",
        "bc.bzl",
        "display.bzl",
        "div.bzl",
        "fib.bzl",
        "mul.bzl",
        "number.bzl",
        "sub.bzl",
    ],
)

stardoc(
    name = "docs-add",
    out = "docs-add.md",
    input = ":add.bzl",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-display",
    out = "docs-display.md",
    input = ":display.bzl",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-div",
    out = "docs-div.md",
    input = ":div.bzl",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-fib",
    out = "docs-fib.md",
    input = ":fib.bzl",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-mul",
    out = "docs-mul.md",
    input = ":mul.bzl",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-number",
    out = "docs-number.md",
    input = ":number.bzl",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-sub",
    out = "docs-sub.md",
    input = ":sub.bzl",
    deps = [":all-rules"],
)
