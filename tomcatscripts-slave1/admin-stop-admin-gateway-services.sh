#!/bin/bash


if [ "$1" = BizOps ]; then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.154 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
if [ "$1" = LBF ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.158 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
if [ "$1" = Player-Account ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.155 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
if [ "$1" = Anti-Fraud ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.156 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
if [ "$1" = RnD ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.157 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
if [ "$1" = QA ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.103 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
if [ "$1" = QA2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.118 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
if [ "$1" = Dev ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.138 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
elif [ "$1" = Dev2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.107 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &

elif [ "$1" = Casual_Games ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.165 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
elif [ "$1" = SpareDev1 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.166 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
elif [ "$1" = SpareDev2 ]
then
sshpass -p webadmin ssh -o StrictHostKeyChecking=no webadmin@10.0.21.167 sh /opt/platform_services/admin-gateway-services/stop-admin-gateway-services.sh &
fi
