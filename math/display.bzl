def _display_impl(ctx):
    out_file = ctx.actions.declare_file("%s.number" % ctx.attr.name)

    ctx.actions.run_shell(
        inputs = ctx.attr.value.files,
        outputs = [out_file],
        progress_message = "Executing %s" % ctx.attr.name,
        command = "echo \"#!/bin/bash\n\necho $(cat %s)\" > '%s'" % (ctx.attr.value.files.to_list()[0].path, out_file.path),
    )

    return DefaultInfo(
        files = depset([out_file]),
        executable = out_file,
    )

display = rule(
    implementation = _display_impl,
    executable = True,
    attrs = {
        "value": attr.label(),
    },
)
