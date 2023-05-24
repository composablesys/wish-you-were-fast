#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $DIR/common.bash

if [ "$ENGINES" = "" ]; then
    echo "Usage: ENGINES=\"<list>\" compare.bash <benchmarks>"
    exit 2
fi

for b in $@; do
    echo ${GREEN}${b}:
    for engine in $ENGINES; do
	run $engine $b
    done
done
