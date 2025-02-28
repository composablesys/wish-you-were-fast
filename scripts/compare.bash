#!/bin/bash

if [ "$#" -lt 3 ]; then
    echo "Usage: [RUNS=<n>] compare.bash <command A> <command B> <arguments>"
    exit 1
fi

CMD_A=$1
shift
CMD_B=$1
shift

RUNS=${RUNS:=10}

LABEL_A=${LABEL_A:="A"}
LABEL_B=${LABEL_B:="B"}

printf "%-20s:\t" "$LABEL_A"
btime -i $RUNS $CMD_A $@

printf "%-20s:\t" "$LABEL_B"
btime -i $RUNS $CMD_B $@
