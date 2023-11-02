#!/bin/bash

i=0 ;
for p in /usr/bin/python*.* ; do
sudo update-alternatives --install /usr/bin/python python $p $((5 + i))
i=$((i+1))
done
