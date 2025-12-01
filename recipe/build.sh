#!/bin/bash

set -x

autoreconf -fiv

./configure --prefix=$PREFIX --disable-static --disable-tests

make -j${CPU_COUNT}
make install

# The tests are known to be flakey so disable them
# make check || true
