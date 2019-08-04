cd
aws configure
aws s3 ls
aws ec2 describe
touch script.sh
chmod +x script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
aws configure
aws s3 ls
aws configure
aws s3 ls
ls
vim script.sh 
./script.sh 
vim script.sh 
aws ec2 create-vpc --cidr-block 10.1.0.0/26 --output text | awk -F " " ' { print $7 } ' 
aws ec2 create-vpc --cidr-block 10.1.0.0/26 --output text | awk -F " " ' { print $8 } ' 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
vim script.sh 
./script.sh 
vim script.sh 
vim script.sh 
./script.sh 
vim script.sh 
vim script.sh 
aws ec2 create-vpc --cidr-block 10.1.0.0/26 --output text | awk -F " " ' { print $8 }
aws ec2 create-vpc --cidr-block 10.1.0.0/26 --output text | awk -F " " ' { print $8 } '
vim script.sh 
aws ec2 create-subnet --vpc-id vpc-01ee18cc6148742cf --cidr-block 10.1.0.0/28
vim script.sh 
aws ec2 create-subnet --vpc-id vpc-01ee18cc6148742cf --cidr-block 10.1.0.0/28 --output text
aws ec2 create-subnet --vpc-id vpc-01ee18cc6148742cf --cidr-block 10.1.0.0/28 --output text
aws ec2 create-subnet --vpc-id vpc-01ee18cc6148742cf --cidr-block 10.1.0.0/28 --output text | awk -F " " ' { print $12 } '
vim script.sh 
vim script.sh 
./script.sh 
vim script.sh 
vim script.sh 
./script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
aws ec2 create-internet-gateway --output text
aws ec2 create-internet-gateway --output text | awk -F " " ' { print $2 } '
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
./script.sh 
vim script.sh 
aws ec2 create-route-table --vpc-id vpc-0e36a273637c01373 --output text
aws ec2 create-route-table --vpc-id vpc-0e36a273637c01373 --output text | awk -F " " ' { print $3 } '
aws ec2 create-route-table --vpc-id vpc-0e36a273637c01373 --output text | head -n 1 | awk -F " " ' { print $3 } '
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
vim script.sh 
aws ec2 describe-subnets --filters "Name=vpc-id,Values=vpc-0e36a273637c01373" --query 'Subnets[wq*].{ID:SubnetId,CIDR:CidrBlock}'
cd
ls
aws ec2 associate-route-table  --subnet-id subnet-00e997abacd8cbb15 --route-table-id rtb-09427f3706fbf5381
vim script.sh 
vim script.sh 
vim script.sh 
./script.sh 
vim script.sh 
aws ec2 create-route --route-table-id rtb-09427f3706fbf5381 --destination-cidr-block 0.0.0.0/0 --gateway-id igw-096f276043227808b
aws ec2 create-route --route-table-id rtb-09427f3706fbf5381 --destination-cidr-block 0.0.0.0/0 --gateway-id igw-096f276043227808b
aws ec2 create-route --route-table-id rtb-09427f3706fbf5381 --destination-cidr-block 0.0.0.0/0 --gateway-id igw-096f276043227808b
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
vim script.sh 
aws ec2 create-route --route-table-id rtb-09427f3706fbf5381 --destination-cidr-block 0.0.0.0/0 --gateway-id igw-06c3da57b78296a51
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
./script.sh 
vim script.sh 
touch vpc.sh
chmod +x vpc.sh 
vim vpc.sh 
ll
vim vpc.sh 
vim vpc.sh 
ll
