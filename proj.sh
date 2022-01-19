#!/bin/bash

# $1 should be the address of the file
file=$1
c=0
for item in `less $file|awk '{print $11}'`; do
	if [ $item = *'shahroodut.ac.ir'* ]
	then
		c=$((c+1))
	fi
done