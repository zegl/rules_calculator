load("//:math/bc.bzl", "bc_impl")

def _add_impl(ctx):
    return bc_impl(ctx, "+", "add")

add = rule(
    implementation = _add_impl,
    attrs = {
        "terms": attr.label_list(),
    },
)
