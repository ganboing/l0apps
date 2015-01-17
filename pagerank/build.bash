#!/bin/bash

function compile() {
    file=$1
    args=$2
    bin=$3
    processed="strsplitted-$file"
    log="${bin}.log"
    ./libi0/strsplitter.bash $file >$processed
    echo "cc0 $args $processed -o $bin >$log"
    cc0 $args $processed -o $bin -g >$log
    rm -f $processed
}

compile pagerank-stdin2pmem.c0 "" pagerank-stdin2pmem.c0.bin
compile pagerank-frompmem.c0 "" pagerank-frompmem.c0.bin
compile pagerank-frompmem.c0 "-DSIMULATE_GRAPHX" pagerank-frompmem-sim-graphx.c0.bin
