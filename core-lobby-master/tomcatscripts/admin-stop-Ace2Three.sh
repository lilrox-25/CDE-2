#!/bin/bash

#ssh gameadmin@10.0.21.128 sh /opt/ace2three/newgameserver/apache-tomcat-9.0.11/bin/startup.sh

#sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.143 sh /opt/tomcat/bin/shutdown.sh
if [ "$1" = BizOps ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.122 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = QA ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.124 sh /opt/tomcat/bin/shutdown.sh
elif [ "$1" = QA2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.125 sh /opt/tomcat/bin/shutdown.sh
fi
