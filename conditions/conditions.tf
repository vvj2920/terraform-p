resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_name =="mogodb" ? "t3.micro":"t2.micro"

  tags = {
    Name = var.instance_name
  }
}