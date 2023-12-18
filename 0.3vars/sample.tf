# Plain Variable
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

# List Variable
variable "fruits" {
  default = [
    "apple",
    "banana"
  ]
  // default = [ "apple", "banana" ] // Single line syntax
}