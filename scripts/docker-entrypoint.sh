#!/bin/sh

for dir in /defconf/dir.list
do
  if [ -z "$(ls -A "$dir"" ]
  then
    cp -r /defconf"$dir"/* "$dir"/
  fi
done
exec "$@"
