git_repository(
  name = "build_bazel_rules_nodejs",
  remote = "https://github.com/bazelbuild/rules_nodejs.git",
  tag = "0.3.1",
)

# load("@build_bazel_rules_nodejs//:defs.bzl", "npm_install")
#
# npm_install(
#     name = "boodles",
#     package_json = "//:package.json", # package-lock.json works too
# )

load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories")

# NOTE: this rule installs nodejs, npm, and yarn, but does NOT install
# your npm dependencies into your node_modules folder.
# You must still run the package manager to do this.
node_repositories(package_json = ["//:package.json"])
