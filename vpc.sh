#!/bin/bash

for i in `cat meta`
do

for j in `cat meta`
do

echo $i | grep VPC_NAME | awk -F "=" ' { print $2 } ' | awk ' { print $1 } '

echo $j | grep VPC_CIDR | awk -F "=" ' { print $2 } ' | awk ' { print $1 } '
done
done

#myvpc_id=`aws ec2 create-vpc --cidr-block $VPC_CIDR --output text | awk -F " " ' { print $8 } '`
#aws ec2 create-tags --resources $myvpc_id --tags Key=Name,Value=$VPC_NAME
