#!/bin/bash
echo "*******************************************************SERVICE STARTED********************************************************"
echo "***************************************************FETCHING LOGS, PLEASE WAIT*************************************************"

sleep 2m

service=servicename
LOG_GROUP=/ecs/servicename
LOG_STREAM=$(aws logs describe-log-streams --log-group-name $LOG_GROUP --max-items 1 --order-by LastEventTime --descending --query logStreams[0].logStreamName --output text --profile envi)

streamid=$( echo $LOG_STREAM | cut -d " " -f1 | sed "s/.*servicename\///")
echo $streamid


aws logs get-log-events --log-group-name "/ecs/servicename" --log-stream-name "ecs/servicename/$streamid" --start-time $(date -u -d "-10 minutes" "+%s%N"|cut -b1-13) --end-time $(date -u "+%s%N"|cut -b1-13) --output json --profile envi


