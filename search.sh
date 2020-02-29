#!/bin/bash

term="${1}"
dir="${2}"

echo "search ${term} in ${dir}"

output=$(find ${dir} -type f | awk '{printf("grep -n -H '${term}' %s\n", $1);}')

echo "${output}" >search.tmp
bash search.tmp
rm -rf search.tmp
