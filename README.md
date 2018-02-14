## General

Create-React-App basic project bundled (and dev server) with Parcel and built with Bazel. 

#### Usage

* `npm start` Seriously, that's it. Installs node_modules and starts the dev server on localhost:1234. 
* If you just want to build try `npm run build` and it'll install node_modules, too.
* If you want to just install dependencies (not sure why you would) it's best (but not necessary) to use bazel's version of yarn `bazel run @yarn//:yarn install`

#### Todos

* Auto-managed dependencies. The bazelbuild/node_js rules seem to be having trouble with this. 
* ~~Fix script to get the dirname and get logging to stdout from it~~
* Protobuf imports proof of concept, should be able to use them as a dependency of the build.
* Figure out the best workflow for bazel deps, right now the launch script calls `bazel run @yarn//:yarn install` but maybe the user likes to install themselves. Not sure if they can be trusted to use bazel's version.
