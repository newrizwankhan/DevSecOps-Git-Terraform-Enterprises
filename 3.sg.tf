module "alpha_sg_1" {
  source        = "app.terraform.io/Khans-shop/sg/sg"
  version       = "1.2.3"
  vpc_name      = module.alpha_vpc_1.vpc_name
  vpc_id        = module.alpha_vpc_1.vpc_id
  environment   = module.alpha_vpc_1.environment
  service_ports = ["80", "443", "22", "3389", "3306"]
}

#To Access Output Value Of Another Modules
# module.<module-name>.<output-name>
# eg: module.alpha_vpc_1.vpc_id
