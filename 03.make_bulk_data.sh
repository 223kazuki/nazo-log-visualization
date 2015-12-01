#!/bin/bash

index=nazo-log
type=${1%%.*}

while read line
do 
  hash=`echo $line | md5`
  echo \{\"index\":\{\"_index\":\"$index\",\"_type\":\"${type##*/}\",\"_id\":\"$hash\"\}\}
  echo $line | jq -c '.file="'$1'"'
done < $1
