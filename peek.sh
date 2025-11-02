#!/bin/bash

file="$1"
nlines="$2"

if [[ -z $nlines ]]; then
  nlines=3
fi

head -n "$nlines" "$file"
echo ...
tail -n "$nlines" "$file"

