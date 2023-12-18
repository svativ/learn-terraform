#plainvariable

variable "fruit_name" {
   default="apple"
}

output "fruit_name" {
    value=var.fruit_name
}
/*list variables*/
variable "fruits" {
   default = [
     "apple"
      "banana"
