def bc_impl(ctx, op, name):
    term_files = [x.files.to_list()[0] for x in ctx.attr.terms]

    print(name, term_files)

    # Construct the command
    # cmd will be something like this:
    #    printf "%d+%d\n" $(cat bazel-out/darwin-fastbuild/bin/three.number) $(cat bazel-out/darwin-fastbuild/bin/four.number) | bc
    bc_command = op.join(["%d" for x in term_files])
    bc_files = " ".join(["$(cat %s)" % x.path for x in term_files])
    cmd = 'printf "%s\\n" %s | bc' % (bc_command, bc_files)

    out_file = ctx.actions.declare_file("%s.%s" % (ctx.attr.name, name))
    ctx.actions.run_shell(
        inputs = term_files,
        outputs = [out_file],
        progress_message = "Executing %s %s" % (name, ctx.attr.name),
        command = "sleep 1 && %s > '%s'" % (cmd, out_file.path),
    )

    return [DefaultInfo(files = depset([out_file]))]
