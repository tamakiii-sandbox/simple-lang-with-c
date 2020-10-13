#!/bin/bash

output=$(./lang "$1")
if [ "$output" != "$2" ]; then
  echo "$1: $2 expected, but got $output";
  exit 1
fi
echo "$1 => $output"
