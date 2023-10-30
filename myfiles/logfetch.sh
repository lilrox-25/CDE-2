#!/bin/bash
# Get the log stream names and filter out expired ones
export AWS_PROFILE=dev
LOG_GROUP_NAME="/ecs/carromnode"

# Get the latest log stream name
latest_log_stream=$(aws logs describe-log-streams \
    --log-group-name "$LOG_GROUP_NAME" \
    --limit 1 \
    --descending
    #--order-by "LastEventTime" \
    --query "logStreams[0].logStreamName" \
    --output text)

# Check if a log stream is found
if [ -n "$latest_log_stream" ]; then
    echo "Latest log stream in $LOG_GROUP_NAME: $latest_log_stream"
    # Add additional commands to fetch logs or perform other actions with the log stream
else
    echo "No log streams found in $LOG_GROUP_NAME."
fi
