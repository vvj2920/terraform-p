resource "aws_instance" "web" {
  ami           = var.ami-id
  instance_type = var.instance_type
  vpc_security_group_ids=[aws_security_group.allow_tls.id]

  tags = var.tags
}
