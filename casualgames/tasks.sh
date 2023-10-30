#!/bin/bash

ECS_CLUSTER="clustername"
ECS_SERVICE="servicename"

#export AWS_PROFILE="env"
ecs_service_info=$(aws ecs describe-services --cluster $ECS_CLUSTER --services $ECS_SERVICE --profile envi)
#ecs_service_info=$(aws ecs describe-services --cluster $ECS_CLUSTER --services $ECS_SERVICE) 

running_tasks=$(echo $ecs_service_info | jq -r '.services[0].desiredCount')

echo "Tasks in $ECS_SERVICE: $running_tasks"
echo $running_tasks
echo "CURRENT NUMBER OF TASKS : $running_tasks"
