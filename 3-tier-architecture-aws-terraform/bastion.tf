resource "aws_instance" "public" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ssh.id, ]
  key_name               = local.ssh_key
  availability_zone      = "${data.aws_region.current.name}b"

  #   tags = merge(
  #     local.common_tags,
  #     tomap({ "Name" = "${local.prefix}-private-ec2" })
  #   )

  tags = { name = "${data.aws_caller_identity.current.account_id}-bastion" }
}