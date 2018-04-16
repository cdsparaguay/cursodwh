#!/bin/bash
for filename in $1/*.csv; do
	head -n 1 "$filename" >> $1/headers.txt
done
