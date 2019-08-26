load("//:math/add.bzl", "add")
load("//:math/mul.bzl", "mul")
load("//:math/sub.bzl", "sub")
load("//:math/div.bzl", "div")
load("//:math/number.bzl", "number")
load("//:math/display.bzl", "display")

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

mul(
    name = "double",
    terms = [
        ":three_plus_four_plus_two",
        ":two",
    ],
)

sub(
    name = "sub_2",
    terms = [
        ":double",
        ":two",
    ],
)

display(
    name = "calculator",
    value = ":sub_2",
)
