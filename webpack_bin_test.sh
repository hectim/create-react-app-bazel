
set -e


if (./external/yarn_modules/webpack_bin --help &) | grep -q 'webpack 3.8.1'; then
    echo "PASS"
else
    exit 1
fi
