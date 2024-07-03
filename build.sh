#!/bin/bash
set -e

[[ -d efl ]] || (
  git clone --branch v-1.27.0 --depth 1 https://git.enlightenment.org/enlightenment/efl.git \
  && cd efl \
  && patch -p1 < ../efl-lua-5.3.patch
)
[[ -d enlightenment ]] || (
  git clone --branch v-0.26.0 --depth 1 https://git.enlightenment.org/enlightenment/enlightenment.git \
  && cd enlightenment \
  && patch -p1 < ../enlightenment-no-eeze.patch \
  && patch -p1 < ../enlightenment-no-sound.patch
)

docker run \
    --rm \
    -e PREFIX=$PWD \
    -e OWNER=$(id -u):$(id -g) \
    -v $PWD:/e \
    almalinux:8 \
    /e/build-in-docker.sh
