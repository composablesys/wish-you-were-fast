#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

. $DIR/common.bash

#CONFIGS=('-mode=lazy' "-mode=jit" "-mode=dyn" "-mode=dyn --monitors=branches")
if [ "$CONFIGS" = "" ]; then
    echo "Usage: CONFIGS=\"<list>\" compare-wizeng.bash <benchmarks>"
    exit 2
fi

OLD_OPTIONS=$ENGINE_OPTIONS

for b in $@; do
    echo ${GREEN}${b}:
    for config in ${CONFIGS[@]}; do
	export ENGINE_OPTIONS="$config $OLD_OPTIONS"
	run wizeng $b
    done
done
