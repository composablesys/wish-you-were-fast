#!/bin/bash

V8_LIFTOFF_FLAGS=-nowasm-tier-up

# don't bother reading symlinks for this directory
HERE=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

# try to find d8 via environment, then symlink
D8=$(readlink ${D8:=$HERE/d8})

if [ -x "$D8" ]; then
    echo $D8 $V8_LIFTOFF_FLAGS $HERE/run.js --
else
    echo error: d8 command not found
    exit 1
fi
