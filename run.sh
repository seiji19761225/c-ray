#!/bin/sh
# $Id: run.sh,v 1.1.1.1 2020/07/31 00:00:00 seiji Exp seiji $

for data in input/*.dat
do
    output=`basename $data .dat`.ppm
    time -p ./c-ray.exe -s 800x600 -r 256 -i $data -o $output
    md5sum $output
    echo ""
done

