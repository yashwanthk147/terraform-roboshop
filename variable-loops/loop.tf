variable "d1" {
  default = 5
  
}

resource "null_resource" "name" {
  count = var.d1

}


variable "d2" {
  default = [apple, banana]
  
}

resource "null_resource" "d2" {
  count = length(var.d2)

}
