data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}


resource "aws_instance" "ec2" {
    count                    = length(var.instance)
    ami                      = data.aws_ami.ami.image_id
    instance_type            = "t3.medium"
    vpc_security_group_ids   = ["sg-05a0128acebb0e8b2"]
    tags = {
      Name             = var.instance[count.index]
    }

  
}


variable "instance" {
  default = ["cart", "catalogue", "shipping"]
  
}
output "ami_id" {
    value = data.aws_ami.ami.image_id
}

output "public_ip" {
  value = aws_instance.ec2.*.public_ip
  
}



