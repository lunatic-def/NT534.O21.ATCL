# AWS Region
variable "region" {
  default = "ap-northeast-1"
}


variable "system" {
  default = "sysdig"
}


variable "env" {
  default = "terraform"
}

# VPCのCIDR
variable "cidr_vpc" {
  default = "10.0.0.0/16"
}


variable "cidr_public" {
  default = [
    "10.0.0.0/24",
    "10.0.1.0/24"
  ]
}


variable "cidr_private" {
  default = [
    "10.0.10.0/24",
    "10.0.11.0/24"
  ]
}


variable "public_ip" {
  default = "false"
}


variable "nat_gateway_create" {
  default = "true"
}

variable "single_nat_gateways" {
  default = "true"
}

variable "access_key" {}

variable "secure_api_token" {}

variable "collector_url" {}

variable "sysdig_secure_url" {}