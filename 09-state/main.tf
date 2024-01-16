terraform {
  backend "s3" {
    bucket = "tf-state-s9"
    key    = "09-state/terraform-state.tf"
    region = "us-east-1"
  }
}



variable "test" {
  default = "Hello"
}

output "test" {
  value = var.test
}