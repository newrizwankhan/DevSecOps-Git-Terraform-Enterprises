module "alpha_iam_1" {
  source              = "app.terraform.io/Khans-shop/iam/iam"
  version             = "1.2.3"
  env                 = module.alpha_vpc_1.environment
  rolename            = "devsecopsbawsday1testrole"
  instanceprofilename = "devsecopsawsday1binstprofile"
  iam_policy_name     = "devsecopsbawsday1-iampolicy"
}
