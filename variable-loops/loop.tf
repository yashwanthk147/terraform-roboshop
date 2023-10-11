variable "d1" {
  default = 5
  
}

resource "null_resource" "name" {
  count = var.d1

}
