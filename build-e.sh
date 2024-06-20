#!/bin/sh
set -e

export LD_LIBRARY_PATH=$PREFIX/lib64/
export PKG_CONFIG_PATH=$PREFIX/lib64/pkgconfig/
export PATH=$PREFIX/bin:$PATH

meson \
    --prefix $PREFIX \
    -Dsystemd=false \
    -Dbluez5=false \
    -Dpam=false \
    -Dmount-eeze=false \
    -Ddevice-udev=false \
    -Dgesture-recognition=false \
    -Delput=false \
    -Dbattery=false \
    -Dwizard=false \
 $@ . build

ninja -C build
ninja -C build install
