#!/bin/bash

#ssh gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/apache-tomcat-9.0.11/bin/startup.sh

#sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/a23service/bin/startup.sh
if [ $1 = dev2 ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/
elif [ $1 = dev1 ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.20.88 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/starta23service.sh
elif [ $1 = QA ]
then
#sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.90 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/starta23analytics.sh
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.90 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/startup.sh
elif [ $1 = qa2 ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.109 sh /opt/ace2three/newgameserver/Ace2ThreeService/bin/starta23service.sh
elif [ $1 = rnd ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@172.42.3.90 sh /opt/ace2three/apache-tomcat-8.0.26/bin/startup.sh
fi
