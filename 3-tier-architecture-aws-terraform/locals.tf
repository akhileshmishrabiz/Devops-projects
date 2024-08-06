locals {

  private_subnet = var.subnet["private-subnet"]
  public_subnet  = var.subnet["public-subnet"]
  prefix         = "mentorship"
  ssh_key        = "mentorship-sudheer"
  db_password    = "admin123"
  db_username     = "postgres"
}


