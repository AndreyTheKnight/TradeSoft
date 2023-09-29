#!/bin/sh

for dir in $(cat /config/dir.list)
do
  if [ -z "$(ls -A "$dir")" ]
  then
    mv /config"$dir"/* "$dir"/
  fi
done
exec "$@"
