#!/bin/sh

for dir in "$@"
do
  mv "$dir" /defconf"$dir"
  mkdir "$dir"
done
