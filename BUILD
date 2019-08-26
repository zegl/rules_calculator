load("//:math/add.bzl", "add", "mul")
load("//:math/number.bzl", "number")

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
    name = "three_plus_four",
    terms = [
        ":three",
        ":four",
    ],
)

mul(
    name = "three_plus_four__times__two",
    terms = [
        ":three_plus_four",
        ":two",
    ],
)
