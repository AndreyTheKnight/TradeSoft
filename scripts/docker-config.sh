#!/bin/sh

for dir in "$@"
do
  mkdir -p /config"$dir"
  mv "$dir"/* /config"$dir"/
  echo "$dir" >> /config/dir.list
done
