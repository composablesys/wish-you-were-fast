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

RUNS=${RUNS:=5}

function runbin() {
    printf "  %-12s : " $1 
    shift
    btime $RUNS -i $@
}

WASM_INT="/project/titzer/wizard-engine/bin/wizeng.x86-64-linux -mode=int"
WASM_JIT="/project/titzer/wizard-engine/bin/wizeng.x86-64-linux -mode=jit"

function compare_instrumentation() {
    for b in $@; do
	echo --- $b --------
	runbin "int" $WASM_INT $b
	runbin "int-loops" $WASM_INT --monitors=loops $b
	runbin "int-brs" $WASM_INT --monitors=branches $b
	runbin "int-coverage" $WASM_INT --monitors=coverage $b
	runbin "jit" $WASM_JIT $b
	runbin "jit-loops" $WASM_JIT --monitors=loops $b
	runbin "jit-brs" $WASM_JIT --monitors=branches $b
	runbin "jit-coverage" $WASM_JIT --monitors=coverage $b
    done
}

compare_instrumentation "$@"
