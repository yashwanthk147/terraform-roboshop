#iterate on modules rather than individual resources
module "ec2" {
    for_each = var.instance
    source = "./ec2"
    component = each.value["name"]
    instance_type = each.value["type"]
    sg_id         = module.sg.sg_id
  
}

module "sg" {
    source = "./sg"
  
}

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
