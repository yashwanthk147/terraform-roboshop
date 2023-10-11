variable "d1" {
  default = 5
  
}

resource "nulll_resource" "name" {
  count = var.d1

}