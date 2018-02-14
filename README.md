## General

Create-React-App basic project bundled (and dev server) with Parcel and built with Bazel. 

#### Usage

* `bazel run @yarn//:yarn install` to install dependencies into node_modules
* `bazel run :parcel <__dirname>/public/index.html` to build and start the dev server

#### Todos

* Auto-managed dependencies. The bazelbuild/node_js rules seem to be having trouble with this. 
* ~~Fix script to get the dirname and get logging to stdout from it~~
* Protobuf imports proof of concept, should be able to use them as a dependency of the build.
