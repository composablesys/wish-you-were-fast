#!/bin/bash

. ./common.bash

function run_speedup_experiment() {
    # print first line
    suite=$1
    print_suite $suite
    print_list $CONFIGS

    for b in $BENCHMARKS; do
        printf "%s\t" $b
        for config in $CONFIGS; do
            wasmfile=$WYWF/wasm/suites/$suite/$b.wasm
            CMD="./wizeng/wizeng-$config --metrics $wasmfile"
            datafile=$DATA_DIR/$EXPERIMENT/${suite}.${b}.${config}.txt
            run_command_multiple $datafile $CMD
            printf "%s\t" $(summarize_file $datafile main:time_us)
        done
        
        printf "\n"
    done
}

function run_tagging_experiment() {
    # print first line
    suite=$1
    print_suite $suite
    print_list $CONFIGS

    # run experiment
    for b in $BENCHMARKS; do
        printf "%s\t" $b
        for config in $CONFIGS; do
            wasmfile=$WYWF/wasm/suites/$suite/$b.wasm
            CMD="./wizeng/wizeng-$config --metrics -mode=jit $wasmfile"
            datafile=$DATA_DIR/$EXPERIMENT/${suite}.${b}.${config}.txt
            run_command_multiple $datafile $CMD
            printf "%s\t" $(summarize_file $datafile main:time_us)
        done
        
        printf "\n"
    done
}

function run_btime_experiment() {
    # print first line
    suite=$1
    print_suite $suite
    print_list $CONFIGS

    # run experiment using btime -l
    for b in $BENCHMARKS; do
        printf "%s\t" $b
        for config in $CONFIGS; do
            wasmfile=$WYWF/wasm/suites/$suite/$b.wasm
            CMD="./engines/$config $wasmfile"
            datafile=$DATA_DIR/$EXPERIMENT/${suite}.${b}.${config}.txt
#	    echo $CMD
	    btime $BTIME_OPTIONS -l $RUNS $CMD > $datafile
            printf "%s\t" $(summarize_file $datafile "")
        done
        
        printf "\n"
    done
}

function extract_time_per_byte() {
    tier=$1
    tmpfile=$2
    bytes=$(grep "$tier.in_bytes" $tmpfile | awk '{print $3}')
    us=$(grep "$tier.us" $tmpfile | awk '{print $3}')
    export time_per_byte=$(echo "scale=6; $us / $bytes" | bc)
}

function gather_translation() {
    datafile=$1
    config=$2
    wasmfile=$3
    tmpfile=$datafile.tmp

    time_per_byte="0"
    
    case $config in
	"wizeng-jit")
	    ENGINE_OPTIONS=--metrics engines/wizeng-jit $wasmfile > $tmpfile
	    time_per_byte=$(grep spc:time_per_byte $tmpfile | awk '{print $3}')
	    ;;
	"sm-base")
	    engines/sm-base $wasmfile > $tmpfile
	    extract_time_per_byte base $tmpfile
	    ;;
	"sm-opt")
	    engines/sm-opt $wasmfile > $tmpfile
	    extract_time_per_byte opt $tmpfile
	    ;;
	"v8-liftoff")
	    ENGINE_OPTIONS=--dump-counters engines/v8-liftoff $wasmfile > $tmpfile
	    extract_time_per_byte liftoff $tmpfile
	    ;;
	"v8-turbofan")
	    ENGINE_OPTIONS=--dump-counters engines/v8-turbofan $wasmfile > $tmpfile
	    extract_time_per_byte turbofan $tmpfile
	    ;;
	"wazero")
	    engines/wazero -t $wasmfile > $tmpfile
	    bytes=$(compute_code_bytes $wasmfile)
	    echo "compile in_bytes: $bytes bytes" >> $tmpfile
	    extract_time_per_byte compile $tmpfile
	    ;;
	"wasmer-base")
	    engines/$config $wasmfile > $tmpfile
	    bytes=$(compute_code_bytes $wasmfile)
	    echo "singlepass in_bytes: $bytes bytes" >> $tmpfile
	    extract_time_per_byte singlepass $tmpfile
	    ;;
	"wasmer")
	    engines/$config $wasmfile > $tmpfile
	    bytes=$(compute_code_bytes $wasmfile)
	    echo "cranelift in_bytes: $bytes bytes" >> $tmpfile
	    extract_time_per_byte cranelift $tmpfile
	    ;;
	"wasmnow")
	    engines/$config $wasmfile > $tmpfile
	    bytes=$(compute_code_bytes $wasmfile)
	    echo "compile in_bytes: $bytes bytes" >> $tmpfile
	    extract_time_per_byte compile $tmpfile
	    ;;
	*)
	    ;;
    esac

    cat $tmpfile >> $datafile
    echo "compile_speed : $time_per_byte us/byte" >> $datafile
    rm $tmpfile
}

function run_translation_experiment() {
    # print first line
    suite=$1
    print_suite $suite
    print_list $CONFIGS

    # run experiment using btime -l
    for b in $BENCHMARKS; do
        printf "%s\t" $b
        for config in $CONFIGS; do
            wasmfile=$WYWF/wasm/suites/$suite/$b.wasm
            datafile=$DATA_DIR/$EXPERIMENT/${suite}.${b}.${config}.txt
	    i=$RUNS
	    while [ $i -gt 0 ]; do
		gather_translation $datafile $config $wasmfile
		i=$(($i - 1))
	    done
            printf "%s\t" $(summarize_file $datafile "compile_speed")
        done
        
        printf "\n"
    done
}

function run_baseline_experiment() {
    # TODO: run experiment and gather internal statistics
    run_btime_experiment $1
}

function run_startup_experiment() {
    set_benchmarks startup
    run_btime_experiment startup
}

function run_execution_experiment() {
    run_btime_experiment $1
}

function set_benchmarks() {
    local suite=$1
    if [ "$EXPLICIT_BENCHMARKS" != "" ]; then
	BENCHMARKS="$EXPLICIT_BENCHMARKS"
    else
        BENCHMARKS=$(cat $WYWF/wasm/suites/$suite/${SUBSET}.txt)
    fi
}

EXPLICIT_BENCHMARKS=$BENCHMARKS
EXPERIMENT=$1
case $1 in
    "speedup")
	CONFIGS=${CONFIGS:=$SPEEDUP_CONFIGS}
	mkdir -p $DATA_DIR/$EXPERIMENT
	for suite in $SUITES; do
	    run_speedup_experiment $suite
	done
        ;;
    "tagging")
	CONFIGS=${CONFIGS:=$TAGGING_CONFIGS}
	mkdir -p $DATA_DIR/$EXPERIMENT
	for suite in $SUITES; do
	    set_benchmarks $suite
	    run_tagging_experiment $suite
	done
        ;;
    "baseline")
	CONFIGS=${CONFIGS:=$BASELINE_CONFIGS}
	mkdir -p $DATA_DIR/$EXPERIMENT
	for suite in $SUITES; do
	    set_benchmarks $suite
	    run_baseline_experiment $suite
	done
	;;
    "startup")
	CONFIGS=${CONFIGS:=$EXECUTION_CONFIGS}
	mkdir -p $DATA_DIR/$EXPERIMENT
	run_startup_experiment
        ;;
    "execution")
	CONFIGS=${CONFIGS:=$EXECUTION_CONFIGS}
	mkdir -p $DATA_DIR/$EXPERIMENT
	for suite in $SUITES; do
	    set_benchmarks $suite
	    run_execution_experiment $suite
	done
        ;;
    "translation")
	CONFIGS=${CONFIGS:=$BASELINE_CONFIGS}
	mkdir -p $DATA_DIR/$EXPERIMENT
	for suite in $SUITES; do
	    set_benchmarks $suite
	    run_translation_experiment $suite
	done
        ;;
    *)
	echo "Usage: run.bash <experiment>"
	exit 1
        ;;
esac
