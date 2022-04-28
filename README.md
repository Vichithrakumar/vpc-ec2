# vpc-ec2

This is a combination of terraform with bash and can be useful when you wish to create a VPC and 4 subnets with two Ec2 instances. This script will create two private subnets and two public subnets.

One of the EC2 instance will be placed in Public Subnet and Other will be placed in private subnet.

You can also avoid using the bash script.

# Note

1. Need to configure aws-cli in your terminal before running the script.
2. Please create SSH key for the server using AWS console and remember its name

You can manually edit the Values in tfvars and ec2.tf files to make changes.


# How to run

**git clone https://git.spiralbean.com/vichitrakumar/vpc-ec2.git ; cd vpc-ec2 ; chmod +x run.sh ; bash run.sh**

# Destroy

Please run **terrafrom destroy** command if you wish to destroy the instances 
