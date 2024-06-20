#!/bin/sh
set -e

#meson --reconfigure \
meson \
    --prefix $PREFIX \
    -Dfb=true \
    -Dsystemd=false \
    -Decore-imf-loaders-disabler=ibus,scim \
    -Dlibmount=false \
    -Daudio=false \
    -Dpulseaudio=false \
    -Dharfbuzz=false \
    -Dgstreamer=false \
    -Dinput=false \
    -Dlua-interpreter=lua \
    -Deeze=false \
 $@ . build

ninja -C build
ninja -C build install

