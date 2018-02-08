def _rollup(ctx):
  """This is not a full-featured Rollup bazel rule, just enough to test the
     other rules in this repo.
  """
  args = ["--input", ctx.attr.entry_point]
  args += ["--output.file", ctx.outputs.bundle.path]
  args += ["--output.format", "es"]

  ctx.action(
      inputs = ctx.files.srcs,
      executable = ctx.executable.rollup,
      outputs = [ctx.outputs.bundle],
      arguments = args,
  )
  return struct()

rollup = rule(
    implementation = _rollup,
    attrs = {
        "srcs": attr.label_list(allow_files = True),
        "entry_point": attr.string(mandatory = True),
        "rollup": attr.label(
            default = Label("//:rollup"),
            executable = True,
            cfg = "host"),
    },
    outputs = {
        "bundle": "%{name}.js"
    },
)