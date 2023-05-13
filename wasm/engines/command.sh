#!/bin/bash

# don't bother reading symlinks for this directory
HERE=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

if [ "$#" != 1 ]; then
    echo "Print the appropriate command and arguments for the given engine."
    echo "Usage: command.sh <engine>|list|gen"
    exit 1
fi

ARG=$1
shift

# flags that select various tiers in engines
V8_TIER_LIFTOFF="--liftoff-only"
V8_TIER_TURBOFAN="--noliftoff"
JSC_TIER_INT="--useOMGJIT=false --useBBQJIT=false"
JSC_TIER_OMG="--useWasmLLInt=false --useOMGJIT=false --useBBQJIT=true --wasmBBQUsesAir=false --webAssemblyBBQB3OptimizationLevel=2"
JSC_TIER_BBQ="--useWasmLLInt=false --useOMGJIT=false --useBBQJIT=true"
SM_TIER_BASELINE="--wasm-compiler=baseline"
SM_TIER_OPT="--wasm-compiler=optimizing"
IWASM_INT="--interp"
IWASM_FAST_JIT="--fast-jit"
WIZENG_TIER_JIT="-mode=jit"
WASMER_SINGLE_PASS="--singlepass"

# Potential flags of interest
# v8: --lazy-compile-dispatcher-max-threads
# v8: --single-threaded
# v8: --wasm-lazy-compilation

# Returns the engine binary for d8, sm, etc.
function find_binary() {
    if [ "$1" != "" ]; then
        echo $1
        return 0
    fi
    LINK=$(readlink $HERE/"$2")
    if [ -x "$LINK" ]; then
        echo $LINK
        return 0
    fi
    echo $3
}

# list of all the engines
ENGINES="sm-default sm-base sm-opt v8-default v8-liftoff v8-turbofan jsc-default jsc-int jsc-bbq jsc-omg wizeng wizeng-jit wasm3 iwasm-int iwasm-fjit wasmtime wazero wasmer wasmer-base wavm"
# Returns the full engine command line for an engine config, including
# any JS run scripts and tiering flags.
function get_engine_cmd() {
    engine=$1
    shift

    JS=$HERE/run.js
    
    case $engine in
        "sm-default")
            echo $(find_binary "$SM" sm-link spidermonkey) $JS
            ;;
        "sm-base")
            echo $(find_binary "$SM" sm-link spidermonkey) $SM_TIER_BASELINE $JS
            ;;
        "sm-opt")
            echo $(find_binary "$SM" sm-link spidermonkey ) $SM_TIER_OT $JS
            ;;
        "v8-default")
            echo $(find_binary "$D8" d8-link d8) $JS --
            ;;
        "v8-liftoff")
            echo $(find_binary "$D8" d8-link d8) $V8_TIER_LIFTOFF $JS --
            ;;
        "v8-turbofan")
            echo $(find_binary "$D8" d8-link d8) $V8_TIER_TURBOFAN $JS --
            ;;
        "jsc-default")
            echo $(find_binary "$JSC" jsc-link javascriptcore) $JS --
            ;;
        "jsc-int")
            echo $(find_binary "$JSC" jsc-link javascriptcore) $JSC_TIER_INT $JS --
            ;;
        "jsc-bbq")
            echo $(find_binary "$JSC" jsc-link javascriptcore) $JSC_TIER_BBQ $JS --
            ;;
        "jsc-omg")
            echo $(find_binary "$JSC" jsc-link javascriptcore) $JS --
            ;;
        "wizeng")
            echo $(find_binary "$WIZENG" wizeng-link wizeng) $WIZENG_FAST
            ;;
        "wizeng-jit")
            echo $(find_binary "$WIZENG" wizeng-link wizeng) $WIZENG_TIER_JIT
            ;;
        "wasm3")
            echo $(find_binary "$WASM3" wasm3-link wasm3)
            ;;
        "wasmtime")
            echo $(find_binary "$WASMTIME" wasmtime-link wasmtime)
            ;;
        "iwasm-int")
            echo $(find_binary "$IWASM" iwasm-link iwasm) $IWASM_INT
            ;;
        "iwasm-fjit")
            echo $(find_binary "$IWASM" iwasm-link iwasm) $IWASM_FAST_JIT
            ;;
        "wazero")
            echo $(find_binary "$WAZERO" wazero-link wazero) run
            ;;
        "wasmer")
            echo $(find_binary "$WASMER" wasmer-link wasmer) run
            ;;
        "wasmer-base")
            echo $(find_binary "$WASMER" wasmer-link wasmer) run --singlepass
            ;;
        "wavm")
            echo $(find_binary "$WAVM" wavm-link wavm) run
            ;;
        *)
            echo "unknown-engine"
            return 1
            ;;
    esac
    return 0;
}

case $ARG in
    "list")
        echo "Available engine commands:"
        for e in $ENGINES; do
            echo "  $e"
        done
        ;;
    "gen")
        for e in $ENGINES; do
            echo "#!/bin/bash" > $e
            echo 'HERE=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)' >> $e
            echo "exec \$(\$HERE/command.sh $e) \"\$@\"" >> $e
            chmod 755 $e
        done
        ;;
    *)
        get_engine_cmd $ARG
        ;;
esac
