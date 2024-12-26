# *❤️जय श्री राधे कृष्णा❤️*

# environment variables
variable "region" {
  description = "region to create resources"
  type        = string
}

variable "project_name" {
  description = "project name"
  type        = string
}

variable "environment" {
  description = "environment"
  type        = string
}

# vpc variables
variable "vpc_cidr" {
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  description = "private subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  description = "private subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  description = "private data subnet az1 cidr block"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  description = "private data subnet az2 cidr block"
  type        = string
}


######################
# Security Group

variable "external_alb_sg" {
  description = "Exteranl Application Load Balancer Security Group"
  type        = string
}

variable "public_subnet_sg" {
  description = "Public subnet Security Group"
  type        = string
}

variable "internal_alb_sg" {
  description = "Internal ALB  Security Group"
  type        = string
}

variable "app_subnet_sg" {
  description = "App Subnet Security Group"
  type        = string
}

variable "data_subnet_sg" {
  description = "Data Subnet Security Group"
  type        = string
}
