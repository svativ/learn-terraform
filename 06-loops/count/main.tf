variable "component" {
  default = [ "frontend", "mongodb" ]
}


resource "aws_instance" "instance" {

  count = length(var.componet)

  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-041edd0364521caf3"]

  tags = {
    Name = " "
 }
}