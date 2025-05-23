#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

autoreconf --force --verbose --install
./configure --enable-color \
    --disable-silent-rules \
    --disable-debug \
    --disable-dependency-tracking \
    --prefix=${PREFIX}
make -j${CPU_COUNT}
make install
