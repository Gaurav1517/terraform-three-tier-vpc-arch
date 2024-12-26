########################## *❤️जय श्री राधे कृष्णा❤️*#########################

###########################################################
# Create External Application Load Balancer Security Group
###########################################################

resource "aws_security_group" "external_alb_security_group" {
  name        = var.external_alb_sg
  description = "Allow HTTP inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc.id

  tags = {
    Name = "${var.external_alb_sg}-${var.project_name}-${var.environment}-SG"
  }
}

# Ingress rule for HTTP (port 80) - IPv4
resource "aws_security_group_rule" "external_alb_allow_http_ipv4" {
  security_group_id = aws_security_group.external_alb_security_group.id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}


# Egress rule for all traffic - IPv4
resource "aws_security_group_rule" "external_alb_all_outbound_ipv4" {
  security_group_id = aws_security_group.external_alb_security_group.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

#######################################################
# Create WEB(Public) Tier Security Group
########################################################
resource "aws_security_group" "public_subnet_security_group" {
  name        = var.public_subnet_sg
  description = "Allow External ALB SG inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc.id

  tags = {
    Name = "${var.public_subnet_sg}-${var.project_name}-${var.environment}-SG"
  }
}

# Ingress rule for HTTP (port 80) - IPv4
resource "aws_security_group_rule" "public_subnet_allow_http_ipv4" {
  security_group_id        = aws_security_group.public_subnet_security_group.id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.external_alb_security_group.id
}


# Egress rule for all traffic - IPv4
resource "aws_security_group_rule" "public_subnet_allow_all_outbound_ipv4" {
  security_group_id = aws_security_group.public_subnet_security_group.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

##############################################################
# Create Internal Load Balancer Security Group
##############################################################
resource "aws_security_group" "internal_alb_security_group" {
  name        = var.internal_alb_sg
  description = "Allow public ALB SG inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc.id

  tags = {
    Name = "${var.internal_alb_sg}-${var.project_name}-${var.environment}-SG"
  }
}

# Ingress rule for HTTP (port 80) - IPv4
resource "aws_security_group_rule" "internal_alb_allow_http_ipv4" {
  security_group_id        = aws_security_group.internal_alb_security_group.id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.public_subnet_security_group.id
}


# Egress rule for all traffic - IPv4
resource "aws_security_group_rule" "internal_alb_allow_all_outbound_ipv4" {
  security_group_id = aws_security_group.internal_alb_security_group.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}


##############################################################
# Create APP Tier Security Group
##############################################################
resource "aws_security_group" "app_subnet_security_group" {
  name        = var.app_subnet_sg
  description = "Allow Internal ALB SG inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc.id

  tags = {
    Name = "${var.app_subnet_sg}-${var.project_name}-${var.environment}-SG"
  }
}

# Ingress rule for HTTP (port 80) - IPv4
resource "aws_security_group_rule" "app_subnet_allow_http_ipv4" {
  security_group_id        = aws_security_group.app_subnet_security_group.id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.internal_alb_security_group.id
}


# Egress rule for all traffic - IPv4
resource "aws_security_group_rule" "app_subnet_allow_all_outbound_ipv4" {
  security_group_id = aws_security_group.app_subnet_security_group.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

##############################################################
# Cretae DB Tier Security Group
##############################################################

resource "aws_security_group" "data_subnet_security_group" {
  name        = var.data_subnet_sg
  description = "Allow App subnet SG inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.vpc.id

  tags = {
    Name = "${var.data_subnet_sg}-${var.project_name}-${var.environment}-SG"
  }
}

# Ingress rule for HTTP (port 80) - IPv4
resource "aws_security_group_rule" "data_subnet_allow_http_ipv4" {
  security_group_id        = aws_security_group.data_subnet_security_group.id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.app_subnet_security_group.id
}


# Egress rule for all traffic - IPv4
resource "aws_security_group_rule" "data_subnet_allow_all_outbound_ipv4" {
  security_group_id = aws_security_group.data_subnet_security_group.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
