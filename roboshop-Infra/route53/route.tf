resource "aws_route53_record" "record" {
    zone_id = "Z07897561J3VF42BTNNBR"
    name = "${var.component}-dev-devops.online"
    type = "A"
    ttl = 30
    records =  [var.private_ip] 

}

variable "component" {
  
}

variable "private_ip" {
  
}