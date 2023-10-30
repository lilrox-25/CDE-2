#!/bin/bash

#pid=`ps -ef|grep tomcat-9|grep -v 'grep'|cut -d" " -f2`| echo killing $pid | kill -9 $pid

#ps aux  |  grep -i tomcat-9.0.11 |  awk '{print $2}'  |  xargs  kill -9ckup

#sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/a23service/bin/shutdown.sh 
if [ $1 = dev2 ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/stopa23analytics.sh
elif [ $1 = dev1 ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.20.88 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/stopa23service.sh
elif [ $1 = QA ]
then
#sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.90 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/stopstopa23analytics.sh
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.90 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/shutdown.sh
elif [ $1 = qa2 ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.109 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/stopstopa23analytics.sh
elif [ $1 = rnd ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@172.42.3.90 sh /opt/ace2three/apache-tomcat-8.0.26/bin/shutdown.sh
fi
