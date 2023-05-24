#!/bin/bash

RUNS=${RUNS:=5}
BTIME=$(which btime)
if [ -t 1 ]; then
    NORM='[0;00m'
    GREEN='[0;32m'     ; LIGHTGREEN='[1;32m'
    BROWN='[0;33m'     ; YELLOW='[1;33m'
    PURPLE='[0;35m'    ; PINK='[1;35m'
    BLACK='[0;30m'     ; DARKGRAY='[1;30m'
    CYAN='[0;36m'      ; LIGHTCYAN='[1;36m'
    BLUE='[0;34m'      ; LIGHTBLUE='[1;34m'
    LIGHTGRAY='[0;37m' ; WHITE='[1;37m' 
    RED='[0;31m'       ; LIGHTRED='[1;31m'
else
    NORM=""
    GREEN=""; LIGHTGREEN=""
    BROWN=""     ; YELLOW=""
    PURPLE=""    ; PINK=""
    BLACK=""     ; DARKGRAY=""
    CYAN=""      ; LIGHTCYAN=""
    BLUE=""      ; LIGHTBLUE=""
    LIGHTGRAY="" ; WHITE="" 
    RED=""       ; LIGHTRED=""
fi

if [ "$BTIME" = "" ]; then
    BTIME_LOC="$DIR/../tools/bin/btime"
    BTIME=$(ls $BTIME_LOC)
    if [ ! -x "$BTIME" ]; then
	echo "btime utility not found in \$PATH or in $BTIME_LOC" 
	exit 1
    fi
fi

BASELINE_ENGINES="wizeng-jit v8-liftoff sm-base wazero wasmer-base"
INTERPRETER_ENGINES="wizeng-int iwasm-int jsc-int wasm3"

function run() {
    engine=$1
    shift
    printf "$CYAN  %-22s ${NORM}: " "$engine $ENGINE_OPTIONS"
    CMD=$DIR/engines/$engine
    if [ ! -x "$CMD" ]; then
	echo "$RED $CMD${NORM} not found "
    else
	$BTIME $BTIME_OPTIONS $RUNS -i $DIR/engines/$engine $@
    fi
}
