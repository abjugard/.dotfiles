#!/bin/bash

first="$1"
second="$2"

mv "$first" "swaptempfile"
mv "$second" "$first"
mv "swaptempfile" "$second"

echo "$first swapped with $second"
