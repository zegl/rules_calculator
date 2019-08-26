def _number_impl(ctx):
    out_file = ctx.actions.declare_file("%s.number" % ctx.attr.name)
    print(ctx.attr.number)

    ctx.actions.write(
        output = out_file,
        content = str(ctx.attr.number),
    )

    return [DefaultInfo(files = depset([out_file]))]

number = rule(
    implementation = _number_impl,
    attrs = {
        "number": attr.int(),
    }
)
