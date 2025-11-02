#!/bin/bash

file="$1"
nlines="$2"

if [[ -z $nlines ]]; then
  nlines=3
fi

if [[ $(cat $file | wc -l) -le $((2*$nlines)) ]]; then
	cat $file
else
	echo "This file is longer than $(($nlines*2)) lines"
	head -n "$nlines" "$file"
	echo ...
	tail -n "$nlines" "$file" 
fi





