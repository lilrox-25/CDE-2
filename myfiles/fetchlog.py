import boto3
from datetime import datetime, timedelta

# Initialize AWS service clients with default credential provider chain
logs_client = boto3.client('logs', region_name='ap-south-1')

# Calculate the start time (2 minutes ago)
start_time = (datetime.utcnow() - timedelta(minutes=2)).strftime('%Y-%m-%dT%H:%M:%SZ')

# Get the current time
end_time = datetime.utcnow().strftime('%Y-%m-%dT%H:%M:%SZ')

# Specify the log group name
log_group_name = "/ecs/carromlobby"

# Call the filter-log-events API
response = logs_client.filter_log_events(
    logGroupName=log_group_name,
    startTime=start_time,
    endTime=end_time
)

# Print the log events
for event in response['events']:
    print(event)
