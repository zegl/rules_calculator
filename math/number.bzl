def _number_impl(ctx):
    out_file = ctx.actions.declare_file("%s.number" % ctx.attr.name)

    ctx.actions.write(
        output = out_file,
        content = str(ctx.attr.number),
    )

    return DefaultInfo(files = depset([out_file]))

number = rule(
    implementation = _number_impl,
    doc = """
Defines a single static number.

Example:

```python
number(
    name = "five",
    number = 5,
)
```
""",
    attrs = {
        "number": attr.int(mandatory = True, doc = "The integer to write to the output"),
    },
)
