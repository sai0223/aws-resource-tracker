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

aws s3 ls

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

aws lambda list-functions

aws iam list-users
