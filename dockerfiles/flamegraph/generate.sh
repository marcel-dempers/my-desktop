#!/bin/bash

file=$1

./stackcollapse-perf.pl $file > folded 
./flamegraph.pl folded > /out/perf.svg
