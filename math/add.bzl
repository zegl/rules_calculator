load("//:math/bc.bzl", "bc_impl")

def _add_impl(ctx):
    return bc_impl(ctx, "+", "add")

def _mul_impl(ctx):
    return bc_impl(ctx, "*", "mul")

add = rule(
    implementation = _add_impl,
    attrs = {
        "terms": attr.label_list(),
    },
)

mul = rule(
    implementation = _mul_impl,
    attrs = {
        "terms": attr.label_list(),
    },
)
