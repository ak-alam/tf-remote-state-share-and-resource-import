terraform {
  backend "s3" {
    bucket               = "tf-state-share-explore"
    key                  = "terraform.tfstate"
    region               = "us-west-1"
    workspace_key_prefix = "network"
    dynamodb_table       = "tf_state_lock"
  }
}