variable "instance" {
  default = {
    cart = {
      name = "cart"
      type = "t2.medium"
    }   
    user = {
      name = "user"
      type = "t2.small"
    }
  }
  
}