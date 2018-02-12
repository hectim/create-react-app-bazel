# def _parcel(ctx):
#     args = ctx.actions.args()
#     args.add(["build", ctx.attr.entry_point])
#     args.add(["--out-dir", ctx.outputs.bundle.path])

#     ctx.actions.run(
#         inputs = ctx.files.srcs + ctx.files.node_modules,
#         executable = ctx.executable.parcel,
#         outputs = [ctx.outputs.bundle],
#         arguments = [args],
#         env = {
#             "TARGET_PATH": ctx.outputs.bundle.path,
#         }
#     )
#     return struct()

# parcel = rule(
#     implementation = _parcel,
#     attrs = {
#         "config": attr.label(allow_files = True, single_file = True),
#         "node_modules": attr.label(default = Label("@noodles//:node_modules")),
#         "entry_point": attr.string(mandatory = True),
#         "srcs": attr.label_list(allow_files = True),
#         "parcel": attr.label(
#             default = Label("//:parcel"),
#             executable = True,
#             cfg = "host"
#         )
#     },
#     outputs = {
#         "bundle": "herpderp"
#     },
# )

def _impl(ctx):
  # print("Inside rs definition")
  # print(ctx.files.srcs)
  # print("#############")
  # print(ctx.files.outs)
  # print("#############")
  # print(ctx.actions)
  # print("#############")
  # print(ctx.executable.rsbinary)
  # print("#############")

  ctx.actions.run(
    inputs=ctx.files.srcs,
    outputs=[ctx.outputs.build],
    progress_message="Running rs binary",
    executable=ctx.executable.rsbinary)
  # output = ctx.outputs.build

  # ctx.actions.run_shell(
  #   inputs=ctx.files.srcs,
  #   outputs=[output],
  #   progress_message="Running Shell Command from RS Rule",
  #   command="npm -v"
  #   # command="npm run build && mv build '%s'" % (output.path)
  # )

rs = rule(
  implementation=_impl,
  attrs = {
    "rsbinary": attr.label(
      executable = True,
      default = Label("//:rsbinary"),
      cfg = "host",
      allow_files = True,
    ),
    # "srcs": attr.label_list(allow_files=True),
    # "outs": attr.label(allow_files=True),
    "srcs": attr.label_list(allow_files=True),
  },
  outputs = {
    "build": "build"
  }
)