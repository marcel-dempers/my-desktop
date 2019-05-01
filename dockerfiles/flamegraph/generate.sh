#!/bin/bash

./stackcollapse-perf.pl /out/out.perf > folded
./flamegraph.pl folded > /out/perf.svg