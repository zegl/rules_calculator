load("//math:bc.bzl", "bc_impl")

def _sub_impl(ctx):
    return bc_impl(ctx, "-", "sub")

sub = rule(
    implementation = _sub_impl,
    attrs = {
        "terms": attr.label_list(),
    },
)
