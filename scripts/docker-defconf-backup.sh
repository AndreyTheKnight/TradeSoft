#!/bin/sh

for dir in "$@"
do
  mkdir -p /defconf"$dir"
  mv "$dir"/* /defconf"$dir"/
  echo "$dir" >> /defconf/dir.list
done
