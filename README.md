This is a basic React app initialized from [Create-React-App](https://github.com/facebook/create-react-app) and built using [Bazel](https://github.com/bazelbuild/bazel)

BUILD.bazel and WORKSPACE were created based on the information found [here](https://github.com/bazelbuild/rules_nodejs)

The npm scripts in the package.json were updated to run `bazel run` commands. So you can still run the familiar `npm install`, `npm start`, etc but Bazel will handle the node_modules.
