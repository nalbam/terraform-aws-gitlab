# bastion

terraform {
  backend "s3" {
    region = "ap-northeast-2"
    bucket = "terraform-nalbam-seoul"
    key    = "gitlab.tfstate"
  }
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.region
}

module "gitlab" {
  # source = "github.com/nalbam/terraform-aws-gitlab"
  source = "../../"

  name = var.name

  vpc_id = var.vpc_id

  subnet_id = var.subnet_id

  public_subnet_ids = var.public_subnet_ids

  gitlab_version = var.gitlab_version

  allow_ip_address = var.allow_ip_address

  key_name = var.key_name

  dns_name = var.dns_name
  dns_root = var.dns_root

  slack_token = var.slack_token
}