def _reactscripts(ctx):
    args = ctx.actions.args()
    args.add(["build"])

    ctx.actions.run(
        inputs = ctx.files.srcs + ctx.files.node_modules,
        executable = ctx.executable.reactscripts,
        outputs = [ctx.outputs.bundle],
        arguments = [args],
        env = {
            "TARGET_PATH": ctx.outputs.bundle.path,
        }
    )
    return struct()

reactscripts = rule(
    implementation = _reactscripts,
    attrs = {
        "config": attr.label(allow_files = True, single_file = True),
        "node_modules": attr.label(default = Label("@noodles//:node_modules")),
        "srcs": attr.label_list(allow_files = True),
        "reactscripts": attr.label(
            default = Label("//:reactscripts"),
            executable = True,
            cfg = "host"
        ),
        "local": attr.label(default = Label(local = 1)),
    },
    outputs = {
        "bundle": "herpderp"
    },
)
