#!/bin/sh
# A utility for accessing AWS EC2 instance using ssh

username="ec2-user"
demo_key="linjungz-demo.pem"
host=$1
account=$2

if [ -z "$host" ]
then
	echo "Usage: $0 HostName"
	echo "================================"
	cat /etc/hosts 
	echo "================================"
	exit 0
fi

if [ -z "$account" ]
then
	echo "Connecting to EC2 Instance using keypair for Lab Account by default\n"
	ssh $username@$host
elif [ $account == "demo" ]
then
	echo "Connecting to EC2 Instance using keypair for Demo Account\n"
	ssh -i "~/.ssh/$demo_key" $username@$host
else
	echo "Unknown Account: $account\n"
	exit 1
fi

