#!/bin/bash

zip_file="/home/devops/pymysql.zip"

# List of Lambda function names
functions=("ttl_lb_game_summary" "ttl_emailStatus" "ttl_free_entry" "ttl_gps_checks" "ttl_discount_vouchers_history" "ttl_otp" "ttl_otp" "ttl_couponUsage" "ttl_load-testing-ResultsTable-E2R3W2UMFEJA" "ttl_OpsReport" "ttl_logs_table" "ttl_ifsc_list") 

# Loop through each Lambda function and update the code
for function_name in "${functions[@]}"; do
    aws lambda update-function-code --function-name $function_name --zip-file "fileb://${zip_file}" --profile dev
    echo "Uploaded $zip_file to $function_name"
done
