#!/bin/bash

#ssh gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/apache-tomcat-9.0.71/bin/startup.sh 
#env=$1
if [ $1 = dev2 ]
then 
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/Ace23Analytics/bin/starta23analytics.sh

elif [ $1 = dev1 ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.20.88 sh /opt/ace2three/newgameserver/Ace23Analytics/bin/starta23analytics.sh
elif [ $1 = QA ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.90 sh /opt/ace2three/newgameserver/Ace23Analytics/bin/starta23analytics.sh
elif [ $1 = qa2 ]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.109 sh /opt/ace2three/newgameserver/Ace23Analytics/bin/starta23analytics.sh
elif [ $1 = rnd && $2 = Ace23Analytics1]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@172.42.2.80 sh /opt/ace2three/newgameserver/Ace23Analytics/bin/starta23analytics.sh
elif [ $1 = rnd && $2 = Ace23Analytics2]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@172.42.2.81 sh /opt/ace2three/newgameserver/Ace23Analytics/bin/starta23analytics.sh
elif [ $1 = rnd && $2 = Ace23Analytics3]
then
sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@172.42.3.80 sh /opt/ace2three/newgameserver/Ace23Analytics/bin/starta23analytics.sh
fi



#sshpass -p gameadmin ssh -o StrictHostKeyChecking=no gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/a23analytics/bin/starta23analytics.sh
