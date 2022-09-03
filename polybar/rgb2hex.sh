#!/bin/bash

printf "#"
for var in "$@"
do
	printf "%X" "$var";
done
printf "\n"
