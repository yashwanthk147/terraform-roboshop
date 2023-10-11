terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}



variable "d1" {
  default = 5
  
}

resource "nulll_resource" "name" {
  count = var.d1

}
