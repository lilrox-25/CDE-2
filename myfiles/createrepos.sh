#!/bin/bash

repos=( "ems-cluster-inventory-service" "ems-cluster-web-lb-service" "ems-cluster-ems-service" "ems-cluster-bonus_acepoint_engine" "ems-cluster-lb-hazelcast-service" "ems-cluster-lb-rank-service" "ems-cluster-lb-hazelcast-admin" "ems-cluster-lb-master-serivce")

export AWS_PROFILE=qa

for repository in "${repos[@]}"
do 
  aws codecommit create-repository --repository-name "$repository"
done
