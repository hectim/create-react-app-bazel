## General

Create-React-App basic project bundled (and dev server) with Parcel and built with Bazel. 

#### Usage

* ```npm start`` That's it. Installs node_modules and starts the dev server on localhost:1234. 
* `npm run build` If you only want to build (no dev server), also installs node_modules.
* `bazel run @yarn//:yarn install` If you only want to install node_modules. You can also just `npm/yarn install` but using the bazel versions is preferred.

#### Todos

* Auto-managed dependencies. The bazelbuild/node_js rules seem to be having trouble with this. 
* ~~Fix script to get the dirname and get logging to stdout from it~~
* Protobuf imports proof of concept, should be able to use them as a dependency of the build.
* Figure out best workflow for node_module installs, currently just does a `bazel run @yarn//:yarn install` before every script in the package.json
