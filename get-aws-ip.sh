#!/bin/bash
aws ec2 describe-instances --instance-id $1 --query "Reservations[*].Instances[*].PublicIpAddress" --output=text
