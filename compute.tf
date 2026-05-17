module "control_plane_1" {
  source = "./modules/ec2"

  name          = "control-plane-1"
  project_name  = var.project_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  sg_id         = module.security_group.controlplane_sg_id
  key_name      = var.key_name
}

module "control_plane_2" {
  source = "./modules/ec2"

  name          = "control-plane-2"
  project_name  = var.project_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  sg_id         = module.security_group.controlplane_sg_id
  key_name      = var.key_name
}

module "control_plane_3" {
  source = "./modules/ec2"

  name          = "control-plane-3"
  project_name  = var.project_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  sg_id         = module.security_group.controlplane_sg_id
  key_name      = var.key_name
}

module "worker_1" {
  source = "./modules/ec2"

  name          = "worker-1"
  project_name  = var.project_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  sg_id         = module.security_group.worker_sg_id
  key_name      = var.key_name
}

module "worker_2" {
  source = "./modules/ec2"

  name          = "worker-2"
  project_name  = var.project_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  sg_id         = module.security_group.worker_sg_id
  key_name      = var.key_name
}

module "nginx_1" {
  source = "./modules/ec2"

  name          = "nginx-1"
  project_name  = var.project_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  sg_id         = module.security_group.nginx_sg_id
  key_name      = var.key_name
}

module "nginx_2" {
  source = "./modules/ec2"

  name          = "nginx-2"
  project_name  = var.project_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  sg_id         = module.security_group.nginx_sg_id
  key_name      = var.key_name
}