workspace(name = "operator")

# Download node rules
git_repository(
    name = "build_bazel_rules_nodejs",
    remote = "https://github.com/bazelbuild/rules_nodejs.git",
    tag = "0.4.1", # check for the latest tag when you install
)

# Load node rules
load("@build_bazel_rules_nodejs//:defs.bzl", "npm_install", "node_repositories")

# Install Node/NPM etc
node_repositories(package_json = ["//:package.json"])

# Install deps
npm_install(
  name = "noodles", 
  package_json = "//:package.json",
  package_lock_json = "//:package-lock.json"
)
