

variable  "ami-id"{
    type=string
    default="ami-0b4f379183e5706b9"
}
variable "instance_type"{
    type=string
    default="t2.micro"
}

variable "tags"{
      type = map
  default = {
    Name = "Hello Terraform"
    Project = "Roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true"
  }
}
 

variable  "sg-name"{
    type=string
    default="allow_tls"
}

variable "description"{
    type=string
    default="Allow TLS inbound traffic"
}

variable "cidr_blocks"{
    type=list
    default=["0.0.0.0/0"]
}