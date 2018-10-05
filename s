#!/bin/sh
# A utility for accessing AWS EC2 instance using ssh

username="ec2-user"
host=$1

if [ -z "$host" ]
then
	echo "Usage: $0 HostName"
	echo "================================"
	cat /etc/hosts | awk '/BeginHost/,/EndHost/'
	echo "================================"
else
	ssh $username@$host
fi

