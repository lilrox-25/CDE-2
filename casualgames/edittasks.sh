#!/bin/bash
cd /home/devops/casualgames
if [ "$1" = "dev" ]; then
  sed -i "s/clustername/$2/g" tasks.sh
  sed -i "s/servicename/$3/g" tasks.sh
  sed -i "s/envi/dev/g" tasks.sh
  sh tasks.sh
  sed -i "s/$2/clustername/g" tasks.sh
  sed -i "s/$3/servicename/g" tasks.sh
  sed -i "s/$1/envi/g" tasks.sh
elif [ "$1" = "qa" ]; then
  sed -i "s/clustername/$2/g" tasks.sh
  sed -i "s/servicename/$3/g" tasks.sh
  sed -i "s/envi/$1/g" tasks.sh
  sh tasks.sh
  sed -i "s/$2/clustername/g" tasks.sh
  sed -i "s/$3/servicename/g" tasks.sh
  sed -i "s/$1/envi/g" tasks.sh
fi
