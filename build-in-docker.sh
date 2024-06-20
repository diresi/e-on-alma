#!/bin/sh
set -e

cp -ar /e $HOME
cd $HOME/e
./req.sh

(
  cd efl \
  && PREFIX=$PREFIX/i ../build-efl.sh
)
(
  cd enlightenment \
  && PREFIX=$PREFIX/i ../build-e.sh
)

cd $PREFIX
tar cfz /e/e.tar.gz .
[[ -n "$OWNER" ]] && chown $OWNER /e/e.tar.gz

cd /usr
tar cfz /e/lib64.tar.gz lib64
[[ -n "$OWNER" ]] && chown $OWNER /e/lib64.tar.gz
