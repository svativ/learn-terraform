variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "security-groups" {
  default = [sg-041edd0364521caf3]
}


variable "instance_type" {
  default = "t3.small"
}
variable "zone_id" {
  default = "Z0018290WARH7MQ8A27A"
}

variable "components" {
  default = {
    frontend  = { name = "frontend-dev" }
    catalogue = { name = "catalogue-dev" }
    mongodb   = { name = "mongodb-dev" }
    user      = { name = "user-dev" }
    redis     = { name = "redis-dev" }
    cart      = { name = "cart-dev" }
    mysql     = { name = "mysql-dev" }
    shipping  = { name = "shipping-dev" }
    payment   = { name = "payment-dev" }
    rabbitmq  = { name = "rabbitmq-dev" }
  }
}

resource "aws_instance" "instance" {
  for_each = var.components
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup (each.value, "name", null)
  }
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  for_each = var.components
  name    = "$lookup(each.value,"name",null)}.sdevops99.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

#output "instances" {
#  value = aws_instance.instance
#}