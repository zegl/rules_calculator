load("@bazel_tools//tools/build_rules:test_rules.bzl", "file_test")
load(":number.bzl", "number")
load(":add.bzl", "add")
load(":mul.bzl", "mul")
load(":div.bzl", "div")
load(":sub.bzl", "sub")
load(":fib.bzl", "fib")
load("@io_bazel_skydoc//stardoc:stardoc.bzl", "stardoc")
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

number(
    name = "two",
    number = 2,
)

number(
    name = "three",
    number = 3,
)

number(
    name = "four",
    number = 4,
)

add(
    name = "three_plus_four_plus_two",
    terms = [
        ":three",
        ":four",
        ":two",
    ],
)

file_test(
    name = "test-add",
    content = "9\n",
    file = ":three_plus_four_plus_two",
)

mul(
    name = "three_times_four",
    terms = [
        ":three",
        ":four",
    ],
)

file_test(
    name = "test-mul",
    content = "12\n",
    file = ":three_times_four",
)

number(
    name = "twenty",
    number = 20,
)

number(
    name = "five",
    number = 5,
)

div(
    name = "twenty_divided_by_five",
    dividend = ":twenty",
    divisor = ":five",
)

file_test(
    name = "test-div",
    content = "4\n",
    file = ":twenty_divided_by_five",
)

sub(
    name = "four_minus_three",
    value = ":four",
    subtract = ":three",
)

file_test(
    name = "test-sub",
    content = "1\n",
    file = ":four_minus_three",
)

fib(
    name = "fib_25",
    n = 25,
)

file_test(
    name = "test-fib",
    content = "#!/bin/bash\n\necho 75025\n",
    file = ":fib_25",
)

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
    input = ":add.bzl",
    out = "docs-add.md",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-display",
    input = ":display.bzl",
    out = "docs-display.md",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-div",
    input = ":div.bzl",
    out = "docs-div.md",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-fib",
    input = ":fib.bzl",
    out = "docs-fib.md",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-mul",
    input = ":mul.bzl",
    out = "docs-mul.md",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-number",
    input = ":number.bzl",
    out = "docs-number.md",
    deps = [":all-rules"],
)

stardoc(
    name = "docs-sub",
    input = ":sub.bzl",
    out = "docs-sub.md",
    deps = [":all-rules"],
)
