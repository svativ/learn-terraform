variable "fruits" {
  default = ["apple","banana"]
}

output "fruits" {
  /*value = var.fruits[2]*/
  value = element(var.fruits,2)
}

variable "fruit_with_stock" {
  default = {
    apple = 100
  }
}

output "fruit_stock" {
  value = var.fruit_with_stock["banana"]
}