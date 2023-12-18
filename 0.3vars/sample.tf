variable "fruit-name" {
  default = "apple"
}

output "fruit-name" {
  value = var.fruit-name
}


/*list variables*/
variable "fruits" {
  default = [
    "apple"
    "banana"
  ]
  /* default = [ "apple", "banana" ] single line syntax*/
}
