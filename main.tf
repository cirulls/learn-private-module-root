provider "aws" {
  region                  = var.region
  skip_metadata_api_check = true
}

module "s3-webapp" {
  source  = "app.terraform.io/sandro/s3-webapp/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}
