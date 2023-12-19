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
/*map variables, plain*/
variable "fruit_stock"{
  default = {
    apple  = 100
    banana = 200
  }
}


/* map variable, map 0f maps*/
variable  "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price = 3
    }
    banana = {
      stock = 400
      price = 1
    }
  }
}

/* Access a list variable, list index start from zero*/
output "fruits_first" {
  value = var.fruits[0]
}

output "fruits_second" {
  value = var.fruits [1]
}

/* Access a map variable*/
output "fruit_stock_apple" {
  value =var.fruit_stock ["apple"]
}

output "fruit_stock_with_price_of_apple"}
  value =var.fruit_stock_with_price ["apple"].stock
}