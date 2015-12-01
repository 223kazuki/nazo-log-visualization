#!/bin/bash

input=$1
output=${1%%.*}

cat template.yml | sed -e 's|%%%input%%%|'$input'|g' -e 's|%%%output%%%|'$output'|g' > $output.tmp.yml
embulk guess $output.tmp.yml -o $output.yml
rm $output.tmp.yml