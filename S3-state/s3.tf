terraform {
    backend "s3" {
        bucket = "roboshop-s3"
        key = "s3-state/terraform.tfstate"
        region = "us-east-1"
      
    }
}

resource "aws_instance" "ec2" {
    ami                      = "ami-03265a0778a880afb"
    instance_type            = "t3.medium"
    vpc_security_group_ids   = ["sg-05a0128acebb0e8b2"]
    tags = {
        Name = "ec2"
    }

  
}