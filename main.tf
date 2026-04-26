module "vpc" {
  source       = "./modules/vpc"
  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
}

module "security" {
  source             = "./modules/security"
  project_name       = var.project_name
  vpc_id             = module.vpc.vpc_id
  my_ip              = var.my_ip
  public_subnet_cidr = module.vpc.public_subnet_cidrs
}

module "iam" {
  source       = "./modules/iam"
  project_name = var.project_name
}

module "ec2" {
  source               = "./modules/ec2"
  project_name         = var.project_name
  key_name             = var.key_name
  public_subnet_id     = module.vpc.public_subnet_ids[0]
  private_subnet_id    = module.vpc.private_subnet_ids[0]
  bastion_sg_id        = module.security.bastion_sg_id
  app_sg_id            = module.security.app_sg_id
  iam_instance_profile = module.iam.ec2_instance_profile_name
}

module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
}
