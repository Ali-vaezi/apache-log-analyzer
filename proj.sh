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

echo 1- tedad bazdid haye shahroodut.ac.ir : $c

#-----------
echo --------'\n'2- 10 maximum ip address

for item in `less $file|awk '{print $1}'|sort|uniq -c|sort -n -r|head -n 10`; do
	echo $item
done

#-----------
echo --------'\n'3- maximum use of browsers

for item in `less $file|awk '{print $12}'|sort|uniq -c|sort -n -r|head -n 1`; do
	echo $item
done

#-----------
echo --------'\n'4- maximum use of urls

for item in `less $file|awk '{print $11}'|sort|uniq -c|sort -n -r|head -n 2`; do
	echo $item
done

#-----------
echo --------'\n'5- maximum use of operating system

for item in `less $file|awk '{print $14}'|sort|uniq -c|sort -n -r|head -n 1`; do
	echo $item
done
