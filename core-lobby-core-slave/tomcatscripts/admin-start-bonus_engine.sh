#!/bin/bash

#ssh gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/apache-tomcat-9.0.11/bin/startup.sh

#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.138 sh /opt/platform_services/start-platform_services.sh
#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.138 sh /opt/platform_services/run.sh > /dev/null &
#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.123 sh /opt/bonus_engine/run.sh &

if [ "$1" = BizOps ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.123 sh /opt/bonus_engine/run.sh &
elif [ "$1" = QA ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.105 sh /opt/bonus_engine/run.sh &
fi




#sleep 5

#exit


#sh /opt/platform_services/run.sh
#sh /opt/platform_services/start-platform_services.sh
