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