load("//math:add.bzl", "add")
load("//math:number.bzl", "number")
load("//math:display.bzl", "display")

def fib(name, n):
    number(name = "%s_1" % name, number = 1)
    number(name = "%s_2" % name, number = 2)

    for i in range(3, n):
        add(
            name = "%s_%d" % (name, i),
            terms = [
                ":%s_%d" % (name, i - 1),
                ":%s_%d" % (name, i - 2),
            ],
        )

    display(
        name = name,
        value = ":%s_%d" % (name, n - 1),
    )
