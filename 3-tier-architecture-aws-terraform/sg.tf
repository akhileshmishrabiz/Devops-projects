resource "aws_security_group" "ssh" {

  description = "allow ssh to ec2"
  name        = "${local.prefix}-ssh_access"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = [var.vpc_cidr]
    #We can limit the ip here
  }

}


resource "aws_security_group" "rds" {

  description = "allow access to rds"
  name        = "${local.prefix}-rds_access"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol    = "tcp"
    from_port   = 5432
    to_port     = 5432
    cidr_blocks = [var.vpc_cidr]
    #We can limit the ip here
  }

}