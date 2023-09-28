#!/bin/sh

for dir in "$@"
do
  mv "$dir" "$dir".orig
  mkdir "$dir"
done
