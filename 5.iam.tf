module "alpha_iam_1" {
  source              = "../modules/4.iam"
  env                 = module.alpha_vpc_1.environment
  rolename            = "devsecopsbawsday1testrole"
  instanceprofilename = "devsecopsawsday1binstprofile"
  iam_policy_name     = "devsecopsbawsday1-iampolicy"
}
