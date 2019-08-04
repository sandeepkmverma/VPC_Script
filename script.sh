#!/bin/bash

VPC_CIDR="10.1.0.0/26"
VPC_NAME="MyNewVPC"
SUBNET_1_CIDR="10.1.0.0/28"
SUBNET_2_CIDR="10.1.0.16/28"
SUBNET_3_CIDR="10.1.0.32/28"
SUBNET_4_CIDR="10.1.0.48/28"


echo "Creating VPC"

myvpc_id=`aws ec2 create-vpc --cidr-block $VPC_CIDR --output text | awk -F " " ' { print $8 } '`

echo "Creating tags for VPC"

aws ec2 create-tags --resources $myvpc_id --tags Key=Name,Value=$VPC_NAME

echo "Creating Subnets"

subnet_one_id=`aws ec2 create-subnet --vpc-id $myvpc_id --cidr-block $SUBNET_1_CIDR --output text | awk -F " " ' { print $12 } '`
echo "subnet-1 created"
subnet_two_id=`aws ec2 create-subnet --vpc-id $myvpc_id --cidr-block $SUBNET_2_CIDR --output text | awk -F " " ' { print $12 } '`
echo "subnet-2 created"
subnet_three_id=`aws ec2 create-subnet --vpc-id $myvpc_id --cidr-block $SUBNET_3_CIDR --output text | awk -F " " ' { print $12 } '`
echo "subnet-3 created"
subnet_four_id=`aws ec2 create-subnet --vpc-id $myvpc_id --cidr-block $SUBNET_4_CIDR --output text | awk -F " " ' { print $12 } '`
echo "subnet-4 created"



echo "Creating tags for Subnets"

aws ec2 create-tags --resources $subnet_one_id --tags Key=Name,Value=Public_1
aws ec2 create-tags --resources $subnet_two_id --tags Key=Name,Value=Public_2
aws ec2 create-tags --resources $subnet_three_id --tags Key=Name,Value=Private_1
aws ec2 create-tags --resources $subnet_four_id --tags Key=Name,Value=Private_2


echo "Creating Internet Gateway"

my_igw_id=`aws ec2 create-internet-gateway --output text | awk -F " " ' { print $2 } '`

echo "Creating tags for Internet Gateway"

aws ec2 create-tags --resources $my_igw_id --tags Key=Name,Value=MyIGW

echo "Attaching the internet gateway"

aws ec2 attach-internet-gateway --vpc-id $myvpc_id --internet-gateway-id $my_igw_id

echo "Creating Route Table"

my_public_rt_id=`aws ec2 create-route-table --vpc-id $myvpc_id --output text | head -n 1 | awk -F " " ' { print $3 } '`

echo "Creating tags for Route Table"

aws ec2 create-tags --resources $my_public_rt_id --tags Key=Name,Value=My_Public_RT

echo "Creating an Entry in Route Table for Internet Gateway"

aws ec2 create-route --route-table-id $my_public_rt_id --destination-cidr-block 0.0.0.0/0 --gateway-id $my_igw_id

echo "Associating Subnet_1 and Subnet_2 with My_Public_RT"

aws ec2 associate-route-table  --subnet-id $subnet_one_id --route-table-id $my_public_rt_id

aws ec2 associate-route-table  --subnet-id $subnet_two_id --route-table-id $my_public_rt_id















