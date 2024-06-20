#!/bin/sh
set -e

export LD_LIBRARY_PATH=$PREFIX/lib64/
export PKG_CONFIG_PATH=$PREFIX/lib64/pkgconfig/
export PATH=$PREFIX/bin:$PATH

meson \
    --prefix $PREFIX \
 $@ . build

ninja -C build
ninja -C build install
