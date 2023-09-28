#!/bin/sh

for dir in "$@"
do
  mv "$dir" /defconf"$dir"
  mkdir "$dir"
  echo "$dir" >> /defconf/dir.list
done
