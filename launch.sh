DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

bazel run :parcel $DIR/public/index.html
