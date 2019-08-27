def bc_impl(ctx, op, name):
    term_files = [
        item
        for sublist in ctx.attr.terms
        for item in sublist.files.to_list()
    ]

    # Example: "%d+%d+%d"
    bc_command = op.join(["%d" for x in term_files])

    # Example: "$(cat a) $(cat b) $(cat c)"
    bc_files = " ".join(["$(cat %s)" % x.path for x in term_files])

    # Example: printf "%d+%d\n" $(cat bazel-out/darwin-fastbuild/bin/three.number) $(cat bazel-out/darwin-fastbuild/bin/four.number) | bc
    cmd = 'printf "%s\\n" %s | bc' % (bc_command, bc_files)

    out_file = ctx.actions.declare_file("%s.%s" % (ctx.attr.name, name))
    ctx.actions.run_shell(
        inputs = term_files,
        outputs = [out_file],
        progress_message = "Executing %s %s" % (name, ctx.attr.name),
        command = "%s > '%s'" % (cmd, out_file.path),
    )

    return DefaultInfo(files = depset([out_file]))
