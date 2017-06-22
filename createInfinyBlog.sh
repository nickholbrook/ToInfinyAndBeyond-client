#!/bin/bash

if (( $# < 2))
	then
		echo "Usage:  createInfinyBlog  <number of server> <server size>
		echo "Type 'aws ec2 run-instances help' to see available Instance types"
		exit 1
	else
		aws ec2 run-instances --image-id ami-d67c6ab2 --security-group-ids sg-db7a06b2 --count $1 --instance-type $2 --placement AvailabilityZone=eu-west-2a --user-data file://bootstrap.txt --key-name nick-keypair
fi

