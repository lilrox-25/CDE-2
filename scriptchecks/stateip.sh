#!/bin/bash

#count= less statefile | grep "public_ip" | cut -f2 -d ":" | cut -f1 | tr -d '"' | tr -d ',' | tr -d ' ' | wc -l
#echo $count
a=1
#for (( c=1; c<=$count; c++ ))
while [ $a -le 4 ];
do 
   ip= less statefile | grep "public_ip" | cut -f2 -d ":" | cut -f1 | sed -n "$a"p | tr -d '"' | tr -d ',' | tr -d ' '
   fip=$ip | grep -v '^$'
   sed -i "s/ipvalue/$fip/g" addhost.sh
   #bash run_as_sudo.exp
   #echo " added $ip"
   #sed -i "s/$ip/ins_IP/g" addhost.sh
   a=`expr $a + 1`
done
