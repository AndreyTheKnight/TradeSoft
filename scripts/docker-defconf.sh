#!/bin/sh

mkdir /defconf
for dir in "$@"
do
  mv "$dir" /defconf
  mkdir "$dir"
  echo "$dir" >> /defconf/dir.list
done
