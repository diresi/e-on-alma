#!/bin/bash
_R="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
_I="${_R}/i"

LD_LIBRARY_PATH="${_I}/lib64":"$LD_LIBRARY_PATH"
LD_LIBRARY_PATH="${_R}/lib64":"$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH

export PATH="${_I}/bin":"$PATH"
enlightenment_start
