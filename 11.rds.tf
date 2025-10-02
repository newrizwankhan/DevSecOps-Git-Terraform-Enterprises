module "alpha_rds" {
  source                 = "../modules/10.rds"
  db_subnet_group_name   = "devsecopsawsday1subnetgroup"
  private_subnets        = module.alpha_vpc_1.private_subnets_id
  allocated_storage      = "10"
  engine                 = "mysql"
  engine_version         = "8.0"
  identifier             = "myrds1"
  instance_class         = "db.t3.micro"
  db_name                = "devopsawsday1instance"
  vpc_security_group_ids = module.alpha_sg_1.sg_id
  username               = "adminkhan"
  password               = module.alpha_secret_rds.rds_secret
}
