This is a basic React app initialized from [Create-React-App](https://github.com/facebook/create-react-app) and built using [Bazel](https://github.com/bazelbuild/bazel)

BUILD.bazel and WORKSPACE were created based on the information found [here](https://github.com/bazelbuild/rules_nodejs)

So this works if you `npm install` within the bazel-app-example folder that gets created as part of the bazel build and then run `bazel run @noodles//:node_modules/react-scripts/bin/react-scripts.js start`, (noodles is my node modules package). If you skip the npm install step, the javascript files don't get generated and the page just complains that it can't find them.
