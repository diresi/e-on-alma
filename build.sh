#!/bin/bash
set -e

[[ -d efl ]] || (
  git clone --branch v1.26.3 --depth 1 https://git.enlightenment.org/enlightenment/efl.git \
  && cd efl \
  && patch -p1 < ../efl-lua-5.3.patch
)
[[ -d enlightenment ]] || (
  git clone --branch v0.25.4 --depth 1 https://git.enlightenment.org/enlightenment/enlightenment.git \
  && cd enlightenment \
  && patch -p1 < ../enlightenment-no-eeze.patch
)
[[ -d terminology ]] || (
  git clone --branch v1.13.0 --depth 1 https://git.enlightenment.org/enlightenment/terminology.git \
  && true
)

docker run \
    --rm \
    -e PREFIX=$PWD \
    -e OWNER=$(id -u):$(id -g) \
    -v $PWD:/e \
    almalinux:8 \
    /e/build-in-docker.sh
