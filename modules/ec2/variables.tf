variable "environment" {
  type = string
}

variable "instance_name" {
  type = string
}
variable "prefix" {
  type = string
}

variable "ami" {
  type = string
}
variable "key_name" {
  type = string
}

variable "instance_type" {
  type = string
}
variable "security_group_id" {
  type = list(any)
}
variable "subnet_id" {
  type = string
}