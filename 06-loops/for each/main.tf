variable "components" {
  default = {
    catalogue = { name = "catalogue-sg" }
    mongodb   = { name =  "mongodb-sg" }
  }
}



resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name       lookup(var.components,each.value["name"],null)

}

