#!/bin/bash

function compile() {
    file=$1
    bin=$2
    args=$3
    processed="strsplitted-$file"
    log="${bin}.log"
    ${CC0_INC}/strsplitter.bash $file >$processed
    echo "cc0 $args $processed -o $bin >$log"
    cc0 $args $processed -o $bin -g >$log
    rm -f $processed
}

compile lr-stdin2pmem.c0 lr-stdin2pmem.c0.bin ""
compile lr-frompmem.c0 lr-frompmem.c0.bin ""
