resource "aws_db_instance" "education" {
  identifier             = "mentorship-db"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20
  engine                 = "postgres"
  engine_version         = "14.1"
  username               = local.db_username
  password               = local.db_password
  db_subnet_group_name   = aws_db_subnet_group.education.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  publicly_accessible    = true
  skip_final_snapshot    = true
}

resource "aws_db_subnet_group" "education" {
  name       = "education"
  subnet_ids = [aws_subnet.private.id, aws_subnet.public.id]

  tags = {
    Name = "Education"
  }
}

## to create a db password 
# we use random provider, this will give a random nu,ber of some size
# create a secret in secret manager to store the value