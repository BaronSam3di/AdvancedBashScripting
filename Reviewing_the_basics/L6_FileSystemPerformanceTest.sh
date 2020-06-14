#!/bin/bash
#
# This script can be used as a performance test to check how a file system behaves when you write many files
# USAGE: ./L6_FileSystemPerfromanceTest.sh <number_of_files> <location_to_write_to>

# make an input file
dd if=/dev/zero of=/inputfile bs=1024 count=10

cd /$2

for ((counter=$1; counter<$1; counter++ )); do
    cp /inputfile $counter.something
done
exit 0

