#iterate on modules rather than individual resources
module "ec2" {
    for_each = var.instance
    source = "./ec2"
    component = each.value["name"]
    instance_type = each.value["type"]
    sg_id       = module.sg[each.value["name"]].sg_id
  
}

module "sg" {
    for_each = var.instance
    source = "./sg"
    component = each.value["name"]
}


module "route53" {
    for_each = var.instance
    source = "./route53"
    component = each.value["name"]
    private_ip = module.ec2[each.value["name"]].private_ip
  
}

output "ec2" {
    value = module.ec2
  
}