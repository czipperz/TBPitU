#!/bin/bash

while read line; do
	if [[ "$line" =~ ^[a-zA-Z]+:.* ]]; then
		echo "$line" | sed -r "s/^([a-zA-Z]+):/**\1:**/"
	else
		echo "$line"
	fi
done
