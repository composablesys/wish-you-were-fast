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

# Web engines have particularly complicated flags.
V8_TIER_LIFTOFF="--liftoff-only"
V8_TIER_TURBOFAN="--noliftoff"
JSC_TIER_INT="--useOMGJIT=false --useBBQJIT=false"
JSC_TIER_OMG="--useWasmLLInt=false --useOMGJIT=false --useBBQJIT=true --wasmBBQUsesAir=false --webAssemblyBBQB3OptimizationLevel=2"
JSC_TIER_BBQ="--useWasmLLInt=false --useOMGJIT=false --useBBQJIT=true"
SM_TIER_BASELINE="--wasm-compiler=baseline"
SM_TIER_OPT="--wasm-compiler=optimizing"

# Potential V8 flags of interest
# v8: --lazy-compile-dispatcher-max-threads
# v8: --single-threaded
# v8: --wasm-lazy-compilation

function print_command() {
    env=$1
    shift
    link=$1
    shift
    path=$1
    shift

    if [ "$env" != "" ]; then
        printf "%s" $env
    else
	link=$(readlink $HERE/"$link")
	if [ -x "$link" ]; then
            printf "%s" $link
	else
            printf "%s" $(which $path)
	fi
    fi

    printf " %s" "$ENGINE_OPTIONS"
    printf " %s" "$@"
}

# list of all the engines
ENGINES="sm sm-base sm-opt v8 v8-liftoff v8-turbofan jsc jsc-int jsc-bbq jsc-omg wizeng wizeng-int wizeng-jit wizeng-dyn wasm3 iwasm-int iwasm-fjit wasmtime wazero wasmer wasmer-base wavm"

# Returns the full engine command line for an engine config, including
# any JS run scripts and tiering flags.
function get_engine_cmd() {
    engine=$1
    shift

    JS=$HERE/run.js
    
    case $engine in
        "sm")
            print_command "$SM" sm-link spidermonkey $JS
            ;;
        "sm-base")
            print_command "$SM" sm-link spidermonkey $SM_TIER_BASELINE $JS
            ;;
        "sm-opt")
            print_command "$SM" sm-link spidermonkey  $SM_TIER_OT $JS
            ;;
        "v8")
            print_command "$D8" d8-link d8 $JS --
            ;;
        "v8-liftoff")
            print_command "$D8" d8-link d8 $V8_TIER_LIFTOFF $JS --
            ;;
        "v8-turbofan")
            print_command "$D8" d8-link d8 $V8_TIER_TURBOFAN $JS --
            ;;
        "jsc")
            print_command "$JSC" jsc-link javascriptcore $JS --
            ;;
        "jsc-int")
            print_command "$JSC" jsc-link javascriptcore $JSC_TIER_INT $JS --
            ;;
        "jsc-bbq")
            print_command "$JSC" jsc-link javascriptcore $JSC_TIER_BBQ $JS --
            ;;
        "jsc-omg")
            print_command "$JSC" jsc-link javascriptcore $JS --
            ;;
        "wizeng")
            print_command "$WIZENG" wizeng-link wizeng
            ;;
        "wizeng-int")
            print_command "$WIZENG" wizeng-link wizeng -mode=int
            ;;
        "wizeng-jit")
            print_command "$WIZENG" wizeng-link wizeng -mode=jit
            ;;
        "wizeng-dyn")
            print_command "$WIZENG" wizeng-link wizeng -mode=dyn
            ;;
        "wasm3")
            print_command "$WASM3" wasm3-link wasm3
            ;;
        "wasmtime")
            print_command "$WASMTIME" wasmtime-link wasmtime
            ;;
        "iwasm-int")
            print_command "$IWASM" iwasm-link iwasm --interp
            ;;
        "iwasm-fjit")
            print_command "$IWASM" iwasm-link iwasm --fast-jit
            ;;
        "wazero")
            print_command "$WAZERO" wazero-link wazero run
            ;;
        "wasmer")
            print_command "$WASMER" wasmer-link wasmer run
            ;;
        "wasmer-base")
            print_command "$WASMER" wasmer-link wasmer run --singlepass
            ;;
        "wavm")
            print_command "$WAVM" wavm-link wavm run
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
