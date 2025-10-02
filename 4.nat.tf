module "alpha_natgw_1" {
  source           = "app.terraform.io/Khans-shop/nat/nat"
  version          = "1.2.3"
  public_subnet_id = module.alpha_vpc_1.public_subnets_id_1
  vpc_name         = module.alpha_vpc_1.vpc_name
  private_rt_id    = module.alpha_vpc_1.private_route_table_id
}
