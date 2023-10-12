resource "aws_instance" "test" {
    ami = "ami-03265a0778a880afb"
    instance_type = var.instance_type == "" ? t3.micro : var.instance_type

  
}

variable "instance_type" {}