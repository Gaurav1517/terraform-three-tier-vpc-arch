# *❤️जय श्री राधे कृष्णा❤️*
# environment variables
region       = "eu-west-2"
project_name = "VPC-3-Architecture"
environment  = "dev"

# vpc variables
vpc_cidr                     = "10.0.0.0/16"
public_subnet_az1_cidr       = "10.0.0.0/24"
public_subnet_az2_cidr       = "10.0.1.0/24"
private_app_subnet_az1_cidr  = "10.0.2.0/24"
private_app_subnet_az2_cidr  = "10.0.3.0/24"
private_data_subnet_az1_cidr = "10.0.4.0/24"
private_data_subnet_az2_cidr = "10.0.5.0/24"

# Security Group variables
external_alb_sg  = "External_ALB_SG"
public_subnet_sg = "Public_Subnet_SG"
internal_alb_sg  = "Internal_ALB_SG"
app_subnet_sg    = "App_Subnet_SG"
data_subnet_sg   = "Data_Subnet_SG"