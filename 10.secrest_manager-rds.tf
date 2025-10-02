resource "random_integer" "random_user_id" {
  max = 999999
  min = 10000
}

module "alpha_secret_rds" {
  source          = "app.terraform.io/Khans-shop/secretsmanager/secretsmanager"
  version         = "1.2.3"
  rds_secret_name = "mysql-rds-password-${random_integer.random_user_id.result}"
}
