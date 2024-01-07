

variable "security_groups" {
  default = ["sg-041edd0364521caf3"]
}

variable "zone_id" {
  default = "Z0018290WARH7MQ8A27A"
}

variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.micro"
    }