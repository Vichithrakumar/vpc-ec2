#!/bin/bash
echo "Enter the Region (For eg: ap-south-1, us-west-2 etc...) "
read region
echo "Enter the VPC Network (Make sure you include the Range with Subnet mask like 10.1.0.0/16"
read vpc  #reading the VPC network with Mask

echo -e "\e[1;31m===========================================================================\e[0m"
echo -e "\e[1;31mWhile Entering the Subnets, make sure you are adding the Subnet mask\e[0m"
echo -e "\e[1;31m===========================================================================\e[0m"


echo "Enter the Public subnet1:"
read pusub1
echo "Enter the Public subnet2"
read pusub2
echo "Enter the Private subnet1"
read prsub1
echo "Enter the Private subnet2"
read prsub2
echo "Enter the instance type"
read in_type
echo ""
echo "Enter the SSH Key pair name (make sure you have created one)"
read key

#Configuring the tfvars
> terraform.tfvars
echo "main_vpc_cidr =  \"$vpc\" " > terraform.tfvars
echo " public_subnet1 = \"$pusub1\" " >> terraform.tfvars
echo " public_subnet2 = \"$pusub2\" " >> terraform.tfvars
echo " private_subnet1 =  \"$prsub1\" " >> terraform.tfvars
echo " private_subnet2 =  \"$prsub2\" " >> terraform.tfvars
echo "region = \"$region\"" >> terraform.tfvars
echo "zone1 = \"${region}a\"" >> terraform.tfvars
echo "zone2 = \"${region}b\"" >> terraform.tfvars
echo "inst_type = \"$in_type\"" >> terraform.tfvars
echo "key =  \"$key\"" >> terraform.tfvars

#Running terraform operations
echo "Running terraform init"
terraform init
echo "Running terraform Plan"
terraform plan
echo "applying the Configuration......"
terraform apply

#echo "applying terraform"
#terraform apply