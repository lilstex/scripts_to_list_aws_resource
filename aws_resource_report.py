import boto3

# Retrieve the list of existing buckets
s3 = boto3.client('s3')
response = s3.list_buckets()

# Output the bucket names
print('List of existing buckets with their owners:')
owner = response['Owner']['ID']
for bucket in response['Buckets']:
    print(f'  Name: {bucket["Name"]} | OwnerId: {owner}')


# List EC2 instances
ec2 = boto3.client('ec2')
response = ec2.describe_instances()

# Output the instance Id if they exist
print('Existing Instances:')
if 'Reservations' in response and response['Reservations']:
    for instance in response['Reservations'][0]['Instances']:
        print(f'  {instance["InstanceId"]}')
else:
    print('  No instances found')


# List Lambda functions
lambda_func = boto3.client('lambda')
response = lambda_func.list_functions()

# List IAM users
iam = boto3.client('iam')
response = iam.list_users()

# Output the name, runtime and state of the function if they exist
print('List of functions with their states and runtime:')
if 'Functions' in response and response['Functions']:
    for function in response['Functions']:
        print(f'  Name: {function["FunctionName"]} | Runtime: {function["Runtime"]} | State: {function["State"]}')
else:
    print('  Functions not found')


# Output the username and userId if user exist
print('List of IAM Users:')
if 'Users' in response and response['Users']:
    for user in response['Users']:
        print(f'  Username: {user["UserName"]} | UserId: {user["UserId"]}')
else:
    print('  Users not found')
