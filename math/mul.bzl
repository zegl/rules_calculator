load("//:math/bc.bzl", "bc_impl")

def _mul_impl(ctx):
    return bc_impl(ctx, "*", "mul")

mul = rule(
    implementation = _mul_impl,
    attrs = {
        "terms": attr.label_list(),
    },
)
