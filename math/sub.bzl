def _sub_impl(ctx):
    bc_files = "$(cat %s) $(cat %s)" % (
        ctx.attr.value.files.to_list()[0].path,
        ctx.attr.subtract.files.to_list()[0].path,
    )

    cmd = 'printf "%%d-%%d\\n" %s | bc' % bc_files

    out_file = ctx.actions.declare_file("%s.sub" % ctx.attr.name)

    ctx.actions.run_shell(
        inputs = depset(transitive = [ctx.attr.value.files, ctx.attr.subtract.files]),
        outputs = [out_file],
        progress_message = "Executing sub %s" % ctx.attr.name,
        command = "%s > '%s'" % (cmd, out_file.path),
    )

    return DefaultInfo(files = depset([out_file]))

sub = rule(
    implementation = _sub_impl,
    doc = """
Calculates the difference between two terms.

Example:

```python
# Calculates 20 - 5 to return 15
sub(
    name = "twenty_minus_five",
    terms = []
    value = ":twenty",
    subtract = ":five",
)
```
""",
    attrs = {
        "value": attr.label(mandatory = True),
        "subtract": attr.label(mandatory = True),
    },
)
