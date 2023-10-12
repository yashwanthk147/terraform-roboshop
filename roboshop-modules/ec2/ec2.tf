data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}


#when do we use quotes in output blocks
#wen you have combi of strings and variables in a mesage that we are trying to print
//output "types" {
//  value = "Variable sample5 - ${var.sample5}, First value in list - ${var.sample6[0]}, Boolean Value of Map = ${var.sample7["boolean"]}"
//}

resource "aws_instance" "instance" {
    #count                    = length(var.instance)
    #for_each                 =  var.instance
    ami                      = data.aws_ami.ami.image_id
    instance_type            = var.instance_type
    vpc_security_group_ids   = [var.sg_id]
    tags = {
      Name             = var.component
    }

  
}

variable "component" {}

variable "instance_type" {}


variable "sg_id" {}