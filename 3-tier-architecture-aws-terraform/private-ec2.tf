resource "aws_instance" "private" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private.id
  availability_zone      = "${data.aws_region.current.name}c"
  vpc_security_group_ids = [aws_security_group.ssh.id, ]
  key_name               = local.ssh_key

}