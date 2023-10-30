#!/bin/bash

#ssh gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/apache-tomcat-9.0.11/bin/startup.sh

#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.164 sh /opt/a23-platform-services/stop-a23-platform-services.sh &


if [ "$1" = BizOps ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.20.85 sh /opt/a23-platform-services/stop-a23-platform-services.sh &
elif [ "$1" = LBF ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.164 sh /opt/a23-platform-services/stop-a23-platform-services.sh &
elif [ "$1" = QA ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.20.89 sh /opt/a23-platform-services/stop-a23-platform-services.sh &
elif [ "$1" = QA2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.119 sh /opt/a23-platform-services/stop-a23-platform-services.sh &
fi
#sh /opt/platform_services/run.sh
#sh /opt/platform_services/start-platform_services.sh
sleep 5

exit
