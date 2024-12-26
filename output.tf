output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.vpc.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the created VPC"
  value       = aws_vpc.vpc.cidr_block
}


output "public_subnet_az1_cidr" {
  description = "CIDR block of the public subnet in AZ1"
  value       = aws_subnet.public_subnet_az1.cidr_block
}


output "public_subnet_az2_cidr" {
  description = "CIDR block of the public subnet in AZ2"
  value       = aws_subnet.public_subnet_az2.cidr_block
}


output "private_app_subnet_az1_cidr" {
  description = "CIDR block of the private app subnet in AZ1"
  value       = aws_subnet.private_app_subnet_az1.cidr_block
}


output "private_app_subnet_az2_cidr" {
  description = "CIDR block of the private app subnet in AZ2"
  value       = aws_subnet.private_app_subnet_az2.cidr_block
}


output "private_data_subnet_az1_cidr" {
  description = "CIDR block of the private data subnet in AZ1"
  value       = aws_subnet.private_data_subnet_az1.cidr_block
}


output "private_data_subnet_az2_cidr" {
  description = "CIDR block of the private data subnet in AZ2"
  value       = aws_subnet.private_data_subnet_az2.cidr_block
}


output "nat_gateway_az1_elastic_ip" {
  description = "Elastic IP of the NAT gateway in AZ1"
  value       = aws_eip.eip1.public_ip
}


output "nat_gateway_az2_elastic_ip" {
  description = "Elastic IP of the NAT gateway in AZ2"
  value       = aws_eip.eip2.public_ip
}