#!/bin/bash

file="$1"
nlines="$2"

head -n "$nlines" "$file"
echo ...
tail -n "$nlines" "$file"

