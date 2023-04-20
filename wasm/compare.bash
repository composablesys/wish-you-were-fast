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

function compare_baseline_compilers() {
    for b in $@; do
	echo --- $b --------
	runbin "jit" /project/titzer/wizard-engine/bin/wizeng.x86-64-linux -mode=jit $b
	runbin "v8-liftoff" /project/titzer/wish-you-were-fast/wasm/engines/v8-liftoff $b
	runbin "sm-base" /project/titzer/wish-you-were-fast/wasm/engines/sm-base $b
	runbin "wasmtime" /project/titzer/wish-you-were-fast/wasm/engines/wasmtime $b
	runbin "iwasm-fjit" /project/titzer/wish-you-were-fast/wasm/engines/iwasm-fjit $b
	runbin "wazero" /project/titzer/wish-you-were-fast/wasm/engines/wazero $b
	runbin "wasmer-base" /project/titzer/wish-you-were-fast/wasm/engines/wasmer-base $b
	runbin "wasmer" /project/titzer/wish-you-were-fast/wasm/engines/wasmer $b
	runbin "v8-turbofan" /project/titzer/wish-you-were-fast/wasm/engines/v8-turbofan $b
    done
}

function compare_interpreters() {
    for b in $@; do
	echo --- $b --------
	runbin "wizeng" /project/titzer/wizard-engine/bin/wizeng.x86-64-linux $b
	runbin "iwasm-int" /project/titzer/wish-you-were-fast/wasm/engines/iwasm-int $b
	runbin "wasm3" /project/titzer/wish-you-were-fast/wasm/engines/wasm3 $b
    done
}

compare_baseline_compilers "$@"
