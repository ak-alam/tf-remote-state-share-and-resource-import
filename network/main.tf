module "vpc" {
  source = "../modules/vpc"
  vpc = {
    vpc_cidr       = var.vpc["vpc_cidr"] #vpc vars
    public_subnet  = var.vpc["public_subnet"]
    private_subnet = var.vpc["private_subnet"]
  }
  environment = var.environment
  prefix      = var.prefix
}
