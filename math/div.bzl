def _div_impl(ctx):
    bc_files = "$(cat %s) $(cat %s)" % (
        ctx.attr.dividend.files.to_list()[0].path,
        ctx.attr.divisor.files.to_list()[0].path,
    )

    cmd = 'printf "%%d/%%d\\n" %s | bc' % bc_files

    out_file = ctx.actions.declare_file("%s.div" % ctx.attr.name)

    ctx.actions.run_shell(
        inputs = depset(transitive = [ctx.attr.dividend.files, ctx.attr.divisor.files]),
        outputs = [out_file],
        progress_message = "Executing div %s" % ctx.attr.name,
        command = "%s > '%s'" % (cmd, out_file.path),
    )

    return DefaultInfo(files = depset([out_file]))

div = rule(
    implementation = _div_impl,
    doc = """
Divides the `dividend` with the `divisor`, and outputs the `qoutient`.

Example:

```python
# Calculates 20 / 5 to return 4
add(
    name = "tewnty_div_five",
    dividend = ":twenty",
    divisor = ":four",
)
```
""",
    attrs = {
        "dividend": attr.label(mandatory = True),
        "divisor": attr.label(mandatory = True),
    },
)
