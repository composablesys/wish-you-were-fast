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
JITS=${JITS:=1}
WASI=${WASI:=0}

function runbin() {
    printf "  %-12s : " $1 
    shift
    btime $RUNS -i $@
}

WYWF=/project/titzer/wish-you-were-fast

function compare_baseline_compilers() {
    for b in $@; do
	echo --- $b --------
	runbin "wizeng-spc" /project/titzer/wizard-engine/bin/wizeng.x86-64-linux -mode=jit $b
	runbin "v8-liftoff" $WYWF/wasm/engines/v8-liftoff $b
	runbin "sm-base" $WYWF/wasm/engines/sm-base $b
	runbin "wazero" $WYWF/wasm/engines/wazero $b
	runbin "wasmer-base" $WYWF/wasm/engines/wasmer-base $b
	runbin "iwasm-fjit" $WYWF/wasm/engines/iwasm-fjit $b
	runbin "wasmer" $WYWF/wasm/engines/wasmer $b
	runbin "wasmtime" $WYWF/wasm/engines/wasmtime $b
	runbin "v8-turbofan" $WYWF/wasm/engines/v8-turbofan $b
    done
}

function compare_wasi_compilers() {
    for b in $@; do
	echo --- $b --------
	runbin "wizeng-spc" /project/titzer/wizard-engine/bin/wizeng.x86-64-linux -mode=jit $b
	runbin "wazero" $WYWF/wasm/engines/wazero $b
	runbin "wasmer-base" $WYWF/wasm/engines/wasmer-base $b
	runbin "iwasm-fjit" $WYWF/wasm/engines/iwasm-fjit $b
	runbin "wasmer" $WYWF/wasm/engines/wasmer $b
	runbin "wasmtime" $WYWF/wasm/engines/wasmtime $b
	runbin "wavm" $WYWF/wasm/engines/wavm $b
    done
}

function compare_interpreters() {
    for b in $@; do
	echo --- $b --------
	runbin "wizeng-int" /project/titzer/wizard-engine/bin/wizeng.x86-64-linux $b
	runbin "iwasm-int" $WYWF/wasm/engines/iwasm-int $b
	runbin "wasm3" $WYWF/wasm/engines/wasm3 $b
    done
}

function compare_spc_configs() {
    for b in $@; do
	echo --- $b --------
        for config in jit jit-notags lazytags noisel nok nokfold nomr; do
	    runbin $config ~/jit-paper/exp/wizeng/wizeng-$config $b
        done
    done
}

compare_spc_configs "$@"
