#!/bin/bash

for f in *.fastq.gz
do
    reads=$(( $(zcat "$f" | wc -l) / 4 ))
    echo "$f: $reads reads"
done
