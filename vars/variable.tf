variable "sample" {
    default = "Helloworld"
  
}

output "var" {
    value = var.sample
}

variable "sample2" {}

output "var1" {
    value = var.sample2  
}

variable "cli" {
  
}

output "var_cli" {
  value = var.cli
}

#terraform apply -var cli="HELLO SHELL SCRIPT"
#terraform apply -var-file cli="HELLO SHELL SCRIPT"
#terraform apply -var-file=dev.tfvars
#export TF_VAR_cli="HELLO FROM SHELL ENV AVRIABLE"


#precedence  -var is higher precedence and -var-file is next precedence
#first it checks for command line variabales and then it goes for .auto.tfvars, terraform.tfvars, shell env, and then it ask input


#strings should always cotted in "", where as numbers and booleans are not

//variable "sample5" {
//  default = "Hello"
//}
//
//variable "sample6" {
//  default = [
//    "Hello",
//    1000,
//    true,
//    "World"
//  ]
//}
//
//variable "sample7" {
//  default = {
//    string  = "Hello",
//    number  = 100,
//    boolean = true
//  }
//}
//

#when do we use quotes in output blocks
#wen you have combi of strings and variables in a mesage that we are trying to print
//output "types" {
//  value = "Variable sample5 - ${var.sample5}, First value in list - ${var.sample6[0]}, Boolean Value of Map = ${var.sample7["boolean"]}"
//}