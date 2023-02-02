#!/bin/bash

# don't bother reading symlinks for this directory
HERE=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

if [ "$#" != 1 ]; then
    echo "Print the appropriate command and arguments for the given engine."
    echo "Usage: command.sh <engine>|list"
    exit 1
fi

ENGINE=$1
shift

# flags that select various tiers in engines
V8_TIER_LIFTOFF="--nowasm-tier-up"
V8_TIER_TURBOFAN="--noliftoff"
JSC_TIER_INT="--useOMGJIT=false --useBBQJIT=false"
JSC_TIER_OMG="--useWasmLLInt=false --useOMGJIT=false --useBBQJIT=true --wasmBBQUsesAir=false --webAssemblyBBQB3OptimizationLevel=2"
JSC_TIER_BBQ="--useWasmLLInt=false --useOMGJIT=false --useBBQJIT=true"
SM_TIER_BASELINE="--wasm-compiler=baseline"
SM_TIER_OPT="--wasm-compiler=optimizing"
WIZENG_TIER_JIT="-mode=jit"

# Returns the engine binary for d8, sm, etc.
function find_binary() {
    if [ "$2" != "" ]; then
        echo $1
        return 0
    fi
    LINK=$(readlink $HERE/"$3")
    if [ -x "$LINK" ]; then
        echo $LINK
        return 0
    fi
    echo $1
}

# Returns the full engine command line for an engine config, including
# any JS run scripts and tiering flags.
function get_engine_cmd() {
    engine=$1
    shift

    JS=$HERE/run.js
    
    case $engine in
        "sm-default")
            echo $(find_binary spidermonkey "$SM" sm-link) $JS
            ;;
        "sm-base")
            echo $(find_binary spidermonkey "$SM" sm-link) $SM_TIER_BASELINE $JS
            ;;
        "sm-opt")
            echo $(find_binary spidermonkey "$SM" sm-link) $SM_TIER_OPT $JS
            ;;
        "v8-default")
            echo $(find_binary d8 "$D8" d8-link) $JS --
            ;;
        "v8-liftoff")
            echo $(find_binary d8 "$D8" d8-link) $V8_TIER_LIFTOFF $JS --
            ;;
        "v8-turbofan")
            echo $(find_binary d8 "$D8" d8-link) $V8_TIER_TURBOFAN $JS --
            ;;
        "jsc")
            echo $(find_binary d8 "$JSC" jsc-link) $JS --
            ;;
        "jsc-int")
            echo $(find_binary d8 "$JSC" jsc-link) $JSC_TIER_INT $JS --
            ;;
        "jsc-bbq")
            echo $(find_binary javascriptcore "$JSC" jsc-link) $JSC_TIER_BBQ $JS --
            ;;
        "jsc-omg")
            echo $(find_binary javascriptcore "$JSC" jsc-link) $JS --
            ;;
        "wizeng")
            echo $(find_binary wizeng "$WIZENG" wizeng-link) $WIZENG_FAST
            ;;
        "wizeng-jit")
            echo $(find_binary wizeng "$WIZENG" wizeng-link) $WIZENG_TIER_JIT
            ;;
        "wasm3")
            echo $(find_binary wasm3 "$WASM3" wasm3-link)
            ;;
        "iwasm")
            echo $(find_binary iwasm "$IWASM" iwasm-link)
            ;;
        *)
            echo "unknown-engine"
            return 1
            ;;
    esac
    return 0;
}

if [ $ENGINE = list ]; then
    # TODO
    echo engine list not yet implemented
else
    get_engine_cmd $ENGINE
    exit 0
fi
