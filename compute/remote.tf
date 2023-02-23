data "terraform_remote_state" "remote" {
  # backend = "remote"
  backend = "s3"

  config = {
    bucket = "tf-state-share-explore"
    key    = "network/${terraform.workspace}/terraform.tfstate"
    region = "us-west-1"
  }
}
