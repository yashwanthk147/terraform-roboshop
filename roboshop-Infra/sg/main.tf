resource "aws_security_group" "allow_tls" {
  name        = "${var.component}-${var.env}-sg"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name             = "${var.component}-${var.env}-sg"
  }
}

output "sg_id" {
    value = aws_security_group.allow_tls.id
  
}

variable "component" {}

variable "env" {
    default = "dev"
}