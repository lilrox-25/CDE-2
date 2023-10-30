#!/bin/bash

#ssh gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/apache-tomcat-9.0.11/bin/startup.sh

#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.123 sh /opt/tomcat/bin/shutdown.sh 
if [ "$1" = BizOps ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.101 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = LBF ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.123 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = Rummy ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.159 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = Player-Account ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.160 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = Anti-Fraud ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.161 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = RnD ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.162 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = Poker ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.163 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = QA ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.105 sh /opt/tomcat/bin/shutdown.sh 
elif [ "$1" = QA2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.120 sh /opt/tomcat/bin/shutdown.sh 
elif [ "$1" = newdev1 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.168 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = newdev2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.169 sh /opt/tomcat/bin/shutdown.sh &
elif [ "$1" = newdev3 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.170 sh /opt/tomcat/bin/shutdown.sh &
fi
