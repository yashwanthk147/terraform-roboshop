data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}


resource "aws_instance" "ec2" {
    count                    = 5
    ami                      = data.aws_ami.ami.image_id
    instance_type            = var.instance_type[count.index]
    vpc_security_group_ids   = ["sg-05a0128acebb0e8b2"]
    tags = {
      Name             = "cart-${count.index}"
    }

  
}


variable "instance" {
  default = ["cart"]
  
}

variable "instance_type" {
  default = ["t3.medium"]
}


