#!/bin/bash

#######################
#
# Author:- Sai
# Date:- 31st -Jul
#
#
# version:- v1
#
#
# This script will report the AWS resource usage#
#
#######################

#AWS s3
#AWS EC2
#AWS lambda
#AWS IAM users

set -x

echo "print list of s3 buckets"

aws s3 ls

echo "print list of ec2 instaces"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "print list of lamda function"

aws lambda list-functions

echo "print list of IAM users"

aws iam list-users
