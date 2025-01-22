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