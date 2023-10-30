#!/bin/bash

#ssh gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/apache-tomcat-9.0.11/bin/startup.sh

#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.138 sh /opt/platform_services/start-platform_services.sh
#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.138 sh /opt/platform_services/run.sh > /dev/null &
#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.138 sh /opt/platform_services/run.sh &
if [ "$1" = BizOps ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.154 sh /opt/platform_services/run.sh &
elif [ "$1" = LBF ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.138 sh /opt/platform_services/run.sh &
elif [ "$1" = Rummy ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.154 sh /opt/platform_services/run.sh &
elif [ "$1" = Player-Account ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.155 sh /opt/platform_services/run.sh &
elif [ "$1" = Anti-Fraud ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.156 sh /opt/platform_services/run.sh &
elif [ "$1" = RnD ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.157 sh /opt/platform_services/run.sh &
elif [ "$1" = Poker ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.158 sh /opt/platform_services/run.sh &
elif [ "$1" = QA ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.103 sh /opt/platform_services/run.sh &
elif [ "$1" = QA2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.118 sh /opt/platform_services/run.sh &
elif [ "$1" = newdev1 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.165 sh /opt/platform_services/run.sh &
elif [ "$1" = newdev2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.166 sh /opt/platform_services/run.sh &
elif [ "$1" = newdev3 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.167 sh /opt/platform_services/run.sh &
fi
sleep 5

exit


#sh /opt/platform_services/run.sh
#sh /opt/platform_services/start-platform_services.sh
