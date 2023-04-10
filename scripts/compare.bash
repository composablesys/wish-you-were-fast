#!/bin/bash

HERE=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

BENCHMARKS="BENCHMARK bicg mvt atax gemver trmm doitgen syrk correlation covariance symm syr2k gemm gramschmidt 2mm nussinov adi 3mm fdtd-2d jacobi-2d seidel-2d heat-3d cholesky ludcmp lu"

ENGINES=${ENGINES:="v8-turbofan v8-liftoff wizeng-jit"}

COLUMN=1
for b in $BENCHMARKS; do
    f=~/pbench/$b.wasm

    printf "%s " $b
    
    if [ $COLUMN = 1 ]; then
        printf "\twizeng-jit"
    else
        METRIC=$($HERE/engines/wizeng -mode=jit --metrics=main:time_us $f | grep main:time | awk '{print $3}')
        printf "\t%s" $(python <<< "print('%.6f' % ($METRIC/1000000.0))")
    fi
    
    if [ $COLUMN = 1 ]; then
        printf "\twizeng-jit2"
    else
        METRIC=$(/tmp/wizeng-untagged -mode=jit --metrics=main:time_us $f | grep main:time | awk '{print $3}')
        printf "\t%s" $(python <<< "print('%.6f' % ($METRIC/1000000.0))")
    fi
    
    if [ $COLUMN = 1 ]; then
        printf "\tv8-liftoff"
    else
        printf "\t%s" $($HERE/engines/v8-liftoff $f | grep main:time | awk '{print $3}')
    fi

    if [ $COLUMN = 1 ]; then
        printf "\tv8-turbofan"
    else
        printf "\t%s" $($HERE/engines/v8-turbofan $f | grep main:time | awk '{print $3}')
    fi

    if [ $COLUMN = 1 ]; then
        printf "\twizeng"
    else
        METRIC=$($HERE/engines/wizeng --metrics=main:time_us $f | grep main:time | awk '{print $3}')
        printf "\t%s" $(python <<< "print('%.6f' % ($METRIC/1000000.0))")
    fi
    
    printf "\n"
        
    COLUMN=0
done

exit 0
for b in $@; do
    echo ---- $b --------
    for e in $ENGINES; do
        printf "  %-12s: " $e
        btime 5 $HERE/engines/$e $b
    done
done
