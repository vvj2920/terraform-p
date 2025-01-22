resource "aws_instance" "web" {

    count = length(var.instance_name)
  ami           = var.ami_id
  instance_type = var.instance_name[count.index]=="mongodb" ||var.instance_name[count.index]=="mysql"  ?  "t3.micro" : "t2.micro"

  tags = {
    Name =var.instance_name[count.index]
  }
}


resource "aws_route53_record" "www" {
count=11
  zone_id = "Z0224424345WXXPXEBZUX"
  name    =  "${var.instance_name[count.index]}.devops.online"
  type    = "A"
  ttl     = 1
  records = [var.instance_name[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}