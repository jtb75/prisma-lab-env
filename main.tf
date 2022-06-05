provider "aws" {
  region = var.ec2_region
}

module "iam" {
  ec2_region = var.ec2_region
  source = "./modules/iam"
}

module "s3" {
  ec2_region = var.ec2_region
  source = "./modules/s3"
}

/*
module "ec2" {
  key_pair = var.key_pair
  ec2_region = var.ec2_region
  admin_ip = var.admin_ip
  ssm_policy = module.iam.ssm_policy
  flow_role_arn = module.iam.flow_role_arn
  source = "./modules/ec2"
}
*/