load("@bazel_tools//tools/build_rules:test_rules.bzl", "file_test")
load(":number.bzl", "number")
load(":add.bzl", "add")
load(":mul.bzl", "mul")
load(":div.bzl", "div")
load(":sub.bzl", "sub")
load(":fib.bzl", "fib")

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

div(
    name = "four_div_two",
    terms = [
        ":four",
        ":two",
    ],
)

file_test(
    name = "test-div",
    content = "2\n",
    file = ":four_div_two",
)

sub(
    name = "four_minus_three",
    terms = [
        ":four",
        ":three",
    ],
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
    content = "echo 75025\n",
    file = ":fib_25",
)
