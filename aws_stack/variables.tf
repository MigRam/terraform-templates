variable "flag" {}

variable "ami" {
  type = map(any)
  default = {
    "us-east-1" = "ami-12345678"
    "us-west-1" = "ami-87654321"
    "us-west-2" = "ami-00ee4df451840fa9d"
  }
}

variable "region" {
  default = "us-west-2"
}

variable "profiles" {
  type = map(any)
  default = {
    "sandbox"  = "aws-sandbox"
    "labsuser" = "aws-labsuser"
  }
}

variable "ports" {
  type    = list(number)
  default = [8201, 8202, 8203, 8204]
}