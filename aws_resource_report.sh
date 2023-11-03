#!/bin/bash

##############################
# Author: Emmanuel Mbagwu
# Date: 01 November, 2023
#
# This script reports AWS resource usage for S3 buckets, EC2 instances, Lambda functions, and IAM users.
#
# Required Environment Variables:
# - AWS CLI: You need to have the AWS CLI installed and configured with appropriate credentials.
#
# Usage:
# - Run this script in a shell to list the specified AWS resources.
#
##############################

# Function to list AWS resources with error handling
list_aws_resources() {
    local resource_type="$1"
    local aws_command="$2"

    echo "List of $resource_type in use"

    # Execute the AWS command and handle errors
    output="$($aws_command 2>&1)"
    
    if [[ -z "$output" ]]; then
        echo "No $resource_type found."
    else
        echo "$output"
    fi
}

# List S3 buckets
list_aws_resources "S3 buckets" "aws s3 ls"

# List EC2 instances
ec2_output=$(aws ec2 describe-instances)

if [[ -n "$ec2_output" ]]; then
    ec2_instance_ids=$(echo "$ec2_output" | jq -r '.Reservations[].Instances[].InstanceId')
    
    if [[ -n "$ec2_instance_ids" ]]; then
        echo "List of EC2 instances:"
        echo "$ec2_instance_ids"
    else
        echo "No EC2 instances found."
    fi
fi

# List Lambda functions
list_aws_resources "Lambda functions" "aws lambda list-functions"

# List IAM users
list_aws_resources "IAM users" "aws iam list-users"
