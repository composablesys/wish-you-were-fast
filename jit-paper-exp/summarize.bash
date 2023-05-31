#!/bin/bash

. ./common.bash

METRIC=${METRIC:="main:time_us"}

if [ $# -lt 1 ]; then
    printf "Usage: ./summarize "
    for e in $EXPERIMENTS; do
	printf "%s|" $e
    done
    printf "\n"
    exit 1
fi

function summarize() {
    # print first line
    SUITE=$1
    shift
    if [ "$ITEMS" = 0 ]; then
        print_suite $SUITE
        # print column headers
        print_list $@
    fi

    # print results from data files
    BENCHMARKS=$(cat $WYWF/wasm/suites/$SUITE/${SUBSET}.txt)
    for b in $BENCHMARKS; do
        if [ "$BASELINE" != "" ]; then
            basefile=$DATA_DIR/${EXPERIMENT}/${SUITE}.${b}.${BASELINE}.txt
            local baseline=$(summarize_file $basefile "$METRIC" "")
        fi
        printf "%s\t" $b
        for config in $@; do
            DATA_FILE=$DATA_DIR/${EXPERIMENT}/${SUITE}.${b}.${config}.txt
            printf "%s\t" $(summarize_file $DATA_FILE "$METRIC" $baseline)
        done
        
        printf "\n"
    done
}

function summarize_setup_speed() {
    SUITE=$1
    shift
    if [ "$ITEMS" = 0 ]; then
        print_suite $SUITE
        # print column headers
        print_list $@
    fi

    # print results from data files
    BENCHMARKS=$(cat $WYWF/wasm/suites/$SUITE/${SUBSET}.txt)
    for b in $BENCHMARKS; do
        if [ "$BASELINE" != "" ]; then
            basefile=$DATA_DIR/${EXPERIMENT}/${SUITE}.${b}.${BASELINE}.txt
            local baseline=$(summarize_file $basefile "$METRIC" "")
        fi
        printf "%s\t" $b
        for config in $@; do
            wasmfile=$WYWF/wasm/suites/$suite/$b.wasm
	    local code_bytes=$(compute_code_bytes $wasmfile)
	    local startup_time=$(summarize_file $DATA_DIR/startup/startup.nop-wasi.${config}.txt "");
	    local m_time=$(summarize_file $DATA_DIR/execution/${SUITE}.${b}.${config}.txt "" "")
	    local m0_time=$(summarize_file $DATA_DIR/execution/${SUITE}0.${b}.${config}.txt "" "")
#            printf "bytes=%s,startup=%s,m0=%s,m=%s\t" $code_bytes $startup_time $m0_time $m_time
	    local setup_speed=$(float_div $code_bytes $(float_sub $m0_time $startup_time))
            printf "%s\t" $(float_div $setup_speed "1000000")
        done
        
        printf "\n"
    done
}

function compute_adj_exec_time() {
    suite=$1
    b=$2
    config=$3
    
    local m0_time=$(summarize_file $DATA_DIR/execution/${SUITE}0.${b}.${config}.txt "" "");
    local m_time=$(summarize_file $DATA_DIR/execution/${SUITE}.${b}.${config}.txt "" "")
    echo $(float_sub $m_time $m0_time)
}

# adjusted_time(m, config) = T(m, config) - T(m_0, config)
# adjusted_speedup(m, config, baseline) =  adjusted_time(baseline, config) / adjusted_time(m, config)
function summarize_adj_speedup() {
    SUITE=$1
    shift
    if [ "$ITEMS" = 0 ]; then
        print_suite $SUITE
        # print column headers
        print_list $@
    fi

    # print results from data files
    BENCHMARKS=$(cat $WYWF/wasm/suites/$SUITE/${SUBSET}.txt)
    for b in $BENCHMARKS; do
        printf "%s\t" $b
        if [ "$BASELINE" != "" ]; then
            baseline=$(compute_adj_exec_time $SUITE $b $BASELINE)
	else
	    baseline=1
        fi
        for config in $@; do
	    local adj_time=$(compute_adj_exec_time $SUITE $b $config)
            printf "%s\t" $(float_div $baseline $adj_time)
        done
        
        printf "\n"
    done
}

EXPERIMENT=$1
case $1 in
    "speedup")
	CONFIGS=${CONFIGS:=$SPEEDUP_CONFIGS}
        ;;
    "tagging")
	CONFIGS=${CONFIGS:=$TAGGING_CONFIGS}
        ;;
    "baseline")
	CONFIGS=${CONFIGS:=$BASELINE_CONFIGS}
	METRIC=""
        ;;
    "execution")
	CONFIGS=${CONFIGS:=$EXECUTION_CONFIGS}
	METRIC=""
        ;;
    "startup")
	CONFIGS=${CONFIGS:=$EXECUTION_CONFIGS}
	METRIC=""
	SUITES=startup
        ;;
    "translation")
	CONFIGS=${CONFIGS:=$TRANSLATION_CONFIGS}
	METRIC="compile_speed"
        ;;
    "sq-space")
        CONFIGS=${CONFIGS:=$EXECUTION_CONFIGS}
	echo "Setup speed"
	if [ "$ITEMS" != 0 ]; then
	    print_list $CONFIGS
	fi
	for suite in $SUITES; do
	    summarize_setup_speed $suite $CONFIGS
	done

	echo "Adjusted speedup"
	if [ "$ITEMS" != 0 ]; then
	    print_list $CONFIGS
	fi
	for suite in $SUITES; do
	    summarize_adj_speedup $suite $CONFIGS
	done
	exit 0
	;;
    *)
	echo "Unknown experiment: $EXPERIMENT"
	exit 1
        ;;
esac

if [ "$ITEMS" != 0 ]; then
   print_list $CONFIGS
fi

for suite in $SUITES; do
    summarize $suite $CONFIGS
done
