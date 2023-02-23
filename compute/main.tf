
data "aws_security_group" "sg_name" {
  name = "ec2-sg"
}

module "ec2" {
  source            = "../modules/ec2"
  environment       = var.environment
  instance_name     = var.instance_name
  prefix            = var.prefix
  ami               = var.ami
  key_name          = var.key_name
  instance_type     = var.instance_type
  security_group_id = [data.aws_security_group.sg_name.id]
  subnet_id         = local.public_subnet_1
}

#S3 bucket resourse import
resource "aws_s3_bucket" "import-testing" {
  bucket        = "bucket-import-tf"
  force_destroy = true
  tags = {
    "Name" = "${var.environment}-bucket-import-${var.prefix}"
  }
}
