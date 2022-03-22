#!/bin/bash

rm -f perf.data out.perf-folded perf.svg
perf record -F 99 -a -g -- sleep 10
perf script | ./stackcollapse-perf.pl > out.perf-folded
./flamegraph.pl out.perf-folded > perf.svg

