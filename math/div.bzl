load("//math:bc.bzl", "bc_impl")

def _div_impl(ctx):
    return bc_impl(ctx, "/", "div")

div = rule(
    implementation = _div_impl,
    attrs = {
        "terms": attr.label_list(),
    },
)
