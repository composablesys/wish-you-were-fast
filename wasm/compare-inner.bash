#!/bin/bash

NORM='\[[0;00m\]'
GREEN='\[[0;32m\]'     ; LIGHTGREEN='\[[1;32m\]'
BROWN='\[[0;33m\]'     ; YELLOW='\[[1;33m\]'
PURPLE='\[[0;35m\]'    ; PINK='\[[1;35m\]'
BLACK='\[[0;30m\]'     ; DARKGRAY='\[[1;30m\]'
CYAN='\[[0;36m\]'      ; LIGHTCYAN='\[[1;36m\]'
BLUE='\[[0;34m\]'      ; LIGHTBLUE='\[[1;34m\]'
LIGHTGRAY='\[[0;37m\]' ; WHITE='\[[1;37m\]' 
RED='\[[0;31m\]'       ; LIGHTRED='\[[1;31m\]'

function runbin() {
    printf "  %-15s: " $1 
    shift
    btime 1 -l $@
}

function runjs() {
    printf "  %-15s: " $1 
    shift
    $@
}

for b in $@; do
    echo --- $b --------
#    runbin "int" /tmp/wizeng-new $b
    runbin "wizeng-jit" ~/wizard-engine/bin/wizeng.x86-64-linux -mode=jit $b
    runjs "v8-liftoff" /project/titzer/wish-you-were-fast/wasm/engines/v8-liftoff $b
    runjs "v8-turbofan" /project/titzer/wish-you-were-fast/wasm/engines/v8-turbofan $b
done
