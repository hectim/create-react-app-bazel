def _impl(ctx):
    args = ctx.actions.args()
    args.add(["build", ctx.attr.entry_point])
    args.add(["--out-dir", ctx.outputs.bundle.path])

    ctx.actions.run(
        inputs = ctx.files.srcs + ctx.files.node_modules,
        executable = ctx.executable.parcel,
        outputs = [ctx.outputs.bundle],
        arguments = [args],
    )

parcel = rule(
    implementation = _impl,
    attrs = {
        # "config": attr.label(allow_files = True, single_file = True),
        "node_modules": attr.label(default = Label("//:node_modules")),
        "entry_point": attr.string(mandatory = True),
        "srcs": attr.label_list(allow_files = True),
        "parcel": attr.label(
            default = Label("//:parcel"),
            executable = True,
            cfg = "host"
        )
    },
    outputs = {
        "bundle": "bundle"
    },
)