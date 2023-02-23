locals {
  public_subnet_1 = data.terraform_remote_state.remote.outputs.vpc.public_subnet[0]
  public_subnet_2 = data.terraform_remote_state.remote.outputs.vpc.public_subnet[1]
}
