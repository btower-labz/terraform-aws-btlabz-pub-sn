variable "vpc-id" {
  type = "string"
}

variable "cidr" {
  type = "string"
}

variable "az" {
  type = "string"
}

variable "rt-id" {
  type = "string"
}

variable "tags" {
  type    = "map"
  default = {}
}

variable "name" {
  type    = "string"
  default = "public-subnet"
}
