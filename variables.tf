variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "PCC_ACCESS_KEY_ID" {
  type = string
}

variable "PCC_SECRET_ACCESS_KEY" {
  type = string
}

variable "PCC_URL" {
  type = string
}

variable "key_pair" {
  description = "Key pair to be used on ec2 instances"
  default = "nv-pan"
  type = string
}

variable "ec2_region" {
  description = "AWS region to launch servers"
  default     = "us-east-1"
  type = string
}

variable "admin_ip" {
  default     = ["97.88.201.47/32"]
  description = "admin IP addresses in CIDR format"
}
