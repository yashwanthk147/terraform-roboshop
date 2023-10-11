variable "d1" {
  default = 5
  
}

resource "null_resource" "name" {
  count = var.d1

}


variable "d2" {
  default = ["apple", 5, True]
  
}

resource "null_resource" "name" {
  count = length(var.d2)

}
