provider "aws" {
  region = var.region
  assume_role {
    role_arn = "arn:aws:iam::975647491380:role/S3AdminAccess"
  }
}

module "s3-webapp" {
  source  = "app.terraform.io/sandro/s3-webapp/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}
