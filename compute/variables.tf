variable "environment" {
  type    = string
  default = "dev"
}

variable "instance_name" {
  type    = string
  default = "akbar-test"
}
variable "prefix" {
  type    = string
  default = "akbar"
}

variable "ami" {
  type    = string
  default = "ami-00569e54da628d17c"
}
variable "key_name" {
  type    = string
  default = "akbar"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
# variable "security_group_id" {
#   type = list
# }
# variable "subnet_id" {
#     type = string
# }