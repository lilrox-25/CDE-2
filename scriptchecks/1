#!/bin/bash

# Path to the Terraform state file
STATE_FILE="/home/devops/workspace/ec2-creation/$1/terraform.tfstate"

# Extract instance names and IPs
PUBLIC_IPS=($(jq -r '.resources[] | select(.type == "aws_instance") | .instances[].attributes.public_ip' "$STATE_FILE"))
INSTANCE_NAMES=($(jq -r '.resources[] | select(.type == "aws_instance") | .instances[].attributes.tags.Name' "$STATE_FILE"))

# Check if PUBLIC_IPS is empty
if [[ ${#PUBLIC_IPS[@]} -eq 0 ]]; then
  echo "No instances found."
else
  # Print the instance names and IPs
  echo "Instance Names and IPs:"
  for ((i=0; i<${#PUBLIC_IPS[@]}; i++)); do
    ip="${PUBLIC_IPS[i]}"
    server="${INSTANCE_NAMES[i]}"
    echo "$server - $ip"
    sed -i "s/ipvalue/$ip/g" addhost.sh
    sed -i "s/servername/$server/g" addhost.sh
    ./run_as_sudo.exp
    echo "added $ip"
    sed -i "s/$ip/ipvalue/g" addhost.sh
    sed -i "s/$server/servername/g" addhost.sh
  done
fi
