# Python and Bash Scripts To Retrieve AWS Resources

**Author**: Emmanuel C Mbagwu
**Email**: lilstex4good@gmail.com
**Date**: 01 November, 2023

This repository contains two scripts, one written in Python and the other in Bash, designed to retrieve AWS resources. Both scripts provide a convenient way to access information about AWS resources such as S3 buckets, EC2 instances, Lambda functions, and IAM users. You can choose the script that best suits your preferences and environment for interacting with AWS services. The Python script leverages the Boto3 library for AWS interaction, while the Bash script utilizes the AWS Command Line Interface (CLI). Whether you are more comfortable with Python or Bash, these scripts offer flexibility and ease of access to your AWS resource data.

### In Python

This Python script is designed to interact with AWS services using the Boto3 library. It performs the following tasks:

1. List existing S3 buckets and their owners Id.
2. List existing EC2 instances.
3. List existing Lambda functions with their runtime and state.
4. List existing IAM users with their usernames and user IDs.

## Requirements

Before running this script, ensure that you have the following prerequisites in place:

1. Python: You must have Python installed on your system. This script is compatible with Python 3.

2. Boto3 Library: You need to install the Boto3 library. You can install it using pip:

   ```bash
   pip install boto3
   ```

3. AWS Credentials: Make sure you have configured AWS credentials either through environment variables or AWS configuration files.

## Script Functions

### List S3 Buckets and Owners

The script uses Boto3 to interact with AWS S3. It retrieves the list of existing S3 buckets and their owners. The S3 client is created, and the `list_buckets` method is called. The script then outputs the bucket names and their respective owners' IDs.

### List EC2 Instances

The script uses Boto3 to interact with AWS EC2. It lists existing EC2 instances using the `describe_instances` method and prints the instance IDs if they exist.

### List Lambda Functions

This section of the script interacts with AWS Lambda using Boto3. It lists existing Lambda functions using the `list_functions` method and outputs the function names, runtimes, and states if they exist.

### List IAM Users

The script interacts with AWS Identity and Access Management (IAM) using Boto3. It lists existing IAM users and prints their usernames and user IDs if they exist.

## Steps to Run

1. Ensure you have met the requirements mentioned above.

2. Save the script to a `.py` file, for example, `aws_resource_report.py`.

3. Open your terminal or command prompt and navigate to the directory where the script is saved.

4. Run the script using the following command:

   ```bash
   python aws_resource_report.py
   ```

5. The script will connect to AWS services and provide the requested information.

Make sure you have the necessary AWS permissions for the AWS services you want to interact with. If you encounter any issues, double-check your AWS credentials and ensure that Boto3 is properly installed.

Enjoy using the script to retrieve information about your AWS resources!

### In Bash

This Bash script, authored by Emmanuel Mbagwu, is used to report AWS resource usage for S3 buckets, EC2 instances, Lambda functions, and IAM users. It provides a convenient way to list these AWS resources through the AWS CLI.

## Requirements

Before running this script, ensure that you have the following prerequisites in place:

- **AWS CLI**: You need to have the AWS Command Line Interface (CLI) installed on your system and configured with appropriate AWS credentials. Ensure that the AWS CLI is correctly set up with access to the AWS resources you intend to list.

## Script Overview

The script offers a streamlined approach to listing AWS resources across different categories. Here's an overview of what it does:

### List S3 Buckets

The script utilizes the `aws s3 ls` command to list S3 buckets. It will report the names of the S3 buckets in use.

### List EC2 Instances

EC2 instance information is gathered using the `aws ec2 describe-instances` command. If EC2 instances exist, the script will display their instance IDs. If no instances are found, it will indicate so.

### List Lambda Functions

To list Lambda functions, the script uses the `aws lambda list-functions` command. It reports the names of Lambda functions, their runtimes, and states, if they exist.

### List IAM Users

The script relies on the `aws iam list-users` command to retrieve information about IAM users. It lists the usernames of IAM users and their associated user IDs.

## Usage

1. Make sure you have met the requirements mentioned above.

2. Save the script to a file with a `.sh` extension, for example, `aws_resource_report.sh`.

3. Open your terminal or command prompt and navigate to the directory where the script is saved.

4. Run the script using the following command:

   ```bash
   ./aws_resource_report.sh
   ```

5. The script will execute the AWS CLI commands to list the specified AWS resources and provide the information you requested.

Ensure that your AWS CLI is properly configured with the necessary permissions, and that you have set the appropriate AWS region for your resources. If you encounter any issues, verify your AWS CLI setup and credentials.

Enjoy using the script to conveniently retrieve information about your AWS resources!