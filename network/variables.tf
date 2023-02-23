variable "environment" {
  type = string
}
variable "prefix" {
  type = string
}
variable "vpc" {
  type = object({
    vpc_cidr       = string
    public_subnet  = list(string)
    private_subnet = list(string)
  })
}