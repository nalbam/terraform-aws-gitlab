variable "region" {
  default = "ap-northeast-2"
}

variable "city" {
  default = "seoul"
}

variable "stage" {
  default = "dev"
}

variable "name" {
  default = "demo"
}

variable "suffix" {
  default = "gitlab"
}

variable "vpc_id" {
  default = "vpc-075279b4e48b983ff"
}

variable "subnet_id" {
  default = "subnet-08a5b599722126606"
}

variable "gitlab_version" {
  default = "12"
}

variable "allow_ip_address" {
  type = list(string)
  default = [
    "221.148.35.250/32", # echo "$(curl -sL icanhazip.com)/32"
  ]
}

variable "key_name" {
  default = "nalbam-seoul"
}

variable "domain" {
  default = ""
}

variable "base_domain" {
  default = "mzdev.be"
}

locals {
  full_name = "${var.city}-${var.stage}-${var.name}-${var.suffix}"
}