#!/bin/bash

cd /home/devops/backups
count=$(ls -1 | wc -l)
echo "$count"
if [ "$count" -ge 3 ]; then
  file=$(ls | sed -n 1p)
  rm -rf "$file"
fi
