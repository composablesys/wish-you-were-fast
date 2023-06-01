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

WYWF=$(cd .. && pwd)

TAGGING_CONFIGS="jit-notags aggtags aggtags-o aggtags-l jit lazytags"
SPEEDUP_CONFIGS="int jit nok nokfold noisel nomr"
BASELINE_CONFIGS="wizeng-jit v8-liftoff sm-base wazero wasmer-base" #TODO wasm-now
EXECUTION_CONFIGS="wizeng-int jsc-int iwasm-int wasm3 wazero wizeng-jit v8-liftoff sm-base jsc-bbq iwasm-fjit wasmer-base wasmnow sm-opt v8-turbofan jsc-omg wasmer wasmtime wavm" #TODO wasm-now v8-default sm-default
TRANSLATION_CONFIGS="wizeng-jit sm-base v8-liftoff sm-opt v8-turbofan wasmer-base wasmer wazero wasmnow"

INTERPRETER_ENGINES="wizeng-int jsc-int iwasm-int wasm3"
BASELINE_ENGINES="wizeng-jit v8-liftoff sm-base wasmer-base wazero wasmnow"
OPTIMIZING_ENGINES="jsc-bbq iwasm-fjit sm-opt v8-turbofan jsc-omg wasmer wasmtime wavm"

SUITES=${SUITES:="polybench ostrich libsodium"}
RUNS=${RUNS:=5}
ITEMS=${ITEMS:=0} # don't print suite headers
DATA_DIR=${DATA_DIR:="data"}
SUBSET=${SUBSET:="sorted"}

BTIME_OPTIONS=${BTIME_OPTIONS:=""}

EXPERIMENTS="speedup tagging baselines alltiers"

INVERT=${INVERT:=0}

# numerical processing in bash...
function float_div() {
    bc <<< "scale=6; $1 / $2"
}

# numerical processing in bash...
function float_sub() {
    bc <<< "scale=6; $1 - $2"
}

function summarize_file() {
    DATA_FILE=$1
    METRIC=$2
    baseline=$3

    if [ -f $DATA_FILE ]; then
	if [ "$METRIC" = "" ]; then
            val=$(awk '{s+=$1}END{printf "%.6f", s/NR}' < $DATA_FILE)
	else
            val=$(grep $METRIC $DATA_FILE | awk '{s+=$3}END{printf "%.6f", s/NR}')
	fi

        if [ "$baseline" != "" ]; then
	    if [ "$INVERT" = 0 ]; then
		val=$(echo "scale=6; $val / $baseline" | bc)
	    else
		val=$(echo "scale=6; $baseline / $val" | bc)
	    fi
	    
        fi
        printf "%s" $val
    else
        printf "-"
    fi
}

function compute_code_bytes() {
    wasmfile=$1
    engines/objdump $wasmfile | grep "{" | cut '-d{' -f2 | awk '{s+=$1}END{print s}'
}

function run_command_multiple() {
    DATA_FILE=$1
    shift
    CMD=$@

    date > $DATA_FILE
    i=RUNS
    while [[ $i -gt 0 ]]; do
        echo ---- >> $DATA_FILE
        $CMD >> $DATA_FILE
        i=$((i - 1))
    done
}

function print_suite() {
    printf "\nSuite: $SUITE"
    shift
    printf "\n"
}

function print_list() {
    printf "\t"
    for v in $@; do
        printf "$v\t"
    done
    printf "\n"
}

