workspace(name = "operator")

# Download node rules
git_repository(
    name = "build_bazel_rules_nodejs",
    remote = "https://github.com/bazelbuild/rules_nodejs.git",
    tag = "0.4.1", # check for the latest tag when you install
)

# Download the proto repo 
git_repository(
  name = "tcn_protobuf",
  remote = "https://git.tcncloud.net/m/protos",
  tag = ""
)

# Download protobuf rules
git_repository(
  name = "org_pubref_rules_protobuf",
  remote = "https://github.com/pubref/rules_protobuf",
  tag = "v0.8.1",
)

# Load node rules
load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories", "npm_install")

# Install Node/NPM etc
node_repositories(package_json = ["//:package.json"])

# Install deps
# npm_install(name = "noodles", package_json = "//:package.json")
